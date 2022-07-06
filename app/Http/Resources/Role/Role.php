<?php

namespace App\Http\Resources\Role;

use App\Http\Resources\Perm\PermCollection;
use Illuminate\Http\Resources\Json\JsonResource;
use Carbon\Carbon;

class Role extends JsonResource
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
            'title' => $this->title,
            'description' => $this->description,
            'permissions' => new PermCollection($this->permissions),
            'createdAt' => $this->created_at ? Carbon::parse($this->created_at)->toDateTimeString() : null,
        ];
    }
}
