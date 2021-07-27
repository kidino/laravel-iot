<?php

use App\Models\Device;
use App\Models\Device_log;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/log', function(Request $request ) {
    // dd( $request );

    $device = new Device_log;

    $device->device_id = $request->device_id;
    $device->field_1   = $request->field_1;
    $device->field_2   = $request->field_2;
    $device->field_3   = $request->field_3;
    $device->field_4   = $request->field_4;
    $device->field_5   = $request->field_5;
    $device->field_6   = $request->field_6;
    $device->field_7   = $request->field_7;
    $device->field_8   = $request->field_8;

    $device->save();    

    return Response::json(array('status' => 'OK', 'data' => $device ));

});
