<?php namespace Web\Dashboard\Controllers\Me\Favorites;

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Media\Song;

class Songs extends BaseController {

	protected $layout = 'dashboard.layouts.page.wideview';

	public function index()
	{
		$filterer = Song::repo()->newFavoritesFilterer(Input::get());

		$q = Song::repo()->forFavoriteListing()->forFavoriter(Auth::user())->applyFilters($filterer);
		$paginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($paginator);
		}
		else
		{
			$this->layout->view = View::make('dashboard.me.favorites', [
				'paginator' => $paginator
			]);
		}
	}	

}