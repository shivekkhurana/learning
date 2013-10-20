<?php namespace Core\Traits;

trait Contactable {

	public function setContactEmailsAttribute($emails)
	{
		$this->setAttribute('contact_emails', json_encode((array) $emails));
	}

	public function getContactEmailsAttributes()
	{
		return json_decode($this->getAttribute('contact_emails'));
	}

	public function setContactNumbersAttribute($numbers)
	{
		$this->setAttribute('contact_numbers', json_encode((array) $numbers));
	}

	public function getContactNumbers()
	{
		return json_decode($this->getAttribute('contact_numbers'));
	}

}