<?php namespace Core\Venue;

use Abstracts;
use Core\Traits;
use Model as Venue;

class Tag extends Abstracts\Model {

	/**
	 * Setup and Metadata
	 */
	protected $table = 'core_venue_tags';

	/**
	 * Traits
	 */
	use Traits\TagableItem;

	/**
	 * Relations
	 */
	public function venues()
	{
		return $this->belongsToMany(
			Venue::class, 'core_venue_venue_tag', 'venue_tag_id', 'venue_id'
		);
	}

}