<?php namespace Core\Classification;

use Abstracts;
use Tools\Loose;
use DomainException;
use Traits;

class Tagable extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_tagables';

	protected static $_typeObjectMap = null;

	public static function map()
	{
		if(static::$_typeObjectMap) return static::$_typeObjectMap;

		$tagables = R::of($this)->get();
		$data = [];	

		foreach($tagables as $tagable)
		{
			$data[$tagable->slug] = $tagable;
		}

		return static::$_typeObjectMap = new Loose([
			'data' => $data,
			'find' => function ($self, $key) {
				if($key instanceof Tagable) return $key;
				if(is_numeric($key)) {
					foreach($self->data as $k => $v){
						if((int) $v->id === $key) return $v;
					}
					return null;
				}
				return array_key_exists($key, $self->data) ? $self->data[$key] : null;
			}
		]);
	}

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		if(! $this->exists)
		{
			throw new DomainException('Creating tagables via '.static::class.'::'.__FUNCTION__.' is not allowed');
		}

		if($this->isDirty('name') or $this->isDirty('slug'))
		{
			throw new DomainException('Updating "name" or "slug" of tagables is not allowed');
		}

		return parent::save($options);
	}

	public function delete()
	{
		throw new DomainException('Deleting Tagables is not allowed');
	}

	/**
	 * Relations
	 */
	public function tagTypes()
	{
		return $this->belongsToMany(
			Tag\Type::class, 'core_tagable_tag_type', 'tagable_id', 'tag_type_id'
		);
	}

	public function primaryTagType()
	{
		return $this->belongsTo(Tag\Type::class, 'primary_tag_type_id');
	}

	/**
	 * Model methods
	 */
	public function getAssosciatedModelAttribute()
	{
		return Traits\TagableItem::modelForTagableType($this->slug);
	}

}