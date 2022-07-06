<?php

namespace Database\Factories;

use App\Models\TTNCode;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class TTNCodeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = TTNCode::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'code' => Str::upper(Str::random(8)),
        ];
    }
}
