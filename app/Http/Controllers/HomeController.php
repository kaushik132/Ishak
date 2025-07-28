<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Video;
use \App\Models\Gallery;
use \App\Models\BookTour;
use \App\Models\Contact;
use \App\Models\Tour;
use \App\Models\Tourcategory;
use \App\Models\CapturedMoment;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index()
    {
        $gallery = Gallery::latest()->get();
        return view('home',compact('gallery'));
    }

    public function tour()
    {
        return view('tour');
    }
    public function tourDetails()
    {
        return view('tourdetails');
    }
    public function gallery()
    {
        $gallery = Gallery::latest()->get();
        $capturedMoments = CapturedMoment::latest()->get();
        $vodeo = Video::latest()->get();    
        return view('gallery', compact('gallery', 'capturedMoments','vodeo'));
        
    }

    public function contact()
    {
        return view('contact');
    }
}
