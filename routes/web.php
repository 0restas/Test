<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'QuestionController@index');
Route::get('/top', 'TestController@index');
Route::get('/{test}', 'QuestionController@show');
Route::post('/save', 'QuestionController@store');





