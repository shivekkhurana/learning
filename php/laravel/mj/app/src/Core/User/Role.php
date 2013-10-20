<?php namespace Core\Acl;

use Abstracts;
use Core\Traits;
use Model as User;

class Role extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_roles';

	/**
	 * Traits
	 */
	use Traits\Sluggable;

	/**
	 * Relations
	 */
	public function users()
	{
		return $this->belongsToMany(
			User::class, 'core_user_role', 'role_id', 'user_id'
		);
	}

}