<?php namespace Core\Media\Photo;

use Abstracts;
use Core\Traits;
use Core\Media\Photo;
use Core\Artist\Model as Artist;
use Core\Venue\Model as Venue;
use Core\Event\Model as Event;
use Core\Company\Model as Company;
use Core\IndustryMember\Model as IndustryMember;

class Album extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_photo_albums';

	/**
	 * Traits
	 */
	use Traits\Sluggable;
	use Traits\MediaItem;

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
	public function coverPhoto()
	{
		return $this->belongsTo(Photo::class, 'cover_photo_id');
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_photo_album_photo', 'photo_album_id', 'photo_id'
		);
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_artist_photo_album', 'photo_album_id', 'artist_id'
		);
	}

	public function venues()
	{
		return $this->belongsToMany(
			Venue::class, 'core_venue_photo_album', 'photo_album_id', 'venue_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_photo_album', 'photo_album_id', 'event_id'
		);
	}

	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_company_photo_album', 'photo_album_id', 'company_id'
		);
	}

	public function industryMembers()
	{
		return $this->belongsToMany(
			IndustryMember::class, 'core_photo_albums_industry_members', 'photo_album_id', 'industry_member_id'
		);
	}
}