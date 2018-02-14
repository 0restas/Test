<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    public function index()
    {
        return $this->belongsTo(Question::class);
    }
}
