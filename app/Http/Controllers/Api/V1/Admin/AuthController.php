<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\User\Auth as AuthResource;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function user()
    {
        $user = Auth::user();
        $perm_roles = [];
        $permissions = [];
        if (count($user->roles) > 0) {
            foreach ($user->roles as $role) {
                $perm_roles[] = $role->permissions;
            }
        }

        $flat_perms = Arr::collapse($perm_roles);
        foreach ($flat_perms as $fp) {
            $permissions[] = $fp->slug;
        }
        $user->permissions = $permissions;

        return new AuthResource($user);
    }


    public function logout(Request $request)
    {
        $user = $request->user();
        if (!$user) return;
        $token = $user->token();
        $token->revoke();
        return new AuthResource($user);
    }
}
