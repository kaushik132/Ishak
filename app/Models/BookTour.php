<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BookTour extends Model
{
    protected $table = 'book';
    protected $fillable = [
        'name',
        'email',
        'phone',
        'tour_date',
        'tour_name',
        'message'
    ];
}
