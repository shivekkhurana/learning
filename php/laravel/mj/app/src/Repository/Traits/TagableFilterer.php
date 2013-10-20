<?php namespace Repository\Traits;

trait TagableFilterer {

	protected function tagConstraintsFilter($q, $field, $param)
	{
		if(count($param) === 0) return;

		$junction = $this->classificationTags()->getTable();
		$foreignKey = $this->classificationTags()->getForeignKey();
		$otherKey = $this->classificationTags()->getOtherKey();

		$q->whereIn(Tag::c('slug'), $param)
		  ->groupBy($junction.'.'.$foreignKey)
		  ->having(DB::raw("count(`{$junction}`.`{$otherKey}`)"), '>=', count($params))
		  ->orderBy(DB::raw("sum(`{$junction}`.`weight`)"), 'desc');
	}

}