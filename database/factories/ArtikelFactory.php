<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Artikel;
use App\Categori;
use Faker\Generator as Faker;

$factory->define(Artikel::class, function (Faker $faker) {
    $word = $faker->word;

    return [
        'judul' => Str::slug($faker->unique()->name,'-'),
        'body' => $word,
        'gambar' => $faker->unique()->name,
        'kategori_id' => function(){
          return Categori::all()->random();
        },
    ];
});
