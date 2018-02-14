<div class="my-3 p-3 bg-white rounded box-shadow">
    <h6 class="border-bottom border-gray pb-2 mb-0">{{ $test->name }}</h6>
        <form action='save' method='post'>
            {{ csrf_field() }}
            <?php $y = 0; $h = 1; ?>
            @foreach ($questions as $question)
                @if ($question->for == $test->name)
                    <div class='questions'>
                        <div class="media text-muted pt-3">
                            <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                <strong class="d-block text-gray-dark">{{ $h++ }}) {{ $question->question }} <i style='color:red'>(Points : {{ $question->points }})</i></strong>
                            </p>
                        </div>
                        
                        @foreach ($question->answers as $answer)       
                            
                            <div class="form-group ">
                                <input name="{{ $answer->id }}" type="radio" id="radio{{ $y }}">
                                <label for="radio{{ $y }}">{{ $answer->answer }}</label>
                            </div>
                            <?php $y++; ?>
                        @endforeach  
                    </div>
                @endif
            @endforeach
            <div class="form-group nameSpace">
                <label for="usr">Write Your name:</label>
                <input type="text" class="form-control" name='name' id="usr" required>
                 </div>
            @include('layouts.submit')
        </form>
</div>