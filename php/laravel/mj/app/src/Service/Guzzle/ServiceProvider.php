<?php namespace Service\Guzzle;

use Illuminate\Support\ServiceProvider as IlluminateServiceProvider;
use Guzzle\Http\Client;

class ServiceProvider extends IlluminateServiceProvider {

	public function register()
	{
		return $this->app['guzzle'] = $this->app->share(function ($app) {
			return new Client;
		});
	}

}