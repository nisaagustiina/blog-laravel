<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $category = new Category;
        $category->name = 'Web Development';
        $category->slug = 'web-development';
        $category->keywords = 'web, development';
        $category->meta_desc = 'web development';
        $category->save();

        $category = new Category;
        $category->name = 'Web Design';
        $category->slug = 'web-design';
        $category->keywords = 'web design';
        $category->meta_desc = 'web design';
        $category->save();

        $category = new Category;
        $category->name = 'Desktop Development';
        $category->slug = 'desktop-development';
        $category->keywords = 'desktop development';
        $category->meta_desc = 'desktop development';
        $category->save();
    }
}
