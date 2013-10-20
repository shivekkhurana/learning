<?php namespace Core\IndustryMember;

use Abstracts;
use Core\Traits;
use Carbon\Carbon;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\User\Model as User;
use Core\Venue\Model as Venue;
use Core\Media\Video;
use Core\Media\Song;
use Core\Media\Photo;
use Core\Geo\City;
use Core\IndustryRegister\Entry as IndustryRegisterEntry;

class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_industry_members';

	/**
	 * Traits
	 */
	use Traits\Sluggable;

	/**
	 * Setup
	 */
	public function save(array $options = array())
	{
		$this->slugify();
		return parent::save($options);
	}

	/**
	 * Relations
	 */
	public function memberships()
	{
		return $this->hasMany(Membership::class, 'industry_member_id');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'user_id');
	}

	public function city()
	{
		return $this->belongsTo(City::class, 'city_id');
	}

	public function events()
	{
		return $this->belongsTo(
			Event::class, 'core_event_industry_member', 'industry_member_id', 'event_id'
		);
	}

	public function profilePhoto()
	{
		return $this->belongsTo(Photo::class, 'profile_photo_id');
	}

	public function photos()
	{
		return $this->belongsToMany(
			Photo::class, 'core_industry_member_photo', 'profile_id', 'photo_id'
		);
	}

	public function artists()
	{
		return $this->fluentRelation(
			Artist::class, $this->getKeyName(), Membership::c('industry_member_id')
		)->join(IndustryRegisterEntry::table(), function ($j) {
			$j->on(IndustryRegisterEntry::c('type'), '=', 'artists')
			  ->andOn(IndustryRegisterEntry::c('industry_player_id'), '=', Artist::c('id'));
		})
		->join(
			Membership::table(), Membership::c('industry_register_entry_id'), '=', IndustryRegisterEntry::c('id')
		)
		->distinct(Artist::c('id'));
	}

}