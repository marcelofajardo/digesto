<?php

namespace App\Filament\Resources\TypeResource\Pages;

use App\Filament\Resources\TypeResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTypes extends ListRecords
{
    protected static string $resource = TypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Nuevo Tipo de Documento')
                ->icon('heroicon-o-plus')
                ->color('primary'),
        ];
    }
    public function getTitle(): string
    {
        return 'Tipos de Documentos';
    }
}
