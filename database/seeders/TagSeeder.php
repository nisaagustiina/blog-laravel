<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tag;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tag = new Tag;
        $tag->name = 'PHP';
        $tag->slug = 'php';
        $tag->keywords = 'php';
        $tag->meta_desc = 'php';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'HTML';
        $tag->slug = 'html';
        $tag->keywords = 'html';
        $tag->meta_desc = 'html';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'CSS';
        $tag->slug = 'css';
        $tag->keywords = 'css';
        $tag->meta_desc = 'css';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'JAVASCRIPT';
        $tag->slug = 'javascript';
        $tag->keywords = 'js';
        $tag->meta_desc = 'js';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'LARAVEL';
        $tag->slug = 'laravel';
        $tag->keywords = 'laravel';
        $tag->meta_desc = 'laravel';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'CODEIGNITER';
        $tag->slug = 'ci';
        $tag->keywords = 'ci';
        $tag->meta_desc = 'ci';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'FIGMA';
        $tag->slug = 'figma';
        $tag->keywords = 'figma';
        $tag->meta_desc = 'figma';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'ADOBE PHOTOSHOP';
        $tag->slug = 'photoshop';
        $tag->keywords = 'photoshop';
        $tag->meta_desc = 'photoshop';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'JAVA';
        $tag->slug = 'java';
        $tag->keywords = 'java';
        $tag->meta_desc = 'java';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'C#';
        $tag->slug = 'csharp';
        $tag->keywords = 'csharp';
        $tag->meta_desc = 'csharp';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'PYTHON';
        $tag->slug = 'python';
        $tag->keywords = 'python';
        $tag->meta_desc = 'python';
        $tag->save();

        $tag = new Tag;
        $tag->name = 'MYSQL';
        $tag->slug = 'mysql';
        $tag->keywords = 'mysql';
        $tag->meta_desc = 'mysql';
        $tag->save();
    }
}
