<?php namespace Web\Dashboard\Controllers\Songs;

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Media\Song;

class Listing extends BaseController {

	protected $layout = 'dashboard.layouts.page.narrow';

	public $perPage = 10;

	public function index()
	{
		$filterer = Song::repo()->newDashboardFilterer(Input::get());
		
		$q = Song::repo()->forDashboardListing()->applyFilters($filterer);
		$paginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($paginator);
		}
		else
		{
			$this->layout->body = View::make('dashboard.listings.songs', [
				'paginator' => $paginator
			]);
		}
	}

}