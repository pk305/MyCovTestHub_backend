<?php

use App\Http\Controllers\Api\V1\Admin\AuthController;
use App\Http\Controllers\Api\V1\Admin\ChartController;
use App\Http\Controllers\Api\V1\Admin\PermissionController;
use App\Http\Controllers\Api\V1\Admin\RoleController;
use App\Http\Controllers\Api\V1\Admin\TestResultController;
use App\Http\Controllers\Api\V1\Admin\UserController;
use App\Http\Controllers\Api\V1\HomeController;
use Illuminate\Support\Facades\Route;
use Laravel\Passport\Http\Controllers\AccessTokenController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// authenticated
Route::group(['prefix' => 'v1', 'as' => 'api.', 'middleware' => ['auth:api']], function () {
    Route::get('user', [AuthController::class, 'user'])->name('index');
    Route::post('logout', [AuthController::class, 'logout'])->name('logout');
    Route::apiResource('users', UserController::class);
    Route::apiResource('roles', RoleController::class);
    Route::apiResource('permissions', PermissionController::class);
    Route::post('permissions/add_role', [PermissionController::class, 'addRolePermission']);
    Route::post('permissions/del_role', [PermissionController::class, 'destroyRolePermission']);

    Route::get('testResults', [TestResultController::class, 'index']);
    Route::delete('testResults/{testResult}', [TestResultController::class, 'destroy']);
    Route::get('chartReports/positivePerNegative', [ChartController::class, 'PositivePerNegative']);
    Route::get('chartReports/getCaseByPostcode', [ChartController::class, 'GetCaseByPostcode']);
    Route::get('chartReports/getCaseByAgeGroup', [ChartController::class, 'GetCaseByAgeGroup']);
});
// unauthenticated
Route::group(['prefix' => 'v1', 'as' => 'api.'], function () {
    Route::post('postTestResults', [HomeController::class, 'PostTestResults']);
    Route::post('login', [AccessTokenController::class, 'issueToken'])->middleware(['api-login', 'throttle:60,1']);
});
// Not Found
Route::fallback(function () {
    return response()->json(['message' => 'Resource not found.'], 404);
});
