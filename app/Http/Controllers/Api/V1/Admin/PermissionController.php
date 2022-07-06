<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\Perm\Perm as PermResource;
use App\Http\Resources\Perm\PermCollection;
use App\Http\Resources\Role\Role as RoleResource;
use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('can_view_permissions');
        return new PermCollection(Permission::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|unique:permissions,title'
        ], ['title.required' => 'This field is required.', 'title.unique' => 'This title already exists.']);
        if (!$validated) return;

        $permission = new Permission();
        $permission->title = ucwords($request->title);
        $permission->slug = Str::slug($request->title, '_');
        $permission->save();

        return new PermResource($permission);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function addRolePermission(Request $request)
    {
        $validated =  $request->validate(([
            'permissions' => 'required',
            'roleId' => 'required',
        ]));
        if (!$validated) return;
        $role = Role::find($request->roleId);
        $permission_ids = [];
        foreach ($request->permissions as $permission) {
            $permission_ids[] = $permission['id'];
        }
        $role->permissions()->attach($permission_ids);

        return new RoleResource($role);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroyRolePermission(Request $request)
    {
        $validated =  $request->validate(([
            'permissions' => 'required',
            'roleId' => 'required',
        ]));
        if (!$validated) return;
        $role = Role::find($request->roleId);
        $permission_ids = [];
        foreach ($request->permissions as $permission) {
            $permission_ids[] = $permission['id'];
        }
        $role->permissions()->detach($permission_ids);

        return new RoleResource($role);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
