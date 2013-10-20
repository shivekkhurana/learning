<?php namespace Core\Company;

use Abstracts;
use Core\Traits;
use Core\Geo\City;
use Core\Media\Photo;
use Core\Artist\Model as Artist;
use Core\Venue\Model as Venue;
use Core\Event\Model as Event;

class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_companies';

	/**
	 * Traits
	 */
	use Traits\Contactable;
	use Traits\IndustryPlayer;
	use Traits\Sluggable;
	use Traits\TagableItem

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
	public function city()
	{
		return $this->belongsTo(City::class, 'city_id');
	}

	public function tags()
	{
		return $this->belongsToMany(
			Tag::class, 'core_company_company_tag', 'company_id' 'tag_id'
		);
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_company_photo', 'company_id', 'photo_id'
		);
	}

	public function profilePhoto()
	{
		return $this->belongsTo(Photo::class, 'profile_photo_id');
	}

	public function artists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_company_artist', 'company_id', 'artist_id'
		);
	}

	public function venues()
	{
		return $this->belongsToMany(
			Venue::class, 'core_company_venue', 'company_id', 'venue_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_organizers', 'company_id', 'event_id'
		);
	}

	/**
	 * Setters Getters etc
	 */
	public function getOwnedPhotosAttribute()
	{
		return $this->industryRegisterEntry->photos;
	}
	
	/**
	 * Model Methods
	 */

}