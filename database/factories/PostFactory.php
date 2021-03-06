<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    
    public function definition()
    {
        return [
            'cover' => 'download.jpg',
            'title' => $this->faker->sentence(mt_rand(2,8)),
            'slug' => $this->faker->slug(),
            'desc' => $this->faker->paragraph(mt_rand(10,20)),
            'keywords' => $this->faker->word(),
            'meta_desc' => $this->faker->paragraph(),
            'category_id' => mt_rand(1,3),
            'user_id' => mt_rand(1,2),
        ];
    }
}
