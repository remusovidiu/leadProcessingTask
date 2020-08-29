<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;


Auth::routes();

Route::get('/', 'HomeController@index')->name('index');

Route::post('/', 'HomeController@setStatusUser')->name('setStatusUser');

Route::post('/categorize', 'HomeController@categorize')->name('categorize');

Route::post('/deleteEmail', 'HomeController@deleteEmail')->name('deleteEmail');

Route::post('/updateStatus', 'HomeController@updateStatus')->name('updateStatus');



//admin
Route::group(['middleware' => ['admin']], function () {

    Route::get('/admin/index', 'AdminController@index')->name('admin-index');

    //display edit form admin
    Route::get('admin/edit/{id}', 'AdminController@edit')->name('admin-edit');

    //update category admin
    Route::post('admin/update/{id}', 'AdminController@update')->name('admin-update');

    //update status - admin
    Route::post('admin/back-to-pool/{id}', 'AdminController@updateStatus')->name('admin-update-status');
});
