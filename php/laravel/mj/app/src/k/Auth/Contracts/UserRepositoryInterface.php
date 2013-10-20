<?php namespace k\Auth\Contracts;

interface UserRepositoryInterface {

	public function findByAuthIdentifier($identifier);

}