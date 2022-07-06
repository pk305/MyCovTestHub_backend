<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TTNCode extends Model
{
    protected  $table = "ttn_codes";

    use HasFactory;
    protected $fillable = ['code', 'created_at', 'updated_at'];

    public function testResult()
    {
        return $this->hasOne(TestResult::class, 'ttn_code_id');
    }
}
