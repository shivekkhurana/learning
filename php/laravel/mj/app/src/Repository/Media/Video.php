<?php namespace Repository\Media;

use Abstracts;
use Core\Traits\TagableItem;
use Core\Classification\Tag;
use k\Reposed\Tools;
use DB;
use Repository\Traits;

class Video extends Abstracts\Repository {

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

            $q->leftJoin($junction, $junction.'.'.$foreign, '=', $this->c('id'))
              ->leftJoin(Tag::table(), $junction.'.'.$otherKey, '=', Tag::c('id'))
        });
    }
    
    /**
     * Dashboard Listing Methods
     */
    protected function withDashboardListingDetails()
    {
        return $this->newScoped(function ($q) {
            $q->with(['artists', 'artists.profilePhoto', 'artists.genres']);
        });
    }

    public function forDashboardListing()
    {
        return $this->joinClassificationTags()->withDashboardListingDetails();
    }

    public function newDashboardFilterer(array $params = array())
    {
        $f = new Tools\Filterer;

        $f->setFilterables([
            'tags' => Tag::c('slug')
        ]);

        $f->setParamProcessor('tags', function ($filterable, $param) {
            return array_values((array) $param);
        });

        $f->setFilter('tags', function ($q, $field, $param) {
            $this->tagConstraintsFilter($q, $field, $param);
        });

        $f->setParams($params);

        return $f;

}