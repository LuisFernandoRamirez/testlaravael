<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->runDataDefault();
        if (env('PROJECT_MODE', 'prod') === 'dev') {
            $this->runDataFake();
        }
    }

    public function runDataDefault() {
        DB::table('tbl_client')->insert([
            'name' => 'Admin',
            'address' => 'Los pinos',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('1234567890'),
            'phone' => '987654321',
            'document' => '12345678'
        ]);
    }

    public function runDataFake() {
        DB::table('tbl_client')->insert([
            'name' => 'Vendedor',
            'address' => 'Calle Santa',
            'email' => 'vendedor@gmail.com',
            'password' => bcrypt('1234567890'),
            'phone' => '987654321',
            'document' => '12345678'
        ]);
    }
}
