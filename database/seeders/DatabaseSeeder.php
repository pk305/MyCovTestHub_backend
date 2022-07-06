<?php

namespace Database\Seeders;

use App\Models\Permission;
use App\Models\Role;
use App\Models\TTNCode;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\TTNCode::factory(10)->create();
        // \App\Models\User::factory(10)->create();
        // \App\Models\TestResult::factory(1000)->create();
        //
        Permission::create([
            'title' => 'Can View Dashboard',
            'slug' => 'can_view_dashboard',
        ]);
        Permission::create([
            'title' => 'Can View Test Results',
            'slug' => 'can_view_test_results',
        ]);
        Permission::create([
            'title' => 'Can View Settings',
            'slug' => 'can_view_settings',
        ]);
        Permission::create([
            'title' => 'Can View Users',
            'slug' => 'can_view_users',
        ]);
        Permission::create([
            'title' => 'Can View Roles',
            'slug' => 'can_view_roles',
        ]);
        Permission::create([
            'title' => 'Can View Permissions',
            'slug' => 'can_view_permissions',
        ]);

        //
        $role1 = Role::create([
            'title' => 'Super Admin',
            'description' => 'Super Admin'
        ]);
        $role1->permissions()->attach([1, 2, 3, 4, 5, 6]);

        $role2 = Role::create([
            'title' => 'Admin',
            'description' => '---'
        ]);
        $role2->permissions()->attach([1, 2, 3, 4, 5, 6]);

        $role3 = Role::create([
            'title' => 'Guest',
            'description' => '---'
        ]);
        $role3->permissions()->attach(1);

        ///
        TTNCode::create([
            'code' => 'MM2874Z6'
        ]);
        TTNCode::create([
            'code' => 'FEQQ6UUG'
        ]);
        TTNCode::create([
            'code' => '34GC829B'
        ]);
        TTNCode::create([
            'code' => 'CB8FBCCM'
        ]);
        TTNCode::create([
            'code' => '8RL4ENTK'
        ]);
        TTNCode::create([
            'code' => '57UBS5J6'
        ]);
        TTNCode::create([
            'code' => '4F7YKH9G'
        ]);
        TTNCode::create([
            'code' => 'R9KZ2NXL'
        ]);
        TTNCode::create([
            'code' => 'YBQUVXHL'
        ]);
        TTNCode::create([
            'code' => 'CCZTQ8KW'
        ]);

        $user1 = User::create([
            'name' => 'admin',
            'email' => 'admin@example.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345'), // 12345
            // 'password' => hash('sha256', '12345'), // 12345
            'remember_token' => Str::random(10),
            'is_admin' => 1
        ]);
        $user1->roles()->attach([1, 2]);

        $user2 =  User::create([
            'name' => 'tester',
            'email' => 'tester@example.com',
            'email_verified_at' => now(),
            'password' => Hash::make('abcde'), // abcde
            // 'password' => hash('sha256', 'abcde'), // abcde
            'remember_token' => Str::random(10),
            'is_admin' => 0
        ]);
        $user2->roles()->attach(3);
    }
}
