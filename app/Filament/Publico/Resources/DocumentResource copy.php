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
                    ->wrap() // 👈 permite salto de línea
                    ->label('Descripción'),              
                TextColumn::make('archivo_pdf')
                    ->searchable()
                    ->toggleable(false)   // evita que el usuario la muestre/oculte
                    ->visible(false),     // no se muestra en la tabla pero sigue en la consulta

                // 2) IconColumn para mostrar el icono PDF clickeable
                IconColumn::make('archivo_pdf_icon') // nombre de columna arbitrario porque usamos getStateUsing
                    ->label('Documento')
                    ->getStateUsing(fn ($record) => filled($record->archivo_pdf)) // true si hay archivo
                    ->trueIcon('heroicon-o-document') // icono cuando hay archivo
                    ->falseIcon(null)              // nada si no hay archivo
                    ->color('danger')              // color rojo
                    ->url(fn ($record) => $record->archivo_pdf ? Storage::url($record->archivo_pdf) : null)
                    ->openUrlInNewTab(),           // abrir en nueva pestaña
                Tables\Columns\TextColumn::make('type.nombre')
                ->sortable()
                ->label('Tipo'),
                Tables\Columns\TextColumn::make('category.nombre')
                ->sortable()->label('Escuela'),
               /*  Tables\Columns\TextColumn::make('user.name')
                    ->label('Usuario')
                    ->sortable(), */
                Tables\Columns\TextColumn::make('department.nombre')
                    ->label('Departamento'),
                Tables\Columns\SpatieTagsColumn::make('tags')

               
                ->label('Etiquetas'),
                
            ])
             ->defaultSort(function (Builder $query): Builder {
                return $query
                    ->orderBy('anio','desc')
                    ->orderBy('numero','desc');
            })
            ->filters([
                /* Filter::make('Año')
                    ->form([
                        Forms\Components\TextInput::make('anio')
                            ->numeric()
                            ->minValue(2008)
                            ->maxValue(2045)
                            ->default(date('Y'))
                            ->placeholder('Año')
                    ])
                    ->query(fn (Builder $query, array $data): Builder => $query->where('anio', $data['anio'] ?? date('Y'))),
 */
            SelectFilter::make('tags')
                ->relationship('tags', 'name')
                ->searchable()
                ->preload()->multiple()
            ])
            ->actions([
                //Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                /* Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]), */
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
           /*  'create' => Pages\CreateDocument::route('/create'),
            'edit' => Pages\EditDocument::route('/{record}/edit'), */
        ];
    }
}
