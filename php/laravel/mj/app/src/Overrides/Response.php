<?php namespace Overrides;

use Illuminate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

class Response extends Illuminate\Support\Facades\Response {

	public static function paginator($paginator, array $data = array())
	{
		return static::json([
			'total' => $paginator->getTotal(),
			'perPage' => $paginator->getPerPage(),
			'currentPage' => $paginator->getCurrentPage(),
			'lastPage' => $paginator->getLastPage(),
			'collection' => Collection::make($paginator->getItems())->toArray(),
			'meta' => $data
		]);
	}

	public static function collection(Collection $collection, array $data = array())
	{
		return static::json([
			'collection' => $collection->toArray(),
			'meta' => $data
		]);
	}

	public static function model(Model $model, array $data = array())
	{
		return static::json([
			'resource' => $m->toArray(),
			'meta' => $data
		]);
	}

	public function action(Model $m, $verb, array $data = array())
	{
		return static::json([
			'msg' => 'Resource '.$verb,
			'id' => $m->id,
			'resource' => $m->toArray(),
			'meta' => $data
		]);
	}

	public static function errors($errors)
	{
		if($errors instanceof Validator) $errors = $errors->getMessageBag();
		if(is_array($errors)) $errors = new MessageBag($errors);

		return static::json([
				'msg' => 'Request Failed',
				'errors' => $errors->toArray()
			], 400);
	}

	public static function msg($msg, $status = 200)
	{
		return static::json([
			'msg' => $msg
		], $status);
	}

	public static function notFound()
	{
		if(Request::wantsJson())
			return Response::json(['msg' => 'Resource Not Found'], 404);
		else
			return Response::error(404);
	}

}