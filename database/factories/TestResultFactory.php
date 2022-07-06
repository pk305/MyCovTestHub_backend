<?php

namespace Database\Factories;

use App\Models\TestResult;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;

class TestResultFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = TestResult::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $gender = Arr::shuffle(['Male', 'Female', 'Other']);
        $result = Arr::shuffle(['positive', 'negative', 'incoclusive']);

        return [
            'email' => $this->faker->unique()->safeEmail,
            'full_name' => $this->faker->name,
            'gender' => $gender[0],
            'result' => $result[0],
            'address' => $this->faker->address,
            'postcode' => rand(80120, 80130),
            'ttn_code_id' => rand(1, 10),
            'age' => rand(1, 90),
            'created_at' => $this->faker->dateTimeThisYear()
        ];
    }
}
