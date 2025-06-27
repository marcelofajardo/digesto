<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\MorphToMany;
use Spatie\Tags\HasTags;
//use Spatie\Tags\Tags;

class Document extends Model
{
    use SoftDeletes, HasFactory, HasTags;

    protected $fillable = [
        'anio',
        'numero',
        'titulo',
        'descripcion',
        'archivo_pdf',
        'type_id',
        'category_id',
        'user_id',
        'department_id'
    ];
    public function type()
    {
        return $this->belongsTo(Type::class, 'type_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id');
    }

    /* public function tags() : MorphToMany
    {
        return $this->morphToMany(
            'tags',
            'taggable',

        );
    } */
}
