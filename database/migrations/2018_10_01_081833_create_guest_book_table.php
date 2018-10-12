<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuestBookTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guest_book', function (Blueprint $table) {
            $table->increments('id');
            $table->string('message', 8192);
            $table->string('username', 32);
            $table->string('email', 48);
            $table->string('website', 128)->nullable();
            $table->string('user_ip', 16);
            $table->string('browser_data', 512);
            $table->integer('file_id')->unsigned()->nullable();
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('guest_book');
    }
}
