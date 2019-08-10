<?php


Breadcrumbs::for('admins', function ($trail) {
    $trail->parent('home');
    $trail->push(trans('backend.admins_controller'), route('admins.index'));
});
///////////////  nationality
Breadcrumbs::for('nationality', function ($trail) {
    $trail->parent('home');
    $trail->push(trans('backend.nationality_controller'), route('nationality.index'));
});
Breadcrumbs::for('cities', function ($trail) {
    $trail->parent('home');
    $trail->push(trans('backend.cities'), route('cities.index'));
});

Breadcrumbs::for('roles', function ($trail) {
    $trail->parent('home');
    $trail->push(trans('backend.roles'), route('roles.index'));
});

