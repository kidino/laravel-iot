<?php

namespace App\Models;

use App\Models\Device_log;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Device extends Model
{
    use HasFactory;

    public function logs()
    {
        return $this->hasMany(Device_log::class);
    }
}
