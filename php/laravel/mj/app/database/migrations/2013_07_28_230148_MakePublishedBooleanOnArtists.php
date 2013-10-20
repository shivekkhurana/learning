<?php

use Illuminate\Database\Migrations\Migration;

class MakePublishedBooleanOnArtists extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('core_artists', function ($t) {
			$t->dropColumn('published');
		});

		Schema::table('core_artists', function ($t) {
			$t->boolean('published');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('core_artists', function ($t) {
			$t->dropColumn('published');
		});

		Schema::table('core_artists', function ($t) {
			$t->boolean('published');
		});
	}

}