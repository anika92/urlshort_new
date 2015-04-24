<?php

use Illuminate\Database\Migrations\Migration;

class CreateUsers extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create ('users',function($newtable)
		{
			
		$newtable->increments('id');
		$newtable->string('email')->unique();
		$newtable->string('username',100);
		$newtable->string('password',15);
		$newtable->string('remember_token',100);
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
		Schema::drop('users');
	}

}