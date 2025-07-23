<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tour extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'tour';

           protected $casts = [
        
        'itinerarys' =>'array',
  
    ];

     public function tourCategorys(){

        return $this->belongsTo(Tourcategory::class,'destination_id');
    }

        public function tourdetailsinsert()
    {
        return $this->hasMany(Tourdetails::class,'package_id','id');
    }

}
