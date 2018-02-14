<div class="d-flex align-items-center p-3 my-3 text-white-50 bg-purple rounded box-shadow">
    <img class="mr-3" src="{{ $test->icon }}" alt="" width="48" height="48">
    <div class="lh-100">
        <h6 class="mb-0 text-white lh-100">{{ $test->name }} Test</h6>
        <small>Since 2018-02-13 9PM by Orestas</small>
        <button class='btn btn-primary'>
            <a href='/{{ $test->id }}'>
                Start Test
            </a>
        </button>
    </div>
</div>
