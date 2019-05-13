<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserOderOnline extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([

            'email' => 'nguyencanhhoang@gmail.com',
            'password' => bcrypt('123456'),

        ]);
    }
}
