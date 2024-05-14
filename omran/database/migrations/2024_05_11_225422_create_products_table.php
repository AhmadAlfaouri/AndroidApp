<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('catagory_id');
            $table->integer('quanity');
            $table->string('name');
            $table->decimal('price', 10, 2)->default(0.00);
            $table->decimal('width', 10, 2)->default(0.00);
            $table->decimal('length', 10, 2)->default(0.00);
            $table->decimal('discount', 10, 2)->default(0.00);
            $table->decimal('review_total', 10, 2)->default(0.00);
            $table->string('description');
            $table->string('vector');
            $table->string('image');
            $table->timestamps();
            $table->foreign('catagory_id')->references('id')->on('catagories');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
