<?php namespace Web\Dashboard\Controllers\Events;

use Web\Dashboard\Controllers\Base as BaseController;
use Input, Request, Response, View;
use Core\Event\Model as Event;
use Core\Artist\Model as Artist;
use Core\Media\Song;
use Core\Media\Video;
use Core\Media\Photo;

class Profile extends BaseController {

	protected $layout = 'dashboard.layouts.page.wideview';

	protected function view($event, $slug)
	{
		return View::make('dashboard.profiles.event.'.$slug, ['event' => $event]);
	}

	///////////////////////actions start here///////////////////////////
	
	public function index($slug)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		if(Request::wantsJson())
		{
			return Response::model($event);
		}
		else
		{
			$this->layout->body = $this->view($event, 'home');
		}
	}

	public function info($slug)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		if(Request::wantsJson())
		{
			return Response::model($event);
		}
		else
		{
			$this->layout->body = $this->view($event, 'info');
		}
	}

	public function artists($slug)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Artist::repo()->newEventProfileFilterer(Input::get());
		$q = Artist::repo()->forEventProfile($event)->applyFilters($filterer);
		$artistsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($eventsPaginator);
		}
		else
		{
			$this->layout->body = $this->view($event, 'artists')->with([
				'artistsPaginator' => $eventsPaginator
			]);
		}	
	}

	public function songs($slug)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Song::repo()->newEventProfileFilterer(Input::get());
		$q = Song::repo()->forEventProfile($event)->applyFilters($filterer);
		$songsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($songsPaginator);
		}
		else
		{
			$this->layout->body = $this->view($event, 'songs')->with([
				'songsPaginator' => $songsPaginator
			]);
		}
	}

	public function videos($slug)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Video::repo()->newEventProfileFilterer(Input::get());
		$q = Video::repo()->forEventProfile($event)->applyFilters($filterer);
		$videosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($videosPaginator);
		}
		else
		{
			$this->layout->body = $this->view($event, 'videos')->with([
				'videosPaginator' => $videosPaginator
			]);
		}
	}

	public function albums($eventSlug, $albumSlug = null)
	{
		if(! $event = Event::repo()->forDashboardProfile()->find('slug', $eventSlug))
		{
			return Response::notFound();
		}

		// We tackle different possibilities for albums here
		// this code might change, and albums would get a whole new controller
		// later if they grow in compexity
		switch ($albumSlug) {
			case null  : return $this->eventAlbums($event); // albums page of the artist
			case 'all' : return $this->allPhotosForEvent($event); // the "all photos" album
			default    : return $this->albumPhotos($event, $albumSlug); // artist's album's pages
		}
	}

	protected function eventAlbums($event)
	{
		$filterer = Photo\Album::repo()->newEventProfileFilterer(Input::get());
		$q = Photo\Album::repo()->forEventProfile($event)->applyFilters($filterer);
		$albumsPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($albumsPaginator);
		}
		else
		{
			return $this->layout->body = $this->view($event, 'albums')->with([
				'albumsPaginator' => $albumsPaginator,
			]);
		}
	}

	protected function allPhotosForArtist($event)
	{
		$filterer = Photo::repo()->newEventProfileFilterer(Input::get());
		$q = Photo::repo()->forEventProfile($event)->applyFilters($filterer);
		$photosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($photosPaginator);
		}
		else
		{
			$this->layout->body = $this->view($event, 'album-all-photos')->with([
				'photosPaginator' => $photosPaginator
			]);
		}
	}

	protected function albumPhotos($event, $slug)
	{
		if(! $album = Photo\Album::repo()->forArtistProfile($event)->find('slug', $slug))
		{
			return Response::notFound();
		}

		$filterer = Photo::repo()->newEventProfileAlbumPageFilterer(Input::get());
		$q = Photo::repo()->forEventProfileAlbum($album)->applyFilters($filterer);
		$photosPaginator = $q->paginate($this->getPerPage());

		if(Request::wantsJson())
		{
			return Response::paginator($photosPaginator, [
				'event' => $event
			]);
		}
		else
		{
			$this->layout->body = $this->view($event, 'album-photos')->with([
				'photosPaginator' => $photosPaginator,
				'album' => $album
			]);
		}
	}
	
	///////////////////////actions end here/////////////////////////////

}