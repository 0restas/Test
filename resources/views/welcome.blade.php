@extends('layouts/layout')

@section('content')
    <main role="main" class="container">
        @include('layouts.nav')

        @foreach ($tests as $test)
            @include('layouts.title')
        @endforeach
    </main>
@endsection