<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('documents', static function (Blueprint $table) {
            $table->id();
            $table->string('titulo');
            $table->text('descripcion');
            $table->unsignedSmallInteger('anio');
            $table->unsignedSmallInteger('numero');
            $table->string('archivo_pdf');
            $table->foreignId('type_id')->constrained('types');
            $table->foreignId('category_id')->constrained('categories');
            $table->foreignId('user_id')->constrained('users')->default(1);
            $table->foreignId('department_id')->constrained('departments')->default(1);
            $table->timestamps();
            $table->softDeletes();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('documents');
    }
};
