<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User;
        $user->name = 'Admin';
        $user->email = 'admin@gmail.com';
        $user->email_verified_at = date('Y-m-d H:i:s');
        $user->password = bcrypt('admin123');
        $user->role = 'admin';
        $user->save();

        $user = new User;
        $user->name = 'Nisa';
        $user->email = 'nisa@gmail.com';
        $user->email_verified_at = date('Y-m-d H:i:s');
        $user->password = bcrypt('nisa123');
        $user->role = 'user';
        $user->save();
    }
}
