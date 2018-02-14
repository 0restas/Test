@extends('layouts/layout')

@section('content')
    <main role="main" class="container">
        @include('layouts.nav')

        @foreach ($tests as $test)
            @include('layouts.title')

            <div class="my-3 p-3 bg-white rounded box-shadow">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Score</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($members as $i=>$member)
                        @if ($test->name == $member->test)
                            <tr>
                                <td>{{ $member->name }}</td>
                                <td>{{ $member->score }}</td>
                                <td>{{ $member->created_at->diffForHumans() }}</td>
                            </tr>
                        @endif
                    @endforeach
                    </tbody>
                </table>
            </div>
        @endforeach
    </main>
@endsection