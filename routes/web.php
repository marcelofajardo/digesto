<?php

use Illuminate\Support\Facades\Route;

/* Route::get('/', function () {
    return view('welcome');
}); */
Route::prefix('public-panel')->group(function () {
    Route::get('/', \App\Filament\Publico\Resources\DocumentResource\Pages\ListDocuments::class);
});