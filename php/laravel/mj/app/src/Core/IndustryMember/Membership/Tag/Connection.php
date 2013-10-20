<?php namespace Core\IndustryMember\Membership\Tag;

use Abstracts;
use Core\IndustryMember\Membership;
use Core\IndustryRegister\Entry as IndustryRegisterEntry;

class Connection extends Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_industry_membership_membership_tag';

	/**
	 * Relations
	 */
	public function industryMembership()
	{
		return $this->belongsTo(Membership::class, 'industry_membership_id');
	}

	public function membershipTag()
	{
		return $this->belongsTo(Membership\Tag::class, 'membership_tag_id');
	}

	public function connectedIndustryRegisterEntry()
	{
		return $this->belongsTo(IndustryRegisterEntry::class, 'industry_player_id');
	}

	/**
	 * Setter, Getters and Related logic
	 */
	public function getConnectedIndustryPlayerAttribute()
	{
		return $this->connectedIndustryRegisterEntry->industryPlayer;
	}

}