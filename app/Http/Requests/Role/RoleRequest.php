<?php

namespace App\Http\Requests\Role;

use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends FormRequest
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
            'title' => "required|unique:roles,title",
            'description' => "required",
        ];
    }

    public function messages()
    {
        return [
            'title.required' => "This field is required.",
            'title.unique' => "This title already exists.",
            'description.required' => "This field is required.",
        ];
    }
}
