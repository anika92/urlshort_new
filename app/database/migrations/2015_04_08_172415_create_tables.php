<?php

use Illuminate\Database\Migrations\Migration;

class CreateTables extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create ('urls',function($newtable)
		{
			
		$newtable->increments('id');
		$newtable->string('url',1);
		$newtable->string('shortened',5);
		$newtable->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('urls');
	}

}