<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(5)->create();

        $this->call([
            UserSeeder::class,
        ]);

        $this->call([
            CategorySeeder::class,
        ]);

        $this->call([
            TagSeeder::class,
        ]);

        $this->call([
            PostSeeder::class,
        ]);

        // Post::factory(10)->create();
    }
}
