<?php namespace Service\Playlist;

use Illuminate\Support\ServiceProvider as IlluminateServiceProvider;

class ServiceProvider extends IlluminateServiceProvider {

	public function register()
	{
		$this->app['playlist.manager'] = $this->app->share(function ($app) {
			$manager = new Manager($app['session']);
			$manager->setItems($app['session']->get(Manager::SESSION_KEY, []));

			return $manager;
		});
	}

}