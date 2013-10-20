<?php namespace Core\Venue;

use Abstracts;
use Core\Traits;
use Tools\Slugger;
use Str;
use Core\Company\Model as Company;
use Core\Geo\City;
use Core\Geo\Country;
use Core\Event\Model as Event;
use Core\Media\Photo;


class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_venues';

	/**
	 * Traits
	 */
	use Traits\Sluggable;
	use Traits\IndustryPlayer;
	use Traits\Contactable;
	use Traits\TagableItem;

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		$this->slugify(Slugger::defaultSeparator, Slugger::check(), function ($self, $suffix, $separator) {
			return Str::lower(Str::slug($self->name .' '. $self->city->name .' '. $suffix, $separator));
		});

		return Traits\IndustryPlayer::save($options);
	}

	/**
	 * Relations
	 */
	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_company_venue', 'venue_id', 'company_id'
		);
	}

	public function city()
	{
		return $this->belongsTo(City::class, 'city_id');
	}

	public function tags()
	{
		return $this->belongsToMany(
			Tag::class, 'core_venue_venue_tag', 'venue_id', 'venue_tag_id'
		);
	}

	public function events()
	{
		return $this->belongsToMany(
			Event::class, 'core_event_venue', 'venue_id', 'event_id'
		);
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_venue_photo', 'venue_id', 'photo_id'
		);
	}

	public function profilePhoto()
	{
		return $this->belongsTo(Photo::class, 'profile_photo_id');
	}

}