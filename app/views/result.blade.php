@extends('master')

@section('content')
<h1>Here is the shortened URL</h1>
{{HTML::link($shortened,"http://localhost:8000/url/$shortened")}}

@stop
