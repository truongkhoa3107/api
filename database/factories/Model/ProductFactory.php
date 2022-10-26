<?php

namespace Database\Factories\Model;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => fake()->word(),
            'detail' => fake()->paragraph(),
            'price' => fake()->numberBetween(1000,10000),
            'stock' => fake()->randomDigit(),
            'discount' => fake()->numberBetween(1,100),
            'user_id' => function(){
                return User::all()->random();
            },
        ];
    }
}
