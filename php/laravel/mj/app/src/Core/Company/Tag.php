<?php namespace Core\Company;

use Abstracts;
use Model as Company;

class Tag extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_company_tags';

	/**
	 * Relations
	 */
	public function companies()
	{
		return $this->belongsToMany(
			Company::class, 'core_company_company_tag', 'tag_id', 'company_id'
		);
	}

}