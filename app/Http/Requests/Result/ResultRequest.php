<?php

namespace App\Http\Requests\Result;

use App\Rules\TTNCode\TTNCodeUsed;
use App\Rules\TTNCode\TTNCodeVerify;
use Illuminate\Foundation\Http\FormRequest;

class ResultRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'TTNCode' => ['required', 'bail', new TTNCodeVerify($this->TTNCode), new TTNCodeUsed($this->TTNCode)],
            'address' => 'required',
            'age' => 'required',
            'email' => 'required|email|unique:test_results,email',
            'fullName' => 'required',
            'gender' => 'required',
            'postCode' => 'required',
            'testResult' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'TTNCode.required' => 'This field is required',
            'address.required' => 'This field is required',
            'age.required' => 'This field is required',
            'email.required' => 'This field is required',
            'email.unique' => 'This email has already been used.',
            'fullName.required' => 'This field is required',
            'gender.required' => 'This field is required',
            'postCode.required' => 'This field is required',
            'testResult.required' => 'This field is required',
        ];
    }
}
