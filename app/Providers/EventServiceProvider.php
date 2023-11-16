<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use App\Events\TestDataOtomatis;
use App\Listeners\ProsesTestDataOtomatis;
use App\Events\TestDataOtomatis1;
use App\Listeners\ProsesTestDataOtomatis1;
use App\Events\TestDataOtomatisbyBarcode;
use App\Listeners\ProsesTestDataOtomatisByBarcode;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [

        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        TestDataOtomatis::class => [
            ProsesTestDataOtomatis::class,
        ],

        TestDataOtomatis1::class => [
            ProsesTestDataOtomatis1::class,
        ],

        TestDataOtomatisbyBarcode::class => [
            ProsesTestDataOtomatisByBarcode::class,
        ],

    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
    }
}
