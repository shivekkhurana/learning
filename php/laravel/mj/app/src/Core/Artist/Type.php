<?php namespace Core\Artist;

use Abstracts;
use Core\Traits;
use Core\Artist\Model as Artist;

class Type extends Abstracts\Model {
	
	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_artist_types';

	/**
	 * Traits
	 */
	use Traits\Sluggable;

	/**
	 * Relations
	 */
	public function artists()
	{
		return $this->hasMany(Artist::class, 'type_id');
	}

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		$this->slugify();
		return parent::save($options);
	}
}