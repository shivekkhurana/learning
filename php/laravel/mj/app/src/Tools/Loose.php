<?php namespace Tools;

use Closure;
use BadMethodCallException;

class Loose {

	protected $attributes;

	public function __construct($attributes)
	{
		$this->attributes = $attributes;
	}

	public function get($attr)
	{
		return isset($this->attributes[$attr]) ? $this->attributes[$attr] : null;
	}

	public function set($attr, $val)
	{
		$this->attributes[$attr] = $val;
		return $this;
	}

	public function __get($attr)
	{
		return $this->get($attr);
	}

	public function __set($attr, $val)
	{
		return $this->set($attr, $val);
	}

	public function __call($method, $args)
	{
		if($this->get($method) instanceof Closure)
		{
			return call_user_func_array($this->get($method), array_merge([$this], $args));
		}

		throw new BadMethodCallException(get_class($this).'::'.$method);
	}

}