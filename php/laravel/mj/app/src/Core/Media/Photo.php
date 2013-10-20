<?php namespace Core\Media;

use Abstracts;
use Core\Traits;
use Core\Artist\Model as Artist;
use Core\Venue\Model as Venue;
use Core\Event\Model as Event;
use Core\Company\Model as Company;
use Core\IndustryMember\Model as IndustryMember;

class Photo extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_photos';

	/**
	 * Traits
	 */
	use Traits\MediaItem;

	/**
	 * Relations
	 */
	public function albums()
	{
		return $this->belongsToMany(
			Photo\Album::class, 'core_photo_album_photo', 'photo_id', 'photo_album_id'
		);
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_artist_photo', 'photo_id', 'artist_id'
		);
	}

	public function venues()
	{
		return $this->belongsToMany(
			Venue::class, 'core_venue_photo', 'photo_id', 'venue_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_photo', 'photo_id', 'event_id'
		);
	}

	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_company_photo', 'photo_id', 'company_id'
		);
	}

	/**
	 * Getters Setters and related methods
	 */
	public function getUrl($format = null)
	{
		$resourceUri = $format === null ? $this->resource : $format . '-' . $this->resource;

		return Traits\MediaItem::awsBucket . $resourceUri;
	}

	public function getUrlAttribute()
	{
		return $this->getUrl();
	}

}