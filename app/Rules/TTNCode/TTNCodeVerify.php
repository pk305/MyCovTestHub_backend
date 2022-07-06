<?php

namespace App\Rules\TTNCode;

use App\Models\TTNCode;
use Illuminate\Contracts\Validation\Rule;

class TTNCodeVerify implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $code =  TTNCode::where('code', $value)->first();
        if ($code) return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'TTN code does not match the record in the database.';
    }
}
