<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User; 
use App\Test;

class TestController extends Controller
{
    public function index()
    {
        $tests = Test::latest()->get();
        $members = User::orderBy('score', 'desc')->get();
        return view('top', compact('members', 'tests'));
    }
}
