<?php

use App\Http\Controllers\Admin\CatagoryController;
use App\Http\Controllers\test;
use App\Http\Controllers\UserController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('get-catagories', [CatagoryController::class, 'Get_Catagories']);
Route::post('get-catagory-by-id', [CatagoryController::class, 'Get_CatagoryById']);
Route::get('get-number-users',[UserController::class,'count_user']);





Route::post('test',[test::class,'test']);

