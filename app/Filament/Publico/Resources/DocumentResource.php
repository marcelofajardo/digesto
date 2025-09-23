<?php

namespace App\Filament\Publico\Resources;

use App\Filament\Publico\Resources\DocumentResource\Pages;
use App\Filament\Publico\Resources\DocumentResource\RelationManagers;
use App\Models\Document;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Columns\IconColumn;
use Illuminate\Support\Facades\Storage;

use App\Models\Category;
use App\Models\Type;
use App\Models\Department;
use App\Models\User;





use Filament\Tables\Enums\FiltersLayout; 

use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\TextInput;


class DocumentResource extends Resource
{
    protected static ?string $model = Document::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $navigationLabel  = 'Documentos';
    protected static ?string $navigationGroup = null;
    public static function canAccess(): bool { return true; }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

   public static function table(Table $table): Table
    {
    return $table
        ->striped()
        ->filtersLayout(FiltersLayout::AboveContent)
        ->columns([
            Tables\Columns\TextColumn::make('anio')
                ->searchable()
                ->label('Año')
                ->sortable(),
            Tables\Columns\TextColumn::make('numero')
                ->sortable()
                ->searchable()
                ->label('Número'),
            Tables\Columns\TextColumn::make('titulo')
                ->searchable()
                ->label('Título'),
            Tables\Columns\TextColumn::make('descripcion')
                ->searchable()
                ->wrap()
                ->label('Descripción'),
            TextColumn::make('archivo_pdf')
                ->searchable()
                ->toggleable(false)
                ->visible(false),
            IconColumn::make('archivo_pdf_icon')
                ->label('Documento')
                ->getStateUsing(fn ($record) => filled($record->archivo_pdf))
                ->trueIcon('heroicon-o-document')
                ->falseIcon(null)
                ->color('danger')
                ->url(fn ($record) => $record->archivo_pdf ? Storage::url($record->archivo_pdf) : null)
                ->openUrlInNewTab(),
            Tables\Columns\TextColumn::make('type.nombre')
                ->sortable()
                ->label('Tipo'),
            Tables\Columns\TextColumn::make('category.nombre')
                ->sortable()
                ->label('Escuela'),
            Tables\Columns\TextColumn::make('department.nombre')
                ->label('Departamento'),
            Tables\Columns\SpatieTagsColumn::make('tags')
                ->label('Etiquetas'),
        ])
        ->filters([
            // Filtro por Tipo (SelectFilter)
                        Filter::make('anio')
                ->label('Filtrar por Año')
                ->form([
                    TextInput::make('anio')
                        ->placeholder('Ej: 2024')
                        ->integer()
                        ->debounce(500), // Retraso para evitar consultas constantes
                ])
                ->query(function (Builder $query, array $data): Builder {
                    return $query->when(
                        $data['anio'],
                        fn (Builder $query, $anio): Builder => $query->where('anio', $anio)
                    );
                }),
            SelectFilter::make('type_id')
                ->label('Filtrar por Tipo')
                ->options(
                    Type::all()->pluck('nombre', 'id')->toArray()
                )
                ->placeholder('Selecciona un tipo')
                ->attribute('type_id'),

            // Filtro por Escuela (SelectFilter)
            SelectFilter::make('category_id')
                ->label('Filtrar por Escuela')
                ->options(
                    Category::all()->pluck('nombre', 'id')->toArray()
                )
                ->placeholder('Selecciona una escuela')
                ->attribute('category_id'),
            SelectFilter::make('department_id')
                ->label('Filtrar por Departamento')
                ->options(
                    Department::all()->pluck('nombre', 'id')->toArray()
                )
                ->placeholder('Selecciona un departamento')
                ->attribute('department_id'),
            SelectFilter::make('tags')
                ->relationship('tags', 'name')
                ->searchable()
                ->preload()->multiple(),
            
        ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListDocuments::route('/'),

        ];
    }
}
