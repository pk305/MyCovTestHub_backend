<?php

namespace App\Http\Resources\TestResult;

use Illuminate\Http\Resources\Json\JsonResource;

class TestResult extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'email' => $this->email,
            'address' => $this->address,
            'gender' => $this->gender,
            'fullName' => $this->full_name,
            'postCode' => $this->postcode,
            'age' => $this->age,
            'result' => $this->result,
            'ttnCodeId' => $this->ttn_code_id,
        ];
    }
}
