<?php

namespace App\Filament\Resources\TypeResource\Pages;

use App\Filament\Resources\TypeResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditType extends EditRecord
{
    protected static string $resource = TypeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->label('Eliminar Tipo de Documento')
                ->icon('heroicon-o-trash')
                ->color('danger')
                ->requiresConfirmation()
                ->successNotificationTitle('Tipo de Documento eliminado correctamente')
                ->modalHeading('Confirmar Eliminación del Tipo de Documento'),
        ];
    }
    public function getTitle(): string
    {
        return 'Editar Tipos de Documentos';
    }
}
