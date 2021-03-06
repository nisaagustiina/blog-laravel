<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TagController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\CategoryController;

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

Route::get('/', [FrontController::class, 'index'])->name('homepage');
Route::get('post/{slug}', [FrontController::class, 'show'])->name('show');
Route::get('category/{category:slug}', [FrontController::class, 'category'])->name('category');
Route::get('tag/{tag:slug}', [FrontController::class, 'tag'])->name('tag');
Route::get('/search',[FrontController::class,'search'])->name('search');

Auth::routes();

Auth::routes(['verify'=>true]);
Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::middleware(['auth','verified'])->group(function (){
    
    Route::middleware(['auth','role:admin'])->group(function(){
        Route::resource('categories', CategoryController::class);
        Route::resource('tags', TagController::class);
        Route::resource('users', UserController::class);
    });

    Route::get('posts/trash', [PostController::class, 'trash'])->name('posts.trash');
    Route::post('posts/trash/{id}/restore', [PostController::class, 'restore'])->name('posts.restore');
    Route::delete('posts/{id}/delete-permanent', [PostController::class, 'deletePermanent'])->name('posts.deletePermanent');
    Route::resource('posts', PostController::class);
});
