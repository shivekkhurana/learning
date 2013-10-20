<?php namespace Core\Media;

use Abstracts;
use Core\Traits;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\Classification\Genre;
use Repository;

class Video extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_videos';

	public function newRepository()
	{
		return new Repository\Media\Video($this);
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
		return $this->belongsTo(Video\Type::class, 'type_id');
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_artist_video', 'video_id', 'artist_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_video', 'video_id', 'event_id'
		);
	}

	public function genres()
	{
		return $this->belongsToMany(
			Genre::class, 'core_video_genre', 'video_id', 'genre_id'
		);
	}

	public function favoriters()
	{
		return $this->belongsToMany(
			User::class, 'core_user_favorite_videos', 'video_id', 'user_id'
		);
	}

}