<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\WebsiteSetting;
use App\Models\SocialMedia;
use App\Models\Branch;
use Illuminate\Support\Facades\URL;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if ($this->app->environment('production')) {
            URL::forceScheme('https');
        }

        // Share website settings, social media, branches, and web content with layout views only
        // This prevents the code from running on every single view partial (performance optimization)
        View::composer(['layouts.*', 'dashboard', 'auth.*'], function ($view) {
            $cacheTime = 60 * 60; // 1 hour

            $settings = \Illuminate\Support\Facades\Cache::remember('web_settings', $cacheTime, function () {
                return WebsiteSetting::all()->pluck('value', 'key');
            });

            $socials = \Illuminate\Support\Facades\Cache::remember('web_socials', $cacheTime, function () {
                return SocialMedia::all();
            });

            $branches = \Illuminate\Support\Facades\Cache::remember('web_branches', $cacheTime, function () {
                return Branch::all();
            });
            
            $webContents = \Illuminate\Support\Facades\Cache::remember('web_contents', $cacheTime, function () {
                return \App\Models\WebContent::all()->mapWithKeys(function($item) {
                    $val = $item->value;
                    if ($item->type === 'image' && $val && !str_starts_with($val, 'http')) {
                        $val = asset('storage/' . $val);
                    }
                    return [$item->slug => $val];
                });
            });
            
            $view->with([
                'webSettings' => $settings,
                'socials' => $socials,
                'branches' => $branches,
                'webContents' => $webContents
            ]);
        });
    }
}
