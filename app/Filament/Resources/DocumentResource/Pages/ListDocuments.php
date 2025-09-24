<?php

namespace App\Filament\Resources\DocumentResource\Pages;

use App\Filament\Resources\DocumentResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;


use Filament\Forms\Components\Actions\Action;
class ListDocuments extends ListRecords
{
    protected static string $resource = DocumentResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Nuevo Documento')
                ->icon('heroicon-o-plus')
                ->color('primary'),
            /* Actions\Select::make('anio')
                ->label('Año')
                /* ->options(
                    Customer::all()->pluck('name', 'id') // Opciones iniciales (si las hay)
                ) */
                /* ->getSearchResultsUsing(function (string $search) {
                    return Document::where('anio', 'like', "%{$search}%")
                        //->orWhere('phone', 'like', "%{$search}%")
                        //->orWhere('name', 'like', "%{$search}%")
                        ->limit(50) // Limitar resultados
                        ->pluck('anio', 'id');
                }), */
        ];
    }
    public function getTitle(): string
    {
        return 'Documentos';
    }

}
