<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class DocumentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Titulo' => $this->faker->text(25),
            'Descripcion' =>$this->faker->text(100),
            'anio' =>$this->faker->numberBetween(2008 , 2025),
            'numero' =>$this->faker->numberBetween(1,150),
            'archivo_pdf' => $this->faker->numberBetween(1,11) . '.pdf',
            'user_id' => $this->faker->numberBetween(1,2),
            'category_id' => $this->faker->numberBetween(1,5),
            'department_id' => $this->faker->numberBetween(1,3),
            'type_id' => $this->faker->numberBetween(1,3),
        ];
    }
}
