<?php namespace Service\Playlist;

use Illuminate\Session\Store as SessionStore;

class Manager {

	const SESSION_KEY = 'playlist';

	protected $items;
	protected $sessionStore;

	public function __construct(SessionStore $sessionStore)
	{
		$this->sessionStore = $sessionStore;
	}

	protected function persist()
	{
		$this->sessionStore->put(static::SESSION_KEY, $this->itemsToArray());
	}

	public function setItems(array $items)
	{
		$this->items = $items;
		return $this;
	}

	public function getItems()
	{
		return $this->items;
	}

	public function itemsCount()
	{
		return count($this->items);
	}

	public function getItemAt($index)
	{
		return isset($this->items[$index]) ? $this->items[$index] : null;
	}

	public function first()
	{
		return $this->getItemAt(0);
	}

	public function last()
	{
		return $this->getItemAt($this->itemsCount() - 1);
	}

	public function removeItemAt($index)
	{
		if(isset($this->items[$index]))
		{
			unset($this->items[$index]);
			$this->items = array_values($this->items);
			$this->persist();
		}

		return $this;
	}

	public function addItem($type, $model)
	{
		if(! in_array($type, ['song', 'video']))
		{
			throw new DomainException(static::class . '::' . __FUNCTION__ . ' Invalid type : "'.$type.'"');
		}
		
		$this->items [] = new Item($type, $model);
		$this->persist();
		
		return $this;
	}

	public function itemsToArray()
	{
		$data = [];

		foreach($this->items as $item)
		{
			$data[] = $item->toArray();
		}

		return $data;
	}

}