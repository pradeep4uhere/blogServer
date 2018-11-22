<?php
use Faker\Generator as Faker;
$factory->define(App\Post::class, function (Faker $faker) {
   return [
        'title' => $faker->name,
        'description' => $faker->unique()->safeEmail,
        'user_id' => rand(1,1000), // secret
        'category_id' => rand(1,1000)
    ];
});
