<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DocumentResource\Pages;
use App\Filament\Resources\DocumentResource\RelationManagers;
use App\Models\Department;
use App\Models\Document;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Filters\Filter;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Fieldset;
use Filament\Tables\Actions;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Actions\ForceDeleteBulkAction;
use Filament\Tables\Actions\RestoreBulkAction;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;


class DocumentResource extends Resource
{
    protected static ?string $model = Document::class;
   
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel  = 'Documentos';

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::count();
    }

    public static function form(Form $form): Form
    {
        return $form

            ->schema([
                Fieldset::make()
                ->schema([
                        Forms\Components\TextInput::make('anio')
                            ->required()
                            ->numeric()
                            ->minValue(2008)
                            ->maxValue(2045)
                            ->default(date('Y'))
                            ->placeholder('Año')
                            ->columnSpan(2),
                        Forms\Components\TextInput::make('numero')
                            ->required()
                            ->numeric()
                            ->minValue(1)
                            ->maxValue(9999)
                            ->placeholder('Número')
                            ->columnSpan(2),
                        Forms\Components\TextInput::make('titulo')
                            ->required()
                            ->maxLength(255)->columnSpan(8),

                ])->columns(12),

                Fieldset::make()
                ->schema([

                        Forms\Components\Textarea::make('descripcion')
                            ->required()
                            ->columnSpanFull(),

                ]),
                Fieldset::make()
                ->schema([

                        Forms\Components\FileUpload::make('archivo_pdf')
                            ->required(true)
                            ->placeholder('Archivo PDF')
                            ->preservefilenames()->columnSpan(5),
                        Forms\Components\Select::make('type_id')
                            ->relationship('type', 'Nombre')
                            ->required(true)
                            ->placeholder('Tipo de Documento')->columnSpan(2),
                        Forms\Components\Select::make('category_id')
                            ->relationship('category', 'Nombre')
                            ->required(true)
                            ->placeholder('Categoría')->columnSpan(3),
                        Forms\Components\Select::make('department_id')
                            ->relationship('department', 'Nombre')
                            ->required(true)
                            ->placeholder('Departamento')->columnSpan(2),
                        /* Forms\Components\Select::make('tags')
                            ->multiple()
                            ->preload()
                            ->relationship('tags', 'name')
                            ->placeholder('Etiquetas')->columnSpan(12), */
                        Forms\Components\SpatieTagsInput::make('tags')->columnSpan(12),

                        Hidden::make('user_id')
                            ->default(auth()->user()->id)
                ])->columns(12),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
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
                Tables\Columns\TextColumn::make('archivo_pdf')
                    ->searchable()
                    ->label('Archivo'),

                Tables\Columns\TextColumn::make('type.nombre')
                ->sortable()
                ->label('Tipo'),
                Tables\Columns\TextColumn::make('category.nombre')
                ->sortable()->label('Escuela'),
                Tables\Columns\TextColumn::make('user.name')
                    ->label('Usuario')
                    ->sortable(),
                Tables\Columns\TextColumn::make('department.nombre')
                    ->label('Departamento'),
                Tables\Columns\SpatieTagsColumn::make('tags')

                   /*  ->searchable(
                    query: function (Builder $query, string $search): Builder {
                        return $query->whereHas('tags', function (Builder $query) use ($search) {
                            $query->where('name', 'like', "%{$search}%");
                        });
                    }
                ) */
                ->label('Tags'),
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
