<?php namespace Service\Playlist;

use Illuminate\Support\Contracts\ArrayableInterface;

class Item {

	protected $type;
	protected $model;

	public function __construct($type, $model)
	{
		$this->type = $type;
		$this->model = $model;
	}

	public function toArray()
	{
		return [
			'type' => $this->type,
			'model' => $this->model->toArray()
		];
	}

}