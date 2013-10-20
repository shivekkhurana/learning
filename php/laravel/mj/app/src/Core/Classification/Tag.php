<?php namespace Core\Classification;

use Abstracts;
use Core\Traits;
use Str;
use BadMethodCallException;

class Tag extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_tags';

	/**
	 * Traits
	 */
	use Traits\Sluggable;

	/**
	 * Relations
	 */
	public function types()
	{
		return $this->belongsToMany(
			Tag\Type::class, 'core_tag_tag_type', 'tag_id', 'tag_type_id'
		);
	}

	protected function contentMap($type)
	{
		return $this->belongsToMany(
			Traits\TagableItem::modelForTagableType($type),
			$this->contentPivotTable($type),
			'tag_id', $this->contentPivotOtherKey($type)
		)->withPivot('weight');
	}

	protected function contentPivotTable($type)
	{
		return 'core_tag_' . Str::singular($type);
	}

	protected function contentPivotOtherKey($type)
	{
		return Str::singular($type) . '_id';
	}

	public function contentRelationsNames()
	{
		return array_map(
			function ($t) { return camel_case($t); },
			Traits\TagableItem::tagableTypes()
		);
	}

	protected function tagMap($tagable)
	{
		if(! $tagable instanceof Tagable)
			$tagable = Tagable::map()->find($tagable);

		if(! $tagable) throw new BadMethodCallException(static::class.'::'.__FUNCTION__ . ' : ' . $tagable);

		return $this->belongsToMany(
			static::class, 'core_tag_map', 'tag_a_id', 'tag_b_id'
		)->where('core_tag_map.tagable_id', '=', $tagable->id);
	}

	public function tagConnectionsNames()
	{
		return array_map(
			function ($t) { return 'connectedFor' . ucfirst($t); },
			$this->contentRelationsNames()
		);
	}

	public function __call($method, $parameters)
	{
		// We check if the call is being made to a content relation
		// or a tag connection. if it is, we handle stuff accordingly
		// or we pass on the stuff to parent's __call. This makes
		// the relations on this class independent of tagableTypes

		if(in_array($method, $this->contentRelationsNames()) or in_array($method, $this->tagConnectionsNames()))
		{
			return $this->$method();
		}

		return parent::__call($method, $parameters);
	}

	public function getAttribute($key)
	{
		// We again do the same thing that we did in __call()
		// and see if the attribute being accessed is again actually
		// a content relation or a tagConnection, and then put in edge cases for this stuff
		// this again allows us to go all full meta on every fucking thing

		$snake = snake_case($key);
		$camel = camel_case($key);

		if(in_array($camel, $this->contentRelationsNames()) or in_array($camel, $this->tagConnectionsNames()))
		{
			if (array_key_exists($snake, $this->relations))
			{
				return $this->relations[$snake];
			}
			else
			{
				$relations = $this->$camel()->getResults();
				return $this->relations[$snake] = $relations;
			}
		}

		return parent::getAttribute($key);
	}

	/**
	 * Setups
	 */
	public function save(array $options = array())
	{
		$this->slugify();
		return parent::save();
	}

	/**
	 * Setters Getters and Related Methods
	 */

}