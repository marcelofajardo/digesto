<?php

namespace App\Filament\Resources\DocumentResource\Pages;

use App\Filament\Resources\DocumentResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDocument extends EditRecord
{
    protected static string $resource = DocumentResource::class;
    public function getTitle(): string
    {
        return 'Editar Documento';
    }
    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()->label('Borra Documento')
            ->modalHeading('Confirmar Eliminación del Documento')
       ];
    }
}
