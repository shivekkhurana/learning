<?php namespace k\Auth\Authenticator\OAuth;

use Illuminate\Support\Fluent;
use k\Auth\Contracts\Facebook\UserRepositoryInterface as UserRepository;
use k\Auth\Contracts\Facebook\UserInterface as User;
use Guzzle\Http\Client;
use k\Auth\Scope;

class Facebook {

	protected $config
	protected $userRepository;
	protected $httpClient;
	protected $scope;

	const graphApiOrigin = 'https://graph.facebook.com';

	public function __construct($config, UserRepository $userRepository, Client $httpClient, Scope $scope)
	{
		$this->config = (array) $config;
		$this->userRepository = $userRepository;
		$this->httpClient = $client;
		$this->scope = $scope;

		$this->prepareClient();
	}

	protected function prepareClient()
	{
		$this->httpClient->setBaseUrl(static::graphApiOrigin);
	}

	protected function clientId()
	{
		return array_get('oauth.facebook.client-id');
	}

	protected function clientSecret()
	{
		return array_get('oauth.facebook.client-secret');
	}

	protected function fetchLongLivedToken($token)
	{
		$req = $this->httpClient->get('/oauth/access_token', [], [
					'query' => [
						'grant_type' => 'fb_exchange_token',
						'client_id' => $this->clientId(),
						'client_secret' => $this->clientSecret(),
						'fb_exchange_token' => $token
					]
				]);

		$data = json_decode($req->send()->getBody(true));

		return isset($data->access_token) ? $data->access_token : null;
	}

	protected function fetchUserData($token)
	{
		$req = $this->httpClient->get('/me', [], [
					'query' => ['access_token' => $token]
				]);

		return json_decode($req->send()->getBody(true));
	}

	public function authenticate($token)
	{
		$fbData = $this->fetchUserData($token);

		if($user = $this->userRepository->findByFacebookData($fbData) and $user instanceof User)
		{
			$longLivedToken = $this->fetchLongLivedToken($token);
			$user->setFacebookToken($longLivedToken);
			
			$this->scope->setUser($user);

			return true;
		}

		return false;
	}

	public function register($token)
	{
		$fbData = $this->fetchUserData($token);

		if($user = $this->userRepository->createFromFacebookData($fbData) and $user instanceof User)
		{
			$longLivedToken = $this->fetchLongLivedToken($token);
			$user->setFacebookToken($longLivedToken);

			$this->scope->setUser($user);

			return true;
		}

		return false;
	}

}