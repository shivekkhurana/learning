<?php namespace Core\Geo;

use Abstracts;

class Country extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_countries';

	/**
	 * Relations
	 */
	public function cities()
	{
		return $this->hasMany(City::class, 'country_id');
	}

}