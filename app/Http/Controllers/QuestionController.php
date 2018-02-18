<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Test;
use App\User;
use App\Question;
use App\Answer;

class QuestionController extends Controller
{
    public function index()
    {
        // get all test from "Test" table
        $tests = Test::latest()->get(); 
        return view('welcome', compact('tests'));
    }

    public function show(Test $test)
    {
        // display questions by random 
        $questions = Question::inRandomOrder()->get();
        return view('store', compact('test', 'questions', 'answers'));
    }

    public function store(Request $request)
    {
        $this->validate(request(), [
            'name' => 'required|min:2'
        ]);
        $inputs = $request->all();
        $score = 0;
        $safe = 0;
        $safe2 = 0;
        foreach ($inputs as $i=>$input) 
        {
            if ($input == "on") {
                    $answer_id = Answer::where('id', $i)->get();
                    foreach ($answer_id as $al) 
                    {
                        $z = $al->question_id;
                        $true = $al->correct;
                    }
                    if ($true == 1)
                    {
                        $correctAnswers = Question::where('id', $z)->get();
                        foreach ($correctAnswers as $cA)
                            if ($cA->id == $z) 
                            {
                                $score = $cA->points + $score;
                                $test = $cA->for;
                                $safe2 = Question::where('for', $test)->count();
                            }
                    }
                $safe++;   
            }
        }
        if (isset($test))
        {
            if ($safe <= $safe2)
            {
                $User = new User; 
                $User->name = $request->input('name');
                $User->score = $score;
                $User->test = $test;     
                $User->save();
                return redirect('/top');
            } else {
                return "You are cheater!";
            }
        } else {
            return back();
        }
    }

}
