<?php namespace Core\Classification;

use Abstracts;
use Core\Traits;
use Core\Artist\Model as Artist;
use Core\Media\Song;
use Core\Media\Video;
use Core\User\Model as User;

class Genre extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_genres';

	/**
	 * Traits
	 */
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
	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_artist_genre', 'genre_id', 'artist_id'
		);
	}

	public function songs()
	{
		return $this->belongsToMany(
			Song::class, 'core_artist_genre', 'genre_id', 'song_id'
		);
	}

	public function videos()
	{
		return $this->belongsToMany(
			Video::class, 'core_video_genre', 'genre_id', 'video_id'
		);
	}

	public function favoriters()
	{
		return $this->belongsToMany(
			User::class, 'core_user_favorite_genres', 'genre_id', 'user_id'
		);
	}

}