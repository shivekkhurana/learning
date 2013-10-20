<?php namespace Core\IndustryMember\Membership;

use Abstracts;
use Core\IndustryMember\Membership;

class Tag extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_industry_membership_tags';

	/**
	 * Relations
	 */
	public function memberships()
	{
		return $this->belongsToMany(
			Membership::class, 'core_industry_membership_membership_tag', 'membership_tag_id', 'industry_membership_id'
		);
	}

	public function membershipConnections()
	{
		return $this->hasMany(Tag\Connection::class, 'membership_tag_id');
	}

}