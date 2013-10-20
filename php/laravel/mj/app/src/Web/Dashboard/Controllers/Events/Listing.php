<?php namespace Web\Dashboard\Controllers\Events;

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Event\Model as Event;

class Listing extends BaseController {

	protected $layout = 'dashboard.layouts.page.narrow';

	public $perPage = 10;

	public function index()
	{
		$filterer = Event::repo()->newDashboardFilterer(Input::get());
		
		$q = Event::repo()->forDashboardListing()->applyFilters($filterer);
		$paginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($paginator);
		}
		else
		{
			$this->layout->body = View::make('dashboard.listings.events', [
				'paginator' => $paginator
			]);
		}
	}

}