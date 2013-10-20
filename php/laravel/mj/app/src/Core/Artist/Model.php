<?php namespace Core\Artist;

use Abstracts;
use Core\Traits;
use Carbon\Carbon;
use Repository;
use Core\Media\Song;
use Core\Media\Video;
use Core\Media\Photo;
use Core\Media\Photo\Album;
use Core\Company\Model as Company;
use Core\Geo\City;
use Core\Event\Model as Event;
use Core\Classification\Genre;
use Core\Classification\Tag;
use Core\User\Model as User;

class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_artists';

	protected $closestActiveEvent = null;

	public function newRepository()
	{
		return Repository\Artist($this);
	}

	/**
	 * Traits
	 */
	use Traits\Contactable;
	use Traits\Sluggable;
	use Traits\TagableItem;
	use Traits\IndustryPlayer;

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		$this->slugify();
		return Traits\IndustryPlayer::save($options);
	}

	/**
	 * Relations
	 */
	public function type()
	{
		return $this->belongsTo(Type::class, 'type_id');
	}

	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_company_artist', 'artist_id', 'company_id'
		);
	}

	public function currentCity()
	{
		return $this->belongsTo(City::class, 'current_city_id');
	}

	public function homeCity()
	{
		return $this->belongsTo(City::class, 'home_city_id');
	}

	public function songs()
	{
		return $this->belongsToMany(
			Song::class, 'core_artist_song', 'artist_id', 'song_id'
		);
	}

	public function activeSongs()
	{
		return $this->songs()->where(Song::c('active'), '=', 1);
	}

	public function featuredSongs()
	{
		return $this->belongsToMany(
			Song::class, 'core_artist_featured_songs', 'artist_id', 'song_id'
		);
	}

	public function activeFeaturedSongs()
	{
		return $this->featuredSongs()->where(Song::c('active'), '=', 1);
	}

	public function videos()
	{
		return $this->belongsToMany(
			Video::class, 'core_artist_video', 'artist_id', 'video_id'
		);
	}

	public function activeVideos()
	{
		return $this->videos()->where(Video::c('active'), '=', 1);
	}

	public function featuredVideos()
	{
		return $this->belongsToMany(
			Video::class, 'core_artist_featured_videos', 'artist_id', 'video_id'
		);
	}

	public function activeFeaturedVideos()
	{
		return $this->featuredVideos()->where(Video::c('active'), '=', 1):
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_artist', 'artist_id', 'event_id'
		)->orderBy(Event::c('start_time'), 'desc');
	}

	public function activeEvents()
	{
		return $this->events()->where(Event::c('active'), '=', 1);
	}

	public function upcomingEvents()
	{
		return $this->events()->where(Event::c('start_time'), '>', Carbon::today());
	}

	public function pastEvents()
	{
		return $this->events()->where(Event::c('start_time'), '<', Carbon::today());
	}

	public function activeUpcomingEvents()
	{
		return $this->upcomingEvents()->where(Event::c('active'), '=', 1);
	}

	public function activePastEvents()
	{
		return $this->pastEvents()->where(Event::c('active'), '=', 1);
	}

	public function genres()
	{
		return $this->belongsToMany(
			Genre::class, 'core_artist_genre', 'artist_id', 'genre_id'
		);
	}

	public function activeGenres()
	{
		return $this->genres()->where(Genre::c('active'), '=', 1);
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_artist_photo', 'artist_id', 'photo_id'
		);
	}

	public function activePhotos()
	{
		return $this->photos()->where(Photo::c('active'), '=', 1);
	}

	public function profilePhoto()
	{
		$this->belongsTo(Photo::class, 'profile_photo_id');
	}

	public function coverPhoto()
	{
		return $this->belongsTo(Photo::class, 'cover_photo_id');
	}

	public function photoAlbums()
	{
		return $this->belongsToMany(
			Album::class, 'core_artist_photo_album', 'artist_id', 'album_id'
		);
	}

	public function favoriters()
	{
		return $this->belongsToMany(
			User::class, 'core_user_favoriting_artists', 'artist_id', 'user_id'
		);
	}

	/**
	 * Getters and Setters and Related Methods
	 */
	public function getOwnedPhotosAttribute()
	{
		return $this->industryRegisterEntry->photos;
	}

	public function getClosestActiveEventAttribute()
	{
		if($this->closestActiveEvent)
			return $this->closestActiveEvent;

		if($event = $this->activeUpcomingEvents()->first()) 
			return $this->closestActiveEvent = $event;
		
		if($event = $this->activePastEvents()->first())
			return $this->closestActiveEvent = $event;

		return null;
	}

	public function getPublishedAttribute()
	{
		return (int) $this->published === 1;
	}

	/**
	 * Model methods 
	 */

}