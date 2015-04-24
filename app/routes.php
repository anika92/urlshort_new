<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return View::make('hello');
});
Route::get('/register', function()
{
	return View::make('register');
});
//Route::post('/register', function()
//{
	//$user = new User;
	//$user->email = Input::get('email');
	//$user->username = Input::get('username');
		//$user->password = Hash::make(Input::get('password'));
		//$user->save();
		//$theEmail=Input::get('email');
		//return View::make('thanks')->with ('theEmail',$theEmail);
//});
/*Route::get('/login', function()
{
	return View::make('Login');
});*/
Route::get('url', function()
{
	return View::make('url');
});

Route::post('url', function()
{
	
$url = Input::get('url');

$v=User::validate(array('url' => $url));
	
    if ( $v!==true ) {
    	return Redirect::to('url');
	}
	/*
	$theEmail=Input::get('url');
		return View::make('thanks')-> with('shortened',$record->shortened);
	 
	 $url=Input::get('url');
	
	 $record= User::where('url',  $url)->first();
	if($record)
	{
		return View::make('thanks')->with('shortened',$record->shortened);
		
	} 
	else {
		return "not found" ;
	}
	
 function get_unique_short_url(){
		
		$shortened = base_convert(rand(10000,99999),10,36);
		if(User::where('shortened', $shortened)->first()){
			
	get_unique_short_url(); 
		}
	return $shortened;
	
	}
  */
  
$shortened= User::get_unique_short_url();

 
	$row=User::create(array(
'url' =>	 $url ,
	'shortened'  => $shortened
	 ));
	if ( $row ) {
		return View::make('result')->with('shortened', $row->shortened);
	}
// TODO FOR ME. What to do if the row was not created?
	
});

Route::any('{all}', function($shortened)

{
	 
    $row = User::where('shortened',$shortened)->first();
// if not found, redirect to home page
if ($row) 
return Redirect::to($row->url);
else
// otherwise, fetch the url, and redirect
return Redirect::to('url');
});
/*Route::post('/login',function(){
	$creden = Input::only('username','password');
if(Auth::attempt($creden)){
	return Redirect::intended('login');
}
return Redirect::to('login');
});
Route::get('/logout', function()

{
	Auth::logout();
	return View::make('logout');
});
Route::get('/spotlight', array(
'before' =>'auth',
function()
{
	return View::make('spotlight');
})) ;
 * /
 */