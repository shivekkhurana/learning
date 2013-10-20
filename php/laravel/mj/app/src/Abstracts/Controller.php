<?php namespace Abstracts;

use View;
use Input;

class Controller extends \Controller {

	protected $perPage = 10;

	public function getPerPage()
	{
		return Input::get('_per_page', $this->perPage);
	}

	protected function setupLayout()
	{
		if($this->layout)
		{
			$this->layout = View::make($this->layout);
		}
	}

}