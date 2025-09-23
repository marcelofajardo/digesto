<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
        ['nombre' => 'Ingeniería'],
        ['nombre' => 'Economía'],
        ['nombre' => 'Salud'],
        ['nombre' => 'Educación'],
        ['nombre' => 'Posgrado']
        ];
        DB::table('categories')->insert($data);
    }
}

