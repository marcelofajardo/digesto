<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;

use Filament\Support\Enums\MaxWidth;
use Monolog\Processor\WebProcessor;

class PublicoPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->id('publico')
            ->navigation(false) // 🔥 desactiva el sidebar completo
            ->breadcrumbs(false) // 🔥 oculta breadcrumbs en todo el panel
            ->path('')
            ->maxContentWidth(MaxWidth::Full)
            //->brandLogo(asset('images/LOGOTIPO-UNViMe-COLOR.webp'))
            ->brandLogo(asset('images/logo-transparente3.png'))
            ->brandLogoHeight('4rem')

            ->favicon(asset('images/favicon-unvime.png'))

            //->login()
            ->colors([
                'primary' => Color::Amber,
            ])
            ->brandName('Digesto UNViMe')
            ->discoverResources(in: app_path('Filament/Publico/Resources'), for: 'App\\Filament\\Publico\\Resources')
            ->discoverPages(in: app_path('Filament/Publico/Pages'), for: 'App\\Filament\\Publico\\Pages')
            ->pages([
                //Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Publico/Widgets'), for: 'App\\Filament\\Publico\\Widgets')
            ->widgets([
                /* Widgets\AccountWidget::class,
                Widgets\FilamentInfoWidget::class, */
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                //AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                //Authenticate::class,
            ]);
    }
}
