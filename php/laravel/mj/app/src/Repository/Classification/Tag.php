<?php namespace Repository;

use Abstracts;

class Tag extends Abstracts\Repository {

	public function __call($method, $args)
	{
		$contentRelations = $this->model->contentRelationsNames();
		$tagConnections = $this->model->tagConnectionsNames();
		
		if(in_array($method, $contentRelations) or in_array($method, $tagConnections))
		{
			return $this->model->newInstance()->$method();
		}
		else
		{
			return parent::__call($method, $args);
		}
	}

}