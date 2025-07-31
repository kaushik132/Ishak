@extends('dashboard.layouts.main')
@section('main.section')
    <!-- hero section  -->
    <section id="hero-section" class="tour-details-hero-section px-7 lg:px-14"
        style="background-image: url('{{ url('uploads/' . $tourData->thumnail_image) }}');">
        <h1 class="text-white heading font-semibold lg:text-[62px] text-[28px] text-center lg:w-[60%] mx-auto"></h1>
    </section>

    <!-- explore palaces section -->
    <section class="px-7 lg:px-14 pt-5">
        <div class="grid grid-cols-1 lg:grid-cols-4 gap-[14px]">
            <!-- Left Side Large Image -->
            <div class="col-span-3 hidden lg:block">
                <img data-index="0" src="{{ url('uploads/' . $tourData->banner_image) }}" alt="Large Image"
                    class="w-full h-full cursor-pointer gallery-img object-cover rounded-xl" />
            </div>

            <div class="col-span-1 flex flex-col gap-[14px]">


                @if (is_array($tourData->gallery))
                    @foreach ($tourData->gallery as $index => $image)
                        <img data-index="{{ $index + 1 }}" src="{{ url('uploads/' . $image) }}"
                            alt="Gallery Image {{ $index + 1 }}"
                            class="w-full gallery-img cursor-pointer h-[224px] object-cover" />
                    @endforeach
                @endif






                {{-- <img
            data-index="2"
            src="{{url('images/indian-landscape.jpg')}}"
            alt="Small img 2"
            class="w-full gallery-img cursor-pointer h-[224px] object-cover"
          /> --}}

                {{-- <div class="relative w-full"> --}}
                {{-- <img
            data-index="3"
              src="{{url('images/royal-gaitor.jpg')}}"
              alt="Small img 3"
              class="w-full gallery-img cursor-pointer h-[224px] object-cover"
            /> --}}
                {{-- <a
              href="{{url('gallery')}}"
              class="text-white absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 font-semibold"
            >
              View All
            </a>
          </div> --}}
            </div>
        </div>
        <!-- Explore Section -->
        <div class="lg:flex justify-between items-center mb-10">
            <div class="hidden lg:block">
                <h2 class="text-[32px] font-semibold">
                    Explore the Royal City of Jaipur
                </h2>
                <p>
                    <span class="font-semibold">2 Days</span> |
                    <span class="font-semibold">Private Tour</span> |
                    <span class="font-semibold">From ₹4500</span>
                </p>
            </div>

            <div>
                <button onclick="document.getElementById('bookingModal').classList.remove('hidden')"
                    class="bg-[#A95C32] mt-4 lg:mt-0 w-full text-white text-[15px] font-semibold lg:px-6 py-2 rounded-lg">
                    Book Now
                </button>
            </div>
        </div>

        <!-- Booking Modal -->
        <div id="bookingModal" class="hidden fixed inset-0 bg-black/70 flex items-center justify-center z-50">
            <div class="bg-white w-[500px] rounded-lg p-6 relative px-8 py-5">
                <h2 class="text-[22px] font-semibold">Book This Tour</h2>

                <form action="{{ route('Bookyour') }}" method="post" class="mt-4">
                    @csrf
                    <div>
                        <label class="font-semibold text-[15px]">Full Name</label>
                        <input  type="text" name="name"
                        oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                            class="mt-1 border border-gray-300 rounded-md text-[12px] p-2 w-full"
                            placeholder="Your Full Name" />
                    </div>

                    <div class="mt-3">
                        <label class="font-semibold text-[15px]">Email Address</label>
                        <input type="email" name="email"
                            class="mt-1 border border-gray-300 rounded-md text-[12px] p-2 w-full"
                            placeholder="Your Email Id" />
                    </div>

                    <div class="mt-3">
                        <label class="font-semibold text-[15px]">Phone Number</label>
                        <input type="text" name="phone" maxlength="10"
                        oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                            class="mt-1 border border-gray-300 rounded-md text-[12px] p-2 w-full"
                            placeholder="Your Phone Number" />
                    </div>

                    <div class="mt-3">
                        <label class="font-semibold text-[15px]">Tour Date</label>
                        <input type="date" name="tour_date"
                            class="mt-1 border border-gray-300 rounded-md text-[12px] p-2 w-full"
                            placeholder="Select Tour Date" />
                    </div>

                    <div class="mt-3">
                        <label class="font-semibold text-[15px]">Tour Name</label>
                        <input  type="text" name="tour_name" value="{{ $tourData->title }}" readonly
                            class="mt-1 border border-gray-300 rounded-md text-[12px] p-2 w-full"  />
                    </div>

                    <div class="mt-3">
                        <label class="font-semibold text-[15px]">Additional Notes </label>

                        <textarea name="message" class="mt-1 border resize-none h-[100px] border-gray-300 rounded-md text-[12px] p-2 w-full"
                            placeholder="Add any special request or Question...."></textarea>
                    </div>

                    <div class="mt-3">
                        <button
                                type="submit"
                            class="bg-[#A95C32] text-white w-full text-[15px] font-semibold py-2 rounded-lg">
                            Submit Booking
                        </button>
                    </div>
                </form>

                <div>
                    <button onclick="document.getElementById('bookingModal').classList.add('hidden')"
                        class="bg-[#4D4D4D7A] h-[50px] w-[50px] rounded-full absolute -top-6 left-1/2 -translate-x-1/2">
                        <i class="fa-solid fa-xmark text-white text-[20px]"></i>
                    </button>
                </div>
            </div>
        </div>

        <div class="mt-5">
            <h2 class="text-[17px] lg:text-[26px] font-semibold">Tour Overview</h2>
            <p class="text-[12px] lg:text-[16px] font-semibold mt-2">
                {!! $tourData->description !!}

            </p>
        </div>

        <div class="mt-5">
            <h2 class="text-[17px] lg:text-[26px] font-semibold">Itinerary</h2>

            <div>

                @foreach ($tourdetails as $detail)
                    <div class="lg:flex items-center mt-6 rounded-full px-8 py-7 bodrer-[#DCDCDC] lg:border">
                        {{-- <div class="lg:w-[53%] w-full">
              <img
                class="w-full lg:h-[180px] lg:w-[180px] object-cover lg:rounded-full"
                src="{{url('images/indian-city.jpg')}}"
                alt=""
              />
            </div> --}}

                        <div>
                            <h2 class="text-[14px] mt-5 lg:mt-0 lg:text-[24px] font-semibold">
                                {{ $detail->name }}
                            </h2>
                            <p class="text-[10px] lg:text-[16px] font-semibold mt-2">
                                {{ $detail->description }}
                            </p>
                        </div>
                    </div>
                @endforeach



            </div>
        </div>

        <div class="mt-5">
            <h2 class="text-[17px] lg:text-[26px] font-semibold">Inclusions</h2>
            <p class="font-semibold text-[12px] lg:text-[16px] -mt-1">
                Covered in your tour package
            </p>

            <div class="grid grid-cols-2 lg:grid-cols-5 gap-7">

              @foreach ($inclusions as $inclusion)
                  
            
                <div class="col-span-1">
                    <div class="border border-[#DCDCDC] rounded-[16px] p-4 mt-5">
                        <div
                            class="bg-[#A95C32] h-[65px] w-[65px] lg:h-[80px] lg:w-[80px] rounded-full flex justify-center items-center">
                            <img class="h-8 w-8" src="{{url('uploads/'.$inclusion->image)}}" alt="" />
                        </div>

                        <div class="ml-2 mt-2">
                            <h2 class="text-[15px] lg:text-[19px] font-semibold">
                               {{$inclusion->name}}
                            </h2>
                            <p class="font-semibold text-[11px] lg:text-[13px]">
                               {{$inclusion->content}}
                            </p>
                        </div>
                    </div>
                </div>
                  @endforeach

                
            </div>
        </div>

        <div class="mt-10">
            <h2 class="text-[17px] lg:text-[26px] font-semibold">Exclusion</h2>
            <p class="font-semibold text-[12px] lg:text-[16px] -mt-1">
                Covered in your tour package
            </p>

            <div class="grid grid-cols-2 lg:grid-cols-5 gap-7">
