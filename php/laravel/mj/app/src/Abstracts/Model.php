<?php namespace Abstracts;

use k\Reposed;
use Repository;

class Model extends Reposed\SnakeModel {

	protected static $unguarded = true;

	public function newCollection(array $models = array())
	{
		return new Collection($models);
	}

	public static function repo()
	{
		return Repository::of(static::class);
	}

	public static function c($field = null)
	{
		if($field === null)
		{
			return function ($field) {
				return (new static)->getTable() . '.' . $field;
			};
		}
		else
		{
			return (new static)->getTable() . '.' . $field;
		}
	}

	public static function table()
	{
		return Repository::of(static::class)->getTable();
	}

}