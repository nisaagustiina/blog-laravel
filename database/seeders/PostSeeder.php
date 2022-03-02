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

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes4';
        $post->slug = 'tes-slug4';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '3';
        $post->user_id = '1';
        $post->save();

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes5';
        $post->slug = 'tes-slug5';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '2';
        $post->user_id = '1';
        $post->save();

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes6';
        $post->slug = 'tes-slug6';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '1';
        $post->user_id = '2';
        $post->save();

        $post = new Post;
        $post->cover = 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg';
        $post->title = 'tes7';
        $post->slug = 'tes-slug7';
        $post->desc = 'tes deskripsi lengkap';
        $post->keywords = 'tes';
        $post->meta_desc = 'tes deskripsi singkat';
        $post->category_id = '2';
        $post->user_id = '1';
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

        DB::table('post_tag')->insert([
            'post_id' => 4,
            'tag_id' => 6,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 5,
            'tag_id' => 3,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 6,
            'tag_id' => 7,
        ]);

        DB::table('post_tag')->insert([
            'post_id' => 7,
            'tag_id' => 1,
        ]);
    }
}
