<?php namespace k\Auth;

use Illuminate\Http\Request;
use k\Auth\Strategy\Standard as StandardStrategy;
use k\Auth\Strategy\OAuth as OAuthStrategy;
use k\Auth\IdentityStore\Item;
use k\Auth\Contracts\UserInterface as User;
use Guzzle\Http\Client;

class Manager {

	protected $standardAuthenticator;
	protected $oAuthAuthenticator;
	
	protected $config;
	protected $userRepository;
	protected $identityStore;
	protected $scope;
	protected $httpClient;

	public function __construct(Config $config, $userRepository, IdentityStore $identityStore, Scope $scope, Client $httpClient)
	{
		$this->config = $config;
		$this->userRepository = $userRepository;
		$this->identityStore = $identityStore;
		$this->scope = $scope;
		$this->httpClient = $httpClient;
	}

	//////////////////////////

	protected function hasOAuthCredentials(Request $req)
	{
		return $req->has($this->config->getOAuthProviderField())
		   and $req->has($this->config->getOAuthTokenField());
	}

	protected function hasUserCredentialsAndPassword(Request $req)
	{
		return $req->has($this->config->getUserCredentialsField())
		   and $req->has($this->conig->getUserPasswordField());
	}

	public function authenticate(Request $req)
	{
		if($this->hasOAuthCredentials($req))
		{
			$result = $this->getOAuthStrategy()->authenticate($req);
		}
		elseif($this->hasUserCredentialsAndPassword($req))
		{
			$result = $this->getStandardStrategy()->authenticate($req);
		}
		else
		{
			$result = false;
		}

		if($result and $user = $this->scope->getUser() and $user instanceof User)
		{
			$this->loginUser($user, $req);
			return true;
		}
		else
		{
			return false;
		}
	}

	public function loginUser(User $user, Request $req)
	{
		$key = $this->identityStore->generateRandomKey();
		$this->identityStore->put($key, new Item($user->getAuthIdentifier()));
		$this->scope->setApiKey($key);
		$req->hasSessionStore() and $req->getSessionStore()->put($this->apiKeySessionField(), $key);
	}

	/////////////////////////////////
	
	protected function hasApiKeyInHeader(Request $req)
	{
		return $req->headers->has($this->config->getApiKeyHeaderField());
	}

	protected function hasApiKeyInSession(Request $req)
	{
		return $req->hasSessionStore()
		   and $req->getSessionStore()->has($this->config->getApiKeySessionField())
		;
	}
	
	public function check(Request $req)
	{
		if($this->hasApiKeyInHeader($req))
		{
			$apiKey = $req->headers->get($this->config->getApiKeyHeaderField());
			$result = $this->checkApiKey($apiKey);
		}
		elseif($this->hasApiKeyInSession($req))
		{
			$apiKey = $req->getSessionStore()->get($this->config->getApiKeySessionField());
			$result = $this->checkApiKey($apiKey);
		}
		else
		{
			$result = false;
		}

		return $result;
	}

	protected function checkApiKey($key)
	{
		if($this->scope->getUser() and $this->scope->getUser() instanceof User)
		{
			return true;
		}

		$identifierItem = $this->identityStore->get($key);
		$identifier = $identifierItem->getIdentity();

		if($user = $this->userRepository->findByAuthIdentifier($identifier) and $user instanceof User)
		{
			$this->setupScope($key, $user, $identifierItem);
			return true;
		}
		else
		{
			return false;
		}
	}

	protected function setupScope($key, User $user, Item $identityItem)
	{
		if(! static::$keyUsageMarked)
		{
			$identityItem->incrementUsageCount();

			if($identityItem->getUsageCount() > static::keyUsageLimit)
			{
				$refreshedKey = $this->identityStore->refresh($key);
				$this->scope->setRefreshedApiKey($refreshedKey)
				$this->scope->setKey(null);
				$this->scope->setUser($user);
			}
			else
			{
				$this->scope->setKey($key);
				$this->scope->setUser($user);
			}

			static::markKeyUsage();
		}
	}

	////////////////////////////
	
	public function register(Request $req)
	{
		if($this->hasOAuthCredentials($req))
		{
			$result = $this->getOAuthStrategy()->register($req);
		}
		elseif($this->hasUserCredentialsAndPassword($req))
		{
			$result = $this->getStandardStrategy()->register($req);
		}
		else
		{
			$result = false;
		}

		if($result and $user = $this->scope->getUser() and $user instanceof User)
		{
			$this->loginUser($user, $req);
			return true;
		}
		else
		{
			return false;
		}
	}


	/////////////////////////////

	protected function getOAuthStrategy()
	{
		if($this->oAuthAuthenticator) return $this->oAuthAuthenticator;

		return $this->oAuthAuthenticator = new OAuthAuthenticator(
												$this->config, $this->userRepository,
												$this->httpClient, $this->scope
											);
	}

	protected function getStandardStrategy()
	{
		if($this->standardAuthenticator) return $this->standardAuthenticator;

		return $this->standardAuthenticator = new StandardAuthenticator(
												$this->config, $this->userRepository,
												$this->scope
											);
	}

}