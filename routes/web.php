<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\frontController;
use App\Http\Controllers\adminController;
use App\Http\Controllers\crudController;
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



Route::get('/', [frontController::class, 'index']);
Route::get('article/{slug}', [frontController::class, 'article']);
Route::get('category/{slug}', [frontController::class, 'category']);
Route::get('post', [frontController::class, 'post']);
Route::get('page/{slug}', [frontController::class, 'page']);

//admin
Route::get('admin', [adminController::class, 'index']);

//category
Route::get('viewcategory', [adminController::class, 'viewcategory']);
Route::POST('addcategory', [crudController::class, 'insertData']);
Route::get('editcategory/{id}', [adminController::class, 'editCategory']);
Route::POST('updatecategory/{id}', [crudController::class, 'updateData']);
Route::POST('multipledelete', [adminController::class, 'multipleDelete']);

//settings
Route::get('settings', [adminController::class, 'settings']);
Route::POST('addsettings', [crudController::class, 'insertData']);
Route::POST('updatesettings/{id}', [crudController::class, 'updateData']);

//post
Route::get('add-post', [adminController::class, 'addPost']);
Route::POST('addpost', [crudController::class, 'insertData']);

//all posts
Route::get('all-posts', [adminController::class, 'allPost']);
Route::get('editpost/{id}', [adminController::class, 'editPost']);
Route::POST('updatepost/{id}', [crudController::class, 'updateData']);
Route::get('search-content', [frontController::class, 'searchContent']);


//Pages
Route::get('add-pages', [adminController::class, 'addPage']);

Route::POST('addpage', [crudController::class, 'insertData']);
Route::get('all-pages', [adminController::class, 'allPages']);
Route::get('editpage/{id}', [adminController::class, 'editPage']);
Route::POST('updatepage/{id}', [crudController::class, 'updateData']);