@foreach ($exclusions as $exclusion)
    

                <div class="col-span-1">
                    <div class="border border-[#DCDCDC] rounded-[16px] p-4 mt-5">
                        <div
                            class="bg-[#A95C32] h-[65px] w-[65px] lg:h-[80px] lg:w-[80px] rounded-full flex justify-center items-center">
                            <img class="h-8 w-8" src="{{url('uploads/'.$exclusion->image)}}" alt="" />
                        </div>

                        <div class="ml-2 mt-2">
                            <h2 class="text-[15px] lg:text-[19px] font-semibold">
                                {{$exclusion->name}}
                            </h2>
                            <p class="font-semibold text-[11px] lg:text-[13px]">
                                {{$exclusion->content}}
                            </p>
                        </div>
                    </div>
                </div>
                @endforeach

       


            </div>
        </div>
    </section>

    <section class="px-7 lg:px-14 py-10">
        <div class="mb-8">
            <h2 class="text-[18px] lg:text-[26px] font-semibold">
                Recommendation Tour & Packages
            </h2>
            <p class="-mt-1 lg:text-[16px] text-[12px]">
                Explore majestic forts, vibrant bazaars, and timeless traditions
                across the land of kings.
            </p>
        </div>
        <div class="swiper mySwiper" id="tourSwiper">
            <div class="swiper-wrapper">
                <!-- Slide Start -->
                @foreach ($alltour as $alltours)
                    
               
                <div class="swiper-slide">
                    <div class="bg-white rounded-[12px] overflow-hidden slide">
                        <img src="{{url('uploads/'.$alltours->thumnail_image)}}" alt="Amber Fort"
                            class="w-full h-[300px] object-cover" />

                        <div class="p-2 space-y-3">
                            <h2 class="text-xl font-semibold text-gray-800">
                                {{ $alltours->title }}
                            </h2>
                            <p class="text-gray-600 text-sm">
                              {{ \Illuminate\Support\Str::limit($alltours->short_description, 50) }}

                            </p>

                            <div class="flex justify-between items-center pt-2">
                                <h3 class="text-lg font-semibold flex items-center gap-1 text-gray-800">
                                    <i class="fa-solid fa-indian-rupee-sign"></i>
                                    <span class="money leading-none">{{$alltours->price}}</span>
                                </h3>
                            <a href="{{url('tour-details/'.$alltours->slug)}}" class="text-white">
                                <button type="submit" class="book-btn px-3 py-1">
                                    Explore Now
                                </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                 @endforeach



                <!-- Slide End -->
            </div>
        </div>
    </section>


      @if(session('success'))
    <script>
        $(document).ready(function() {
            Toastify({
                text: '{{session('success')}}',
                duration: 3000,
                close: true,
                gravity: "bottom", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                style: {
                    background: "linear-gradient(to right, #00b09b, #96c93d)",
                },
                onClick: function(){} // Callback after click
            }).showToast();
        });
    </script>
@endif

@endsection
