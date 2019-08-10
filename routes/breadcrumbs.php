<?php
Breadcrumbs::for('home', function ($trail) {
    $trail->push(trans('backend.home'), route('home'));
});


require __DIR__ . '/resources/admin.php';