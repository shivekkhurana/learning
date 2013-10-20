<?php namespace Web\Dashboard\Controllers\Artists

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Artist\Model as Artist;

class Listing extends BaseController {

	protected $layout = 'dashboard.layouts.page.narrow';

	public $perPage = 10;

	public function index()
	{
		$filterer = Artist::repo()->newDashboardFilterer(Input::get());
		
		$q = Artist::repo()->forDashboardListing()->applyFilters($filterer);
		$paginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($paginator);
		}
		else
		{
			$this->layout->body = View::make('dashboard.listings.artists', [
				'paginator' => $paginator
			]);
		}
	}

}