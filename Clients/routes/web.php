<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientsController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\AdministratorsController;
use App\Mail\NewUserNotification;
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

Route::get('/', [ClientsController::class, 'index']);
Route::get('sendReport', [ReportsController::class, 'SendReport']);
Route::get('HandleReport', [ReportsController::class, 'HandleReport']);

Route::get('signIn', [AdministratorsController::class, 'SignIn']);
Route::get('dashboard', [AdministratorsController::class, 'Dashboard']);

Route::post('AddData', [ClientsController::class, 'AddData']);
Route::post('StoreReport', [ReportsController::class, 'StoreReport']);
Route::post('dashboard', [ReportsController::class, 'HandleReport']);
Route::post('Auth', [AdministratorsController::class, 'Auth']);




Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
