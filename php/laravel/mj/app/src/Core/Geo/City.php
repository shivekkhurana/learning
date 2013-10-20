<?php namespace Core\Geo;

use Abstracts;
use Core\Traits;
use Core\IndustryMember\Model as IndustryMember;
use Core\Artist\Model as Artist;
use Core\User\Model as User;
use Core\Venue\Model as Venue;

class City extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_cities';

	/**
	 * Traits
	 */
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
	public function industryMembers()
	{
		return $this->hasMany(IndustryMember::class, 'city_id');
	}

	public function country()
	{
		return $this->belongsTo(Country::class, 'country_id');
	}

	public function residingArtists()
	{
		return $this->hasMany(Artist::class, 'current_city_id');
	}

	public function originatedArtists()
	{
		return $this->hasMany(Artist::class, 'home_city_id');
	}

	public function venues()
	{
		return $this->hasMany(Venue::class, 'city_id');
	}

	public function residingUsers()
	{
		return $this->hasMany(User::class, 'current_city_id');
	}

}