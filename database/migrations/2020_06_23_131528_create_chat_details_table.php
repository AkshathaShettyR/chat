<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChatDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chat_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('group_id')->unsigned();
            $table->integer('chat_from')->unsigned();
            $table->integer('chat_to')->unsigned();
            $table->string('chat_text');
            $table->string('chat_files');
            $table->integer('created_by')->nullable();
            $table->dateTimeTz('created_at');
            $table->integer('updated_by')->nullable();
            $table->dateTimeTz('updated_at');
        });
        Schema::table('chat_details', function($table) {
            $table->foreign('group_id')->references('id')->on('group_master');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chat_details');
    }
}
