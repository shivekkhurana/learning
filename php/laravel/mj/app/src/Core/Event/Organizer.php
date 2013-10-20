<?php namespace Core\Event;

use Abstracts;
use Model as Event;
use Core\Company\Model as Company;
use Core\IndustryMember\Model as IndustryMember;

class Organizer extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_event_organizers';

	/**
	 * Relations
	 */
	public function event()
	{
		return $this->belongsTo(Event::class, 'event_id');
	}

	public function company()
	{
		return $this->belongsTo(Company::class, 'company_id');
	}

	public function industryMember()
	{
		return $this->belongsTo(IndustryMember::class, 'industry_member_id');
	}

}