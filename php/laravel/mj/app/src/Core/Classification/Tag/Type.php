<?php namespace Core\Classification\Tag;

use Abstracts;
use Core\Classification\Tag;
use Core\Classification\Tagable;
use Core\Traits;

class Type extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_tag_types';

	/**
	 * Relations
	 */
	public function tags()
	{
		return $this->belongsToMany(
			Tag::class, 'core_tag_tag_type', 'tag_type_id', 'tag_id'
		);
	}

	public function tagables()
	{
		return $this->belongsToMany(
			Tagable::class, 'core_tagable_tag_type', 'tag_type_id', 'tagable_id'
		);
	}

}