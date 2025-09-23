<?php

namespace App\Filament\Publico\Resources\DocumentResource\Pages;

use App\Filament\Publico\Resources\DocumentResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDocuments extends ListRecords
{
    protected static string $resource = DocumentResource::class;


    protected function getHeaderActions(): array
    {
        return [
            //Actions\CreateAction::make(),
        ];
    }
    public function getTitle(): string
    {
        return 'Documentos';
    }
}
