<?php namespace k\Auth\Authenticator;

use Illuminate\Http\Request;
use k\Auth\Config;
use k\Auth\Contracts\Standard\UserInterface as User;
use k\Auth\Contracts\Standard\UserRepositoryInterface as UserRepository;
use k\Auth\Scope;

class Standard {

	protected $config;
	protected $userRepository;
	protected $scope;

	public function __construct(Config $config, UserRepository $userRepository, Scope $scope)
	{
		$this->config = $config;
		$this->userRepository = $userRepository;
		$this->scope = $scope;
	}

	protected function getUserCredentials($req)
	{
		return $req->get($this->config->getUserCredentialsField());
	}

	protected function getUserPassword($req)
	{
		return $req->get($this->config->getPasswordField());
	}

	public function authenticate(Request $req)
	{
		$credentials = $this->getUserCredentials($req);
		$password    = $this->getUserPassword($req);

		if($user = $this->userRepository->findByAuthCredentials($credentials) and $user instanceof User)
		{
			if($user->checkPassword($password))
			{
				$this->scope->setUser($user);
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
	}

	public function register(Request $req)
	{
		$credentials = $this->getUserCredentials($req);
		$password    = $this->getUserPassword($req);

		$registrationData = array_merge($credentials, ['password' => $password]);

		if($user = $this->userRepository->createFromRegistrationData($registrationData))
		{
			$this->scope->setUser($user);
			return true;
		}
		else
		{
			return false;
		}
	}

}