<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Document extends Model
{
    use SoftDeletes, HasFactory;

    protected $fillable = [
        'titulo', 
        'descripcion', 
        'archivo_pdf', 
        'type_id', 
        'category_id',
        'user_id'
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

}
