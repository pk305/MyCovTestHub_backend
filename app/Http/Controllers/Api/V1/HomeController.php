<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\Result\ResultRequest;
use App\Http\Resources\TestResult\TestResult as TestResultResource;
use App\Models\TestResult;
use App\Models\TTNCode;


class HomeController extends Controller
{
    public function PostTestResults(ResultRequest $request)
    {
        $code = TTNCode::where('code', $request->TTNCode)->first();
        if (!$code) return;
        $tests = new TestResult();
        $tests->ttn_code_id = $code->id;
        $tests->address = $request->address;
        $tests->age = (int) $request->age;
        $tests->email = $request->email;
        $tests->full_name = ucwords($request->fullName);
        $tests->gender = $request->gender;
        $tests->postcode = $request->postCode;
        $tests->result = $request->testResult;
        $tests->save();

        return  new TestResultResource($tests);
    }
}
