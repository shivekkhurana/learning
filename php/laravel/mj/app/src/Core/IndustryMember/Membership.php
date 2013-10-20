<?php namespace Core\IndustryMember;

use Abstracts;
use Core\Traits;
use Model as IndustryMember;
use Core\IndustryRegister\Entry as IndustryRegisterEntry;

class Membership extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_industry_memberships';

	/**
	 * Relations
	 */
	public function industryMember()
	{
		return $this->belongsTo(IndustryMember::class, 'industry_member_id');
	}

	public function industryRegisterEntry()
	{
		return $this->belongsTo(IndustryRegisterEntry::class, 'industry_register_entry_id');
	}

	public function tags()
	{
		return $this->belongsToMany(
			Membership\Tag::class, 'core_industry_membership_membership_tag', 'industry_membership_id', 'membership_tag_id'
		);
	}

	public function tagConnections()
	{
		return $this->hasMany(Membership\Tag\Connection::class, 'industry_membership_id');
	}

	/**
	 * Getters, Setters and related methods
	 */
	public function getMembershipTagsAttribute()
	{
		return $this->tagConnections->map(function ($c) { return $c->membershipTag; });
	}

}