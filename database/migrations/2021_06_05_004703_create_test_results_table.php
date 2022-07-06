<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('test_results', function (Blueprint $table) {
            $table->id();
            $table->string('email');
            $table->string('full_name');
            $table->bigInteger('age');
            $table->string('gender');
            $table->string('address');
            $table->string('postcode');
            $table->string('ttn_code_id');
            $table->string('result');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return vostring
'dd'     */
    public function down()
    {
        Schema::dropIfExists('test_results');
    }
}
