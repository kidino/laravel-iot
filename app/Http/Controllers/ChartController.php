<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;

class ChartController extends Controller
{
    public function chart() {
        $device = Device::find(1);
        // dd( $device->logs );

        $data = [];

        foreach( $device->logs as $x => $log ) {
            for($i = 1; $i <= 8; $i++) {
                if ( $device->{"field_$i"} !== null) {
                    $data[ $device->{"field_$i"} ][] = $log->{"field_$i"};
                }
            }    
        }

        return view('chart', [ 'data' => $data ]);

    }
}
