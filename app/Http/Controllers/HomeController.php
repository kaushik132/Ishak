<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use \App\Models\Video;
use \App\Models\Gallery;
use \App\Models\BookTour;
use \App\Models\Contact;
use \App\Models\Tour;
use \App\Models\Tourdetails;
use \App\Models\Tourcategory;
use \App\Models\CapturedMoment;
use \App\Models\Customers;
use \App\Models\Title;
use \App\Models\Inclusions;
use \App\Models\Exclusion;
use \App\Models\Info;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function __construct()
    {
        $tourCategoryss = Tourcategory::all();
        $tourss = Tour::all();
        $info = Info::first();
        View::share('tourCategoryss', $tourCategoryss);
        View::share('tourss', $tourss);
        View::share('info', $info);
    }
    public function index()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_home;
        $seo_data['seo_description'] = $homepage->seo_des_home;
        $seo_data['keywords'] = $homepage->seo_key_home;
        $seo_data['seo_image'] = $homepage->seo_image_home;
        $canocial = 'https://www.tajindiatrails.com/';
        $customers = Customers::latest()->get();
        $customer = Customers::all();
        $gallery = Gallery::latest()->get();
        $tour = Tour::latest()->get();
        return view('home', compact('gallery', 'customers', 'customer', 'tour', 'seo_data', 'canocial'));
    }

    public function tour($slug = null)
    {
        $homepage = Title::select('seo_title_tour', 'seo_des_tour', 'seo_key_tour', 'seo_image_tour')->first();
        if ($slug != null) {
            $tourCategory = Tourcategory::where('slug', $slug)->first();
            $tourList = Tour::latest()->with('tourCategorys')->where('destination_id', $tourCategory->id)->paginate(4);
            $seo_data['seo_title'] = $tourCategory->seo_title;
            $seo_data['seo_description'] = $tourCategory->seo_description;
            $seo_data['keywords'] = $tourCategory->seo_keyword;
            $seo_data['seo_image'] = $tourCategory->image;
            $canocial = 'https://www.tajindiatrails.com/tour/' . $slug;
        } else {
            $tourList = Tour::latest()->with('tourCategorys')->paginate(4);
            $seo_data['seo_title'] = $homepage->seo_title_tour;
            $seo_data['seo_description'] = $homepage->seo_des_tour;
            $seo_data['keywords'] = $homepage->seo_key_tour;
            $seo_data['seo_image'] = $homepage->seo_image_tour;
            $canocial = 'https://www.tajindiatrails.com/tour';
        }
        $alltour = Tour::inRandomOrder()->get();

        $allcoustomer = Customers::latest()->get();
        return view('tour', compact('tourList', 'alltour', 'allcoustomer', 'seo_data', 'canocial'));
    }
    public function tourDetails($slug = null)
    {
        // $blogDetails = Tourcategory::latest()->limit(6)->get();

        $tourData = Tour::with('tourCategorys')->where('slug', $slug)->first();
        $tourdetails = Tourdetails::orderBy('order_num', 'asc')
            ->where('package_id', $tourData->id)
            ->get();
        $inclusions = Inclusions::latest()->get();
        $exclusions = Exclusion::latest()->get();
        $alltour = Tour::latest()->get();
        $seo_data['seo_title'] = $tourData->seo_title;
        $seo_data['seo_description'] = $tourData->seo_description;
        $seo_data['keywords'] = $tourData->seo_keyword;
        $seo_data['seo_image'] = $tourData->thumnail_image;
        $canocial = 'https://www.tajindiatrails.com/tour-details/' . $slug;
        return view('tourdetails', compact('tourData', 'tourdetails', 'inclusions', 'exclusions', 'alltour', 'seo_data', 'canocial'));
    }
    public function gallery()
    {
             $homepage = Title::first();
            $seo_data['seo_title'] = $homepage->seo_title_gallery;
            $seo_data['seo_description'] = $homepage->seo_des_gallery;
            $seo_data['keywords'] = $homepage->seo_key_gallery;
         $seo_data['seo_image'] = $homepage->seo_image_gallery;
            $canocial ='https://www.tajindiatrails.com/gallery';
        $gallery = Gallery::latest()->get();
        $capturedMoments = CapturedMoment::latest()->get();
        $vodeo = Video::latest()->get();
        return view('gallery', compact('gallery', 'capturedMoments', 'vodeo', 'seo_data', 'canocial'));
    }

    public function contact()
    {
         $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_contact;
        $seo_data['seo_description'] = $homepage->seo_des_contact;
        $seo_data['keywords'] = $homepage->seo_key_contact;
        $seo_data['seo_image'] = $homepage->seo_image_contact;
        $canocial ='https://www.tajindiatrails.com/contact-us';
        return view('contact',compact('seo_data', 'canocial'));
    }

    public function contactpost()
    {
        $data = request()->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required',
        ], [
            'name.required' => 'Name is required',
            'email.required' => 'Email is required',
            'email.email' => 'Please enter a valid email address',
            'phone.required' => 'Phone number is required',
            'message.required' => 'Message is required',

        ]);

        Contact::create($data);

        return redirect()->back()->with('success', 'Your message has been sent successfully!');
    }

    public function bookTour(Request $request)
    {
        $this->validate(
            request(),
            [
                'name' => 'required',
                'email' => 'required|email',
                'phone' => 'required',
                'tour_date' => 'required|date',
                'tour_name' => 'required',
                'message' => "required",

            ],
            [],
            [
                'name' => 'Full Name',
                'email' => 'Email',
                'phone' => 'Number',
                'tour_date' => 'Tour Date',
                'tour_name' => 'Tour Name',
                'message' => "Message",


            ]
        );
        // $data = [
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'phone' => $request->phone,
        //     'subject' => $request->message,
        //     'tour_date' => $request->tour_date,
        //     'tour_name' => $request->tour_name,
        //     'message' => $request->message,
        // ];

        // $user['to'] = "{$data['email']}";

        // Mail::send('emails/booking', $data, function ($message) use ($user) {
        //     $message->to($user['to']);
        //     $message->from('contacts@bbsmituni.com', 'BBSMIT');
        //     $message->cc('contacts@bbsmituni.com', 'BBSMIT');
        //     $message->subject('Confirmation: Your Message Received by BBSMIT');
        // });

        $contact_obj = new BookTour;
        $contact_obj->name   = $request->name;
        $contact_obj->email  = $request->email;
        $contact_obj->phone = $request->phone;
        $contact_obj->tour_date = $request->tour_date;
        $contact_obj->tour_name = $request->tour_name;
        $contact_obj->message = $request->message;
        $contact_obj->save();

        return back()->with('success', 'Booking Request Submitted Successfully!');
    }
}
