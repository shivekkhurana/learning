<?php namespace Core\Traits;

use DomainException;
use Str;
use Repository as R;
use Core\Classification\Tag;
use Core\Classification\Tagable;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\Company\Model as Company;
use Core\Venue\Model as Venue
use Core\Media\Song;
use Core\Media\Video;
use Core\Classification\Genre;
use Core\Venue\Tag as VenueTag;

trait TagableItem {

	/**
	 * Settings and Metadata
	 */
	protected static $_tagableTypeClassMap = [
		'artists'    => Artist::class,
		'events'     => Event::class,
		'venues'     => Venue::class,
		'companies'  => Company::class,
		'songs'      => Song::class,
		'videos'     => Video::class,
		'genres'     => Genre::class,
		'venue_tags' => VenueTag::class
	];

	protected static $_tagable = null;

	protected static $_classificationJunctionMetadata = [];

	protected static $_classifiableTags = null;
	
	public static function tagableTypeClassMap()
	{
		return static::$_tagableTypeClassMap;
	}

	public static function tagableTypes()
	{
		return array_keys(static::tagableTypeClassMap());
	}

	public static function tagableModels()
	{
		return array_values(static::tagableTypeClassMap());
	}

	public static function modelForTagableType($slug)
	{
		if(array_key_exists($slug, static::$_tagableTypeClassMap))
		{
			return static::$_tagableTypeClassMap[$slug];
		}
		elseif(array_key_exists(Str::plural($slug), static::$_tagableTypeClassMap))
		{
			return static::$_tagableTypeClassMap[Str::plural($slug)];
		}
		else
		{
			throw new DomainException('Invalid Tagable Type : ' . $slug)
		}
	}

	public static function tagableTypeForModel($model)
	{
		if(! is_string($model)) $model = get_class($model);

		foreach(static::$_tagableTypeClassMap as $type => $class)
		{
			if($class === $model) return static::$_tagableTypeClassMap[$type];
		}

		throw new DomainException('Invalid Tagable Model : ' . $model);
	}

	public static function tagableType()
	{
		return static::typeForModel(get_called_class());
	}

	public static function singularTagableType()
	{
		return Str::singular(static::tagableType());
	}

	public static function tagable()
	{
		if(static::$_tagable) return static::$_tagable;

		return static::$_tagable = R::of(Tagable::class)->find('slug', static::tagableType());
	}

	public static function classificationJunctionMetadata($key = null)
	{
		if(empty(static::$_classificationJunctionMetadata))
		{
			static::$_classificationJunctionMetadata = [
				'table' => 'core_tag_'.static::singularTagableType(),
				'foreignKey' => static::singularTagableType().'_id'
			];
		}

		if($key === null)
		{
			return static::$_classificationJunctionMetadata;
		}

		if(isset(static::$_classificationJunctionMetadata[$key]))
		{
			return static::$_classificationJunctionMetadata[$key];
		}
		else
		{
			return null;
		}
	}

	public static function classifiableTags()
	{
		if(static::$_classifiableTags === null)
		{
			$tags = [];

			foreach(static::tagable()->tagTypes as $tagType)
			{
				foreach($tagType->tags as $t)
				{
					$tags[$t->id] = $t;
				}
			}

			$tags = array_values($tags);
			static::$_classifiableTags = R::of(Tag::class)->newCollection($tags);
		}

		return static::$_classifiableTags;
	}

	/**
	 * Model tagable methods
	 */	
	public function getTagableTypeClassMap()
	{
		static::tagableTypeClassMap();
	}
	
	public function getModelForTagableType($type)
	{
		return static::modelForType($type);
	}

	public function getTagableType()
	{
		return static::tagableType();
	}

	public function getSingularTagableType()
	{
		return Str::singular($this->getTagableType());
	}

	public function getTagableAttribute()
	{
		return static::tagable();
	}

	public function getClassificationJunctionMetadata($key = null)
	{
		return static::classificationJunctionMetadata($key);
	}

	public function getClassifiableTags()
	{
		return static::classifiableTags();
	}

	public function classificationTags()
	{
		return $this->belongsToMany(
			Tag::class,
			static::classificationJunctionMetadata('table'),
			static::classificationJunctionMetadata('foreignKey'),
			'tag_id'
		)->withPivot('weight');
	}

}