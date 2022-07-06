<?php

namespace App\Rules\TTNCode;

use App\Models\TestResult;
use App\Models\TTNCode;
use Illuminate\Contracts\Validation\Rule;

class TTNCodeUsed implements Rule
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
        $code = TTNCode::where('code', $value)->first();
        $r = TestResult::where('ttn_code_id', $code->id)->get();
        if (!count($r) > 0) return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'This TTN code has already been used.';
    }
}
