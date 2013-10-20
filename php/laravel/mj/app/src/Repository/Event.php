<?php namespace Repository;

use Abstracts;
use Core\Traits\TagableItem;
use Core\Classification\Tag;
use k\Reposed\Tools;
use DB;
use Carbon\Carbon;
use Core\Geo\City;
use Core\Venue\Model as Venue;

class Event extends Abstracts\Repository {

	/**
	 * Traits
	 */
	use Traits\TagableFilterer;

	/**
	 * Generic Scopes
	 */
	protected function joinClassificationTags()
	{
		return $this->newJoint(function ($q) {
			$junction = $this->classificationTags()->getTable();
			$foreignKey = $this->classificationTags()->getForeignKey();
			$otherKey = $this->classificationTags()->getOtherKey();

			$q->leftJoin($junction, $junction.'.'.$foreignKey, '=', $this->c('id'))
			  ->leftJoin(Tag::table(), $junction.'.'.$otherKey, '=', Tag::c('id'));
		});
	}

	protected function joinVenues()
	{
		return $this->newJoint(function ($q) {
			$junction = $this->venues()->getTable();
			$foreignKey = $this->venues()->getForeignKey();
			$otherKey = $this->venues()->getOtherKey();

			$q->join($junction, $junction.'.'.$foreignKey, '=', $this->c('id'))
			  ->join(Venue::table(), $junction.'.'.$otherKey, '=', Venue::c('id'));
		});
	}

	protected function joinCities()
	{
		return $this->joinVenues()->newJoint(function ($q) {
			$q->join(City::table(), City::c('id'), '=', Venue::c('city_id'));
		});
	}

	/**
	 * Dashboard Listing Methods
	 */
	public function withDashboardListingDetails()
	{
		return $this->newScoped(function ($q) {
			$q->with(
				'profilePhoto',
				'artists', 'artists.profilePhoto', 'artists.genres',
				'venues', 'venues.city'
			);
		});
	}

	public function forDashboardListing()
	{
		return $this->joinClassificationTags()
					->joinVenues()
					->joinCities()
					->withDashboardListingDetails();
	}

	public function newDashboardFilterer(array $params = array())
	{
		$f = new Tools\Filterer;

		$f->setFilterables([
			'timespan',
			'tags' => Tag::c('slug'),
			'city' => City::c('slug')
		]);

		$f->setParamProcessor('tags', function ($filterable, $param) {
			return array_values((array) $param);
		});

		$f->setParamProcessor('timespan', function ($filterable, $param) {
			if(! in_array($param, ['upcoming', 'past'])) $param = 'upcoming';

			return $param;
		});

		$f->setFilter('tags', function ($q, $field, $param) {
			$this->tagConstraintsFilter($q, $field, $param);
		});

		$f->setFilter('timespan', function ($q, $field, $param) {
			switch ($timespan) {
				'upcoming': $q->where($this->c('start_time'), '>', Carbon::today()); break;
				'past'    : $q->where($this->c('start_time'), '<', Carbon::today()); break;
			}
		});

		$f->setFilter('city', function ($q, $field, $param) {
			$q->where($field, '=', $param);
		});

		$f->setParams($params);

		return $f;
	}

}