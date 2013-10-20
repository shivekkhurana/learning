<?php namespace Core\Event;

use Abstracts;
use Core\Traits;
use Carbon\Carbon;
use Core\Artist\Model as Artist;
use Core\Company\Model as Company;
use Core\Venue\Model as Venue;
use Core\User\Model as User;
use Core\Media\Song;
use Core\Media\Video;
use Core\Media\Photo;
use Repository;

class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_events';

	public function newRepository()
	{
		return new Repository\Event($this);
	}

	/**
	 * Traits
	 */
	use Traits\Contactable;
	use Traits\TagableItem;
	use Traits\Sluggable;

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		$this->slugify();
		return parent::save($options);
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
			Company::class, 'core_company_event', 'event_id', 'company_id'
		);
	}

	public function organizers()
	{
		return $this->hasMany(Organize::class, 'event_id');
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_event_artist', 'event_id', 'artist_id'
		);
	}

	public function activeArtists()
	{
		return $this->artists()->where(Artist::c('active'), '=', 1);
	}

	// jammers ?
	
	public function songs()
	{
		return $this->belongsToMany(
			Song::class, 'core_event_song', 'event_id', 'song_id'
		);
	}

	public function videos()
	{
		return $this->belongsToMany(
			Video::class, 'core_event_video', 'event_id', 'video_id'
		);
	}

	public function venues()
	{
		return $this->belongsToMany(
			Venue::class, 'core_event_venue', 'event_id', 'venue_id'
		);
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_event_photo', 'event_id', 'photo_id'
		);
	}

	public function photoAlbums()
	{
		return $this->belongsToMany(
			Photo\Album::class, 'core_event_photo_album', 'event_id', 'photo_album_id'
		);
	}

	public function profilePhoto()
	{
		return $this->belongsTo(Photo::class, 'profile_photo_id');
	}

	public function coverPhoto()
	{
		return $this->belongsTo(Photo::class, 'cover_photo_id');
	}

	public function favoriters()
	{
		return $this->belongsToMany(
			User::class, 'core_user_favorite_events', 'event_id', 'user_id'
		);
	}

}