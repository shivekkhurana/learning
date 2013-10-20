<?php namespace Core\Traits;

use DomainException;
use Repository as R;
use Core\IndustryRegister\Entry;
use Core\Artist\Model as Artist;
use Core\Venue\Model as Venue;
use Core\Company\Model as Company;

trait IndustryPlayer {

	/**
	 * Settings and Metadata
	 */
	protected static $industryPlayerMap = [
		'artist' => Artist::class,
		'venue'   => Venue::class,
		'company' => Company::class
	];
	
	public static function getIndustryPlayerMap()
	{
		return static::$industryPlayerMap;
	}

	public static function modelForIndustryPlayerType($type)
	{
		if(array_key_exists($type, static::$industryPlayerMap))
		{
			return static::$industryPlayerMap[$type];
		}
		else
		{
			throw new DomainException('Invalid IndustryPlayer type: ' . $type);
		}
	}

	public static function industryPlayerTypeForModel($model)
	{
		if(! is_string($model)) $model = get_class($model);

		foreach(static::$industryPlayerMap as $type => $class)
		{
			if($model === $class) return $type;
		}

		throw new DomainException('Invalid IndustryPlayer Model: ' . $model)
	}

	public static function industryPlayerType()
	{
		return static::typeForModel(get_called_class());
	}

	/**
	 * Relations
	 */
	public function industryRegisterEntry()
	{
		return $this->hasOne(Entry::class, 'industry_player_id')
					->where(Entry::c('type'), '=', $this->getIndustryPlayerType());
	}

	/**
	 * Model specific methods
	 */
	public function getModelForIndustryPlayerType($type)
	{
		return static::modelForIndustryPlayerType($type);
	}

	public function getIndustryPlayerType()
	{
		return static::industryPlayerType();
	}

	protected function createIndustryRegisterEntry()
	{
		if($this->industryRegisterEntry !== null)
		{
			throw new DomainException(
				static::class.'::'._FUNCTION__.' - Entry exists for IndustryPlayer : ' .
				$this->id . ', ' . $this->getIndustryPlayerType()
			);
		}

		$this->setRelation('industy_register_entry', new Entry);
		$this->industryRegisterEntry->fillFromIndustryPlayer($this)->save();
	}

	protected function updateIndustryRegisterEntry()
	{
		if($this->industryRegisterEntry === null)
		{
			throw new DomainException(
				static::class.'::'._FUNCTION__.' - Entry doesn\'t exists for IndustryPlayer : ' .
				$this->id . ', ' . $this->getIndustryPlayerType()
			);
		}

		$this->industryRegisterEntry->fillFromIndustryPlayer($this)->save();
	}

	public function save()
	{
		if($this->exists)
		{
			$this->updateIndustryRegisterEntry();
		}
		else
		{
			$this->createIndustryRegisterEntry();
		}
	}

	public function delete()
	{
		$this->industryRegisterEntry and $this->industryRegisterEntry->delete();
		return parent::delete();
	}

}