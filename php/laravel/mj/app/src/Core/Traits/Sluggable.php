<?php namespace Abstracts\Traits;

trait SluggableModel {

	protected function slugify($separator = '-', Closure $check = null, Closure $step = null)
	{
		Slugger::make($this)->slugify($separator, $check, $step);
	}

}