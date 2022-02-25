<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use DB;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes 1';
        $post->slug = 'tes-slug';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '1';
        $post->user_id = '1';
        $post->save();

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes2';
        $post->slug = 'tes-slug-2';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '2';
        $post->user_id = '2';
        $post->save();

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes3';
        $post->slug = 'tes-slug3';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '3';
        $post->user_id = '2';
        $post->save();

        DB::table('post_tag')->insert([
            'post_id' => 1,
            'tag_id' => 2,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 2,
            'tag_id' => 5,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 1,
            'tag_id' => 4,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 3,
            'tag_id' => 2,
        ]);
    }
}
