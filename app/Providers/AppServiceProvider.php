<?php

namespace App\Providers;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use View;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
        Schema::defaultStringLength(191);
        view::composer('*' , function ($view){

            $language = LaravelLocalization::getCurrentLocale();
            \Carbon\Carbon::setLocale($language);

            // Footer data




        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
