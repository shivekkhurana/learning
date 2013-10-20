<?php namespace Core\Event;

use Abstracts;
use Model as Event;

class Type extends Abstracts\Model {

	/**
	 * Settings Metadata
	 */
	protected $table = 'core_event_types';

	/**
	 * Relations
	 */
	public function events()
	{
		return $this->hasMany(Event::class, 'type_id');
	}

}