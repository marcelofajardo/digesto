<?php

namespace App\Filament\Resources\DepartmentResource\Pages;

use App\Filament\Resources\DepartmentResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDepartment extends EditRecord
{
    protected static string $resource = DepartmentResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()->label('Borra Escuela')
            ->modalHeading('Confirmar Eliminación de la Escuela'),
        ];
    }
    public function getTitle(): string
    {
        return 'Editar Escuela';
    }
}
