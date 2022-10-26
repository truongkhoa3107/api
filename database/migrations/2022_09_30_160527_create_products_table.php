<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');       // Khai báo cột 'id' kiểu integer <=> int(10), tự tăng khi thêm mới
            $table->string('name');         // Khai báo cột 'name' kiểu string <=> varchar(255)
            $table->text('detail');         // Khai báo cột 'detail' kiểu text
            $table->integer('price');       // Khai báo cột 'price' kiểu integer <=> int(11)
            $table->integer('stock');       // Khai báo cột 'stock' kiểu integer <=> int(11)
            $table->integer('discount');    // Khai báo cột 'discount' kiểu integer <=> int(11)
            $table->integer('user_id')->unsigned()->index();    // Khai báo cột 'discount' kiểu integer <=> int(11)
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
        Schema::dropIfExists('products');
    }
};
