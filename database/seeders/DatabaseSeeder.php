<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User dengan role admin
        User::factory()->create([
            'name' => 'Laksmi Nirmala',
            'email' => 'laksminirmaladewii@gmail.com',
            'username' => 'laksminirmala',
            'password' => bcrypt('12345678'),
            'role' => 'admin',
        ]);

        // User dengan role user
        User::factory()->create([
            'name' => 'Dewa Putra',
            'email' => 'dewainputra@gmail.com',
            'username' => 'dewainputra',
            'password' => bcrypt('12345678'),
            'role' => 'user',
        ]);
    }
}
