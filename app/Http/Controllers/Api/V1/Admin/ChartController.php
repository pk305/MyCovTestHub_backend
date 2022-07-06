<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Models\TestResult;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Log;

class ChartController extends Controller
{
    public function PositivePerNegative()
    {
        // $this->authorize('can_view_charts');
        $tests = TestResult::all();
        $grouped = collect($tests)->groupBy(function ($d) {
            return Carbon::parse($d->created_at)->format('m');
        })->toArray();
        $results = [];
        foreach ($grouped as $k => $v) {
            $s = ['month' => $k, 'results' => $v];
            $results[] = $s;
        }
        //
        $array_data = [];
        foreach ($results as $r) {
            $t = [
                'month' => (int) $r['month'],
                'result' => collect($r['results'])->groupBy('result')->map(function ($item) {
                    return count($item);
                })
            ];

            $array_data[] = $t;
        }

        return  response()->json($array_data);
    }

    public function GetCaseByPostcode()
    {
        $tests = TestResult::all();
        $grouped = collect($tests)->groupBy(function ($d) {
            return $d->postcode;
        })->toArray();

        $results = [];
        foreach ($grouped as $k => $v) {
            $s = ['postcode' => $k, 'results' => $v];
            $results[] = $s;
        }

        $array_data = [];
        foreach ($results as $r) {
            $t = [
                'postcode' =>  $r['postcode'],
                'result' => collect($r['results'])->groupBy('result')->map(function ($item) {
                    return count($item);
                })
            ];

            $array_data[] = $t;
        }

        return  response()->json($array_data);
    }

    public function GetCaseByAgeGroup()
    {



        // return response()->json($permissions);
    }

    public function GetCaseByAgeDistrubution()
    {
        $tests = TestResult::all();
        $grouped = collect($tests)->groupBy(function ($d) {
            return $d->age;
        })->toArray();

        $ranges = [
            '18-24' => 18,
            '25-35' => 25,
            '36-45' => 36,
            '46+' => 46
        ];

        $output = TestResult::all();
        $c = collect($output)->map(function ($test) use ($ranges) {
            $age = $test->age;
            foreach ($ranges as $key => $breakpoint) {
                if ($breakpoint >= $age) {
                    $test->range = $key;
                    break;
                }
            }
            return $age;
        });
        // ->mapToGroups(function ($test, $key) {
        //     return [$test->range => $test];
        // });
        //     ->map(function ($group) {
        //         return count($group);
        //     })
        //     ->sortKeys();

        return  response()->json($c);
    }
}
