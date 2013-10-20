<?php namespace Core\Traits;

use Core\IndustryRegister\Entry as IndustryRegisterEntry;

trait MediaItem {

	const awsBucket = 'http://s3.amazonaws.com/musejam-files/';

	public function ownerRegisterEntry()
	{
		return $this->belongsTo(IndustryRegisterEntry::class, 'owner_id');
	}

	public function owner()
	{
		return $this->ownerRegisterEntry->industryPlayer;
	}

}