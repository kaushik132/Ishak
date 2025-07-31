<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Tour;
use \App\Models\Tourcategory;

class SitemapController extends Controller
{
    
    public function index(){

$tourDetails = Tourcategory::all();
$tour = Tour::all();



        return response()->view('sitemap',[
            'tourDetails'=> $tourDetails,
            'tour'=> $tour,
       

        ])->header('Content-Type','text/xml');
    }
}
