<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Eloquent implements UserInterface, RemindableInterface {
	protected $fillable = array('url', 'shortened');
	

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'urls';


  protected $primaryKey = 'id';


	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $hidden = array('password');

	/**
	 * Get the unique identifier for the user.
	 *
	 * @return mixed
	 */
	public function getAuthIdentifier()
	{
		return $this->getKey();
	}

	/**
	 * Get the password for the user.
	 *
	 * @return string
	 */
	public function getAuthPassword()
	{
		return $this->password;
	}

	/**
	 * Get the e-mail address where password reminders are sent.
	 *
	 * @return string
	 */
	public function getReminderEmail()
	{
		return $this->email;
	}
	public function getRememberToken()
{
    return $this->remember_token;
}

public function setRememberToken($value)
{
    $this->remember_token = $value;
}

public function getRememberTokenName()
{
    return 'remember_token';
}
 public static $rules=array(
    'url' => 'required|url'
    
    );
	public static function validate($input){
		
		$v=Validator::make($input,static::$rules);
		return $v->fails()
		? $v 
		: true;
	}
public static function get_unique_short_url(){
		
		$shortened = base_convert(rand(10000,99999),10,36);
		if(User::where('shortened', $shortened)->first()){
			
	get_unique_short_url(); 
		}
	return $shortened;
	
	}

}