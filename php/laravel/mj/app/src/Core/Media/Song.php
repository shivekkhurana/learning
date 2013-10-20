<?php namespace Core\Media;

use Abstracts;
use Core\Traits;
use Core\Song\Type;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\Classification\Genre;
use Core\User\Model as User;
use Repository;

class Song extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_songs';

	public function newRepository()
	{
		return new Repository\Media\Song($this);
	}

	/**
	 * Traits
	 */
	use Traits\MediaItem;
	use Traits\Sluggable;
	use Traits\TagableItem;
	
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
		return $this->belongsTo(Song\Type::class, 'type_id');
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_artist_song', 'artist_id', 'song_id'
		);
	}

	public function genres()
	{
		return $this->belongsToMany(
			Genre::class, 'core_song_genre', 'song_id', 'genre_id'
		);
	}

	public function albums()
	{
		return $this->belongsToMany(
			Song\Album::class, 'core_song_album_song', 'song_id', 'song_album_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_song', 'song_id', 'event_id'
		);
	}

	public function favoriters()
	{
		return $this->belongsToMany(
			User::class, 'core_user_favorite_songs', 'song_id', 'user_id'
		);
	}

}