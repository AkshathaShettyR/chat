<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGroupDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
//        Schema::create('group_details', function (Blueprint $table) {
//            $table->bigIncrements('id');
//
//            $table->bigInteger('group_id')->unsigned(); // in group_master table id is in bigint so biginterger
//            $table->bigInteger('user_id')->unsigned();
//            $table->integer('created_by')->nullable();
//            $table->dateTimeTz('created_at');
//            $table->integer('updated_by')->nullable();
//            $table->dateTimeTz('updated_at');
//        });
//        Schema::table('group_details', function($table) {
////            $table->foreign('group_id')->references('id')->on('group_master');
//            $table->foreign('user_id')->references('id')->on('users');
//        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('group_details');
    }
}
