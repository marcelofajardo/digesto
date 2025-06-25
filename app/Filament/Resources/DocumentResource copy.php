<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DocumentResource\Pages;
use App\Filament\Resources\DocumentResource\RelationManagers;
use App\Models\Document;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Hidden;

class DocumentResource extends Resource
{
    protected static ?string $model = Document::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('anio')
                    ->required()
                    ->numeric()
                    ->minValue(2008)
                    ->maxValue(2045)
                    ->default(date('Y'))
                    ->placeholder('Año'),
                Forms\Components\TextInput::make('numero')
                    ->required()
                    ->numeric()
                    ->minValue(1)
                    ->maxValue(9999)
                    ->placeholder('Número'),
                Forms\Components\TextInput::make('titulo')
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('descripcion')
                    ->required()
                    ->columnSpanFull(),
                Forms\Components\FileUpload::make('archivo_pdf')
                    ->required(true)
                    ->placeholder('Archivo PDF')
                    ->preservefilenames(),
                Forms\Components\Select::make('type_id')
                    ->relationship('type', 'Nombre')
                    ->required(true)
                    ->placeholder('Tipo de Documento'),
                Forms\Components\Select::make('category_id')
                    ->relationship('category', 'Nombre')
                    ->required(true)
                    ->placeholder('Categoría'),
                /*Forms\Components\Select::make('user_id')
                    ->label('Usuario')
                    ->relationship('user', 'name')
                    ->default(auth()->user()->id)
                    ->required()
                    ->disabled()->hidden(),
                    //->hidden(fn (Forms\Get $get) => $get('user_id') !== null)*/
                Hidden::make('user_id')
                    ->default(auth()->user()->id)

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('anio')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('numero')
                    ->sortable()
                    ->searchable(),
                Tables\Columns\TextColumn::make('titulo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('archivo_pdf')
                    ->searchable(),

                Tables\Columns\TextColumn::make('type.nombre')->sortable(),
                Tables\Columns\TextColumn::make('category.nombre')->sortable(),
                Tables\Columns\TextColumn::make('user.name')

                    ->sortable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]),
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
            'create' => Pages\CreateDocument::route('/create'),
            'edit' => Pages\EditDocument::route('/{record}/edit'),
        ];
    }
}
