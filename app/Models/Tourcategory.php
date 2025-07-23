<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tourcategory extends Model
{
        protected $primaryKey = 'id';
    protected $table = 'tourcategory';
     public function tours(){

        return $this->hasMany(Tour::class,'destination_id');
    }
}
