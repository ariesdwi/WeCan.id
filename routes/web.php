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
Route::get('/', 'FrontController@index')->name('front');
   Route::get('artikel/detail/{artikel}','FrontController@show')->name('artikel.detail');
   Route::get('artikel/detail/{slug}','FrontController@show')->name('artikel.detail');
    Route::get('category/kategori/{kategori}','FrontController@artikel_kategori')->name('artikel.categori');

Route::get('/Admin', function () {
    return view('login');
});

Auth::routes();

Route::get('/home','HomeController@index')->name('home');
Route::get('category','CategoryController@index')->name('category.index');
  Route::get('category/buat','CategoryController@create')->name('category.create');
  Route::post('category/simpan','CategoryController@store')->name('category.store');
  Route::get('category/edit/{category_id}','CategoryController@edit')->name('category.edit');
  Route::put('category/update/{category_id}','CategoryController@update')->name('category.update');
  Route::delete('category/delete/{item_id}','CategoryController@destroy')->name('category.destroy');

Route::get('artikel','ArtikelController@index')->name('artikel.index');
  Route::get('artikel/buat','ArtikelController@create')->name('artikel.create');
  Route::post('artikel/simpan','ArtikelController@store')->name('artikel.store');
  Route::get('artikel/edit/{artikel_id}','ArtikelController@edit')->name('artikel.edit');
  Route::put('artikel/update/{artikel_id}','ArtikelController@update')->name('artikel.update');
  Route::delete('artikel/delete/{item_id}','ArtikelController@destroy')->name('artikel.destroy');
