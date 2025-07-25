<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[HomeController::class, 'index']);
Route::get('/tour',[HomeController::class, 'tour'])->name('Tour');
Route::get('/tour-details',[HomeController::class, 'tourDetails'])->name('Tour.Details');
Route::get('/gallery',[HomeController::class, 'gallery']);
Route::get('/contact-us',[HomeController::class, 'contact']);