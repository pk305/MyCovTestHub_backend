<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\User\User as UserResource;
use App\Http\Resources\User\UserCollection;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('can_view_users');
        $users = User::all();
        return new UserCollection($users);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'username.required' => 'This field is required.',
            'email.required' => 'This field is required.',
            'password.required' => 'This field is required.',
            'confPassword.required' => 'This field is required.',
            'email.unique' => 'This email has already been taken.',
        ];

        $validated = $request->validate([
            'username' => 'required|bail',
            'email' => 'required|bail|email|unique:users,email',
            'password' => 'required|bail|min:4|max:32',
            'confPassword' => 'required|bail',
        ], $rules);

        if ($validated) {
            $user = User::create([
                'name' => $validated['username'],
                'email' => $validated['email'],
                'password' => Hash::make($validated['password']),
            ]);

            return new UserResource($user);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rules = [
            'username.required' => 'This field is required.',
            'email.required' => 'This field is required.',
            'email.unique' => 'This email has already been taken.',
        ];

        $validated = $request->validate([
            'username' => 'required|bail',
            'email' => 'required|bail|email|unique:users,email,' . $id,
        ], $rules);

        if ($validated) {
            $user = User::find($id);
            if ($user) {
                $user->name = $request->username;
                $user->email = $request->email;
                $user->update();

                return new UserResource($user);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ids = json_decode($id);
        $roles = User::find($ids);
        if (count($roles) > 0) {
            foreach ($roles as $u) {
                $u->delete();
            }
            return  new UserCollection($roles);
        }
    }
}
