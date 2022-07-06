<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestResult extends Model
{
    use HasFactory;

    public function ttnCode()
    {
        return $this->belongsTo(TTNCode::class, 'ttn_code_id');
    }
}
