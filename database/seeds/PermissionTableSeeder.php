<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ///php artisan db:seed --class=PermissionTableSeeder
        $permissions = [
            'admin-list',
            'admin-create',
            'admin-edit',
            'admin-delete',

            'client-list',
            'client-create',
            'client-edit',
            'client-delete',

            'settings',
            'role-list',
            'role-create',
            'role-edit',
            'role-delete',



            'city-list',
            'city-create',
            'city-action',

            'country-list',
            'country-create',
            'country-action',

        ];


        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
    }
}
