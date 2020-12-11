<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGroupMasterTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('group_master', function (Blueprint $table) {

            $table->bigIncrements('id');
            $table->string('group_name')->nullable();
            $table->integer('created_by')->nullable();
            $table->dateTimeTz('created_on');
            $table->integer('updated_by')->nullable();
            $table->dateTimeTz('updated_on');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('group_master');
    }
}
