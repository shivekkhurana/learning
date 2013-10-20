<?php namespace Core\IndustryRegister;

use Abstracts;
use Core\Traits;
use Repository as R;
use DomainException;
use Core\IndustryMember\Model as IndustryMember;
use Core\IndustryMember\Membership;
use Core\Media\Photo;
use Core\Media\Song;

class Entry extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_industry_players_register';

	protected $industryPlayer = null;

	public function getIndustryPlayerAttribute()
	{
		if(isset($this->relations['industry_player']))
		{
			return $this->relations['industry_player'];
		}
		else
		{
			$model = Traits\IndustryPlayer::modelForIndustryPlayerType($this->type);
			return $this->relations['industry_player'] = R::of($model)->find($this->industryPlayerId);
		}
	}

	/**
	 * Model methods
	 */
	public function fillFromIndustryPlayer($industryPlayer)
	{
		return $this->fill([
			'industry_player_id' => $industryPlayer->id,
			'type'               => $industryPlayer->getIndustryPlayerType(),
			'name'               => $industryPlayer->name,
			'active'             => $industryPlayer->active,
			'profile_photo_id'   => $industryPlayer->profilePhotoId
		]);
	}

	/**
	 * Relations
	 */
	public function industryMemberships()
	{
		return $this->hasMany(Membership::class, 'industry_register_entry_id');
	}

	public function photos()
	{
		return $this->hasMany(Photo::class, 'owner_id');
	}

	public function profilePhoto()
	{
		return $this->belongsTo(Photo::class, 'profile_photo_id');
	}

	public function songs()
	{
		return $this->hasMany(Song::class, 'owner_id');
	}

	public function videos()
	{
		return $this->hasMany(Video::class, 'owner_id');
	}

}