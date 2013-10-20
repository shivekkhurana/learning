<?php namespace Web\Dashboard\Controllers\Artists;

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\Media\Song;
use Core\Media\Video;
use Core\Media\Photo;

class Profile extends BaseController {

	protected $layout = 'dashboard.layouts.page.wideview';

	protected function view($artist, $slug)
	{
		if($artist->isSolo)
			return View::make('dashboard.profiles.artist.'.$slug, ['artist' => $artist]);
		else
			return View::make('dashboard.profiles.band.'.$slug, ['artist' => $artist]);
	}

	///////////////////////actions start here///////////////////////////

	public function index($slug)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		if(Request::wantsJson())
		{
			return Response::model($artist);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'home');
		}
	}

	public function info($slug)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		if(Request::wantsJson())
		{
			return Response::model($artist);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'info');
		}
	}

	public function songs($slug)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Song::repo()->newArtistProfileFilterer(Input::get());
		$q = Song::repo()->forArtistProfile($artist)->applyFilters($filterer);
		$songsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($songsPaginator);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'songs')->with([
				'songsPaginator' => $songsPaginator
			]);
		}
	}

	public function events($slug)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Event::repo()->newArtistProfileFilterer(Input::get());
		$q = Event::repo()->forArtistProfile($artist)->applyFilters($filterer);
		$eventsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($eventsPaginator);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'events')->with([
				'eventsPaginator' => $eventsPaginator
			]);
		}	
	}

	public function videos($slug)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Video::repo()->newArtistProfileFilterer(Input::get());
		$q = Video::repo()->forArtistProfile($artist)->applyFilters($filterer);
		$videosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($videosPaginator);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'videos')->with([
				'eventsPaginator' => $videosPaginator
			]);
		}
	}

	public function albums($artistSlug, $albumSlug = null)
	{
		if(! $artist = Artist::repo()->forDashboardProfile()->find('slug', $artistSlug))
		{
			return Response::notFound();
		}

		// We tackle different possibilities for albums here
		// this code might change, and albums would get a whole new controller
		// later if they grow in compexity
		switch ($albumSlug) {
			case null  : return $this->artistAlbums($artist); // albums page of the artist
			case 'all' : return $this->allPhotosForArtist($artist); // the "all photos" album
			default    : return $this->albumPhotos($artist, $albumSlug); // artist's album's pages
		}
	}

	protected function artistAlbums($artist)
	{
		$filterer = Photo\Album::repo()->newArtistProfileFilterer(Input::get());
		$q = Photo\Album::repo()->forArtistProfile($artist)->applyFilters($filterer);
		$albumsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($albumsPaginator);	
		}
		else
		{
			return $this->body = $this->view($artist, 'album')->with([
				'albumsPaginator' => $albumsPaginator
			]);
		}
	}

	protected function allPhotosForArtist($artist)
	{
		$filterer = Photo::repo()->newArtistProfileFilterer(Input::get());
		$q = Photo::repo()->forArtistProfile($artist)->applyFilters($filterer);
		$photosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($photosPaginator);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'album-all-photos')->with([
				'photosPaginator' => $photosPaginator
			]);
		}
	}

	protected function albumPhotos($artist, $slug)
	{
		if(! $album = Photo\Album::repo()->forArtistProfile($artist)->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Photo::repo()->newArtistProfileAlbumPageFilterer(Input::get());
		$q = Photo::repo()->forArtistProfileAlbum($album)->applyFilters($filterer);
		$photosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($photosPaginator);
		}
		else
		{
			$this->layout->body = $this->view($artist, 'album-photos')->with([
				'photosPaginator' => $photosPaginator,
				'album' => $album
			]);
		}
	}

	////////////////////////actions end here///////////////////////////

}