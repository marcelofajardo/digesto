<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
        ['nombre' => 'Rectorado'],
        ['nombre' => 'Académica'],
        ['nombre' => 'Extensión'],

        ];
        DB::table('departments')->insert($data);
    }
}
