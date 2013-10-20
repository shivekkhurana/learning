<?php namespace Core\Media\Song;

use Abstracts;
use Core\Traits;
use Core\Company\Model as Company;
use Core\Artist\Model as Artist;
use Core\Classification\Genre;
use Core\Event\Model as Event;

class Album extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_song_albums';

	/**
	 * Traits
	 */
	use Traits\MediaItem;

	/**
	 * Setup
	 */
	
	/**
	 * Relations
	 */
	public function songs()
	{
		return $this->belongsToMany(
			Song::class, 'core_song_album_song', 'song_album_id', 'song_id'
		);
	}

	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_song_album_company', 'song_album_id', 'company_id'
		);
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_song_album_artist', 'song_album_id', 'artist_id'
		);
	}

	public function genres()
	{
		return $this->belongsToMany(
			Genre::class, 'core_song_album_genres', 'song_album_id', 'genre_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_song_album_event', 'song_album_id', 'event_id'
		);
	}

}