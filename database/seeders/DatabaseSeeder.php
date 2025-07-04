<?php

namespace Database\Seeders;

use App\Models\Document;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         \App\Models\User::factory(10)->create();
        $data =[
            [
                'name' => 'Admin',
                'email' => 'admin@gmail.com',
                'password' => bcrypt('sistemas')
            ],
            [
                'name' => 'Usuario1',
                'email' => 'usuario1@gmail.com',
                'password' => bcrypt('sistemas')
            ]
        ];
        DB::table('users')->insert($data);

        User::factory(10)->create();

        $this->call([
            CategoriasSeeder::class,
            TiposSeeder::class,
            DepartmentSeeder::class,
            ]);

            Document::factory(250)->create();

    }
}
