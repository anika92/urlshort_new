@extends('master')



@section('content')


<h1>My awsome URL</h1>
{{Form::open(array('url'=>'register'))}}
{{Form::label('url','Your Long Url ')}}
{{Form::text('Url')}}
{{Form::submit('Shorten')}}
{{$errors->first('url')}}
@stop
