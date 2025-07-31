@extends('dashboard.layouts.main')
@section('main.section')
   <!-- hero section  -->
    <section id="hero-section" class="contact-hero-section px-7 lg:px-14">
      <h1
        class="text-white heading font-semibold lg:text-[62px] text-[28px] text-center lg:w-[60%] mx-auto"
      >
        Contact
      </h1>
    </section>

    <!-- contact form section -->
    <section class="contactFormSection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Contact Us
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          We’re here to help—share your thoughts or <br />
          inquiries with us, and we’ll get back to you soon!
        </p>
      </div>

      <div class="grid lg:grid-cols-4 grid-cols-1 gap-5">
        <div class="col-span-1">
          <div class="left-section">
            <img
              src="{{url('images/sandstone.jpg')}}"
              alt="Gateway of India"
              class="img-fluid w-full"
            />
          </div>
        </div>

        <div class="col-span-1 lg:col-span-2">
          <div class="form-section">
          <center>
            @if(session('success'))
            <div class="alert alert-success" style="color: green; font-weight: bold;">
              {{ session('success') }}
            </div>
          @endif
          </center>
     
    
            <form action="{{route('ContactUs')}}" method="POST" >
              @csrf
              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Name</label>
                <input
                  type="text"
                  name="name"
                  oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Name"
                />
                <span class="text-red-500 text-xs">
                  @error('name')
                    {{ $message }}
                  @enderror
                </span>
              </div>

              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Email</label>
                <input
                  type="email"
                  name="email"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Email"
                />
                <span class="text-red-500 text-xs">
                  @error('email')
                    {{ $message }}
                  @enderror 
                </span>
              </div>
              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Phone no.</label>
                <input
                  type="text"
                  name="phone"
                  maxlength="10"
                oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Phone no."
                />
                <span class="text-red-500 text-xs">
                  @error('phone')
                    {{ $message }}
                  @enderror
                </span>
              </div>

              <div class="form-group mb-4">
                <label class="text-[15px] font-semibold">Message</label>
                <textarea
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  name="message"
                  rows="5 mt-1"
                  placeholder="I'd love to learn more about your services"
                ></textarea>
                <span class="text-red-500 text-xs">
                  @error('message')
                    {{ $message }}
                  @enderror
                </span>
              </div>

              <button
                type="submit"
                class="bg-[#A95C32] w-full py-2.5 text-white rounded-lg font-semibold"
              >
                Submit Message
              </button>
            </form>
          </div>
        </div>

        <div class="col-span-1">
          <div class="right-section h-100">
            <div class="info-card mb-3">
              <i class="fas fa-envelope"></i>
              <div class="info-text">
                <strong>Email</strong>
                <p>{{$info->email}}</p>
              </div>
            </div>

            <div class="info-card mb-3">
              <i class="fas fa-phone"></i>
              <div class="info-text">
                <strong>Phone</strong>
                <p>Office: {{$info->phone}}</p>
              </div>
            </div>

            <div class="info-card mb-3">
              <i class="fas fa-map-marker-alt"></i>
              <div class="info-text">
                <strong>Location</strong>
                <p>Office : {{$info->address}}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <iframe
        src="{{$info->map}}"
        width="100%"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"
      >
      </iframe>
    </section>
@endsection