@extends('dashboard.layouts.main')
@section('main.section')
   <!-- hero section  -->
    <section id="hero-section" class="hero-section px-7 lg:px-14">
      <div>
        <div>
          <h1
            class="text-white heading font-semibold lg:text-[62px] text-[28px] text-center lg:w-[60%] mx-auto"
          >
            Creating Moments, One Trip at a Time
          </h1>
        </div>

        <div class="mt-16 relative">
          <div class="flex justify-between">
            <div class="w-[40%] hidden lg:block">
              <p class="text-white text-[17px] w-[80%]">
                Explore, experience, and embrace the world with carefully
                curated tour packages.
              </p>

              <div class="flex gap-3 items-center mt-5">
                <div
                  class="flex border border-white py-1 px-1.5 rounded-[30px]"
                >
                  <img
                    class="w-8 rounded-full h-8 object-cover"
                    src="{{url('assets/images/user-1.png')}}"
                    alt=""
                  />
                  <img
                    class="w-8 rounded-full h-8 -ml-2 object-cover"
                    src="{{url('assets/images/user-2.png')}}"
                    alt=""
                  />
                  <img
                    class="w-8 rounded-full h-8 -ml-2 object-cover"
                    src="{{url('assets/images/user-3.png')}}"
                    alt=""
                  />
                  <img
                    class="w-8 rounded-full h-8 -ml-2 object-cover"
                    src="{{url('assets/images/user-4.png')}}"
                    alt=""
                  />

                  <div
                    class="w-8 h-8 bg-[#808080] -ml-2 opacity-90 text-white text-[10px] font-semibold flex justify-center pt-2 rounded-full"
                  >
                    +32
                  </div>
                </div>

                <div>
                  <p class="text-white font-lighter text-[11px]">
                    People Reviews
                  </p>
                </div>
              </div>

              <div class="mt-4">
                <p class="text-[13px] w-[70%] text-white">
                  Read the genuine experiences of travelers who explored the
                  world with us. Their words, their experiences — find out why
                  travelers love exploring with us
                </p>
              </div>

              <div class="mt-8 flex gap-3 items-center">
                <button
                  class="bg-[#C4693AA6] px-7 pt-2.5 pb-3 rounded-[30px] text-white"
                >
                  Book Now
                </button>
                <button
                  class="h-11 rotate-[330deg] rounded-full w-11 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>

              <div class="mt-8">
                <ul class="flex justify-between text-white">
                  <li>
                    <a href="#" class="text-[14px] font-semibold"
                      >+91 987689969</a
                    >
                  </li>
                  <li>
                    <a href="#" class="text-[14px] font-semibold"
                      >Ishak@gmail.com</a
                    >
                  </li>
                  <li>
                    <a href="#" class="text-[14px] font-semibold"
                      >24-B-2, Jay colony, jay singh pura khor,</a
                    >
                  </li>
                </ul>
              </div>
            </div>
            <div
              id="heroSlider"
              class="swiper w-full lg:w-[45%] m-0 h-[300px] -mr-12"
            >
              <div class="swiper-wrapper">
                <!-- Slide 1 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-1.jpg')}}"
                    alt=""
                  />
                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>

                <!-- Slide 2 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-2.jpg')}}"
                    alt=""
                  />

                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>

                <!-- Slide 3 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-3.jpg')}}"
                    alt=""
                  />

                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>

                <!-- Slide 1 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-1.jpg')}}"
                    alt=""
                  />
                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>

                <!-- Slide 2 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-2.jpg')}}"
                    alt=""
                  />

                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>

                <!-- Slide 3 -->
                <div class="swiper-slide w-[23%] group">
                  <img
                    class="h-[260px] group-[.swiper-slide-active]:h-[170px] transition-all duration-300 object-cover rounded-lg"
                    src="{{url('assets/images/slider-item-3.jpg')}}"
                    alt=""
                  />

                  <div class="hidden group-[.swiper-slide-active]:block">
                    <p
                      class="text-[12px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      Explore the Enchanting Landscapes of Ladakh
                    </p>
                    <p
                      class="text-[9px] text-white font-semibold hidden group-[.swiper-slide-active]:block"
                    >
                      An unforgettable journey through the land of high passes,
                      pristine lakes, and rugged beauty.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div
            class="w-[100%] lg:w-[42%] h-[5px] right-0 bg-[#777] rounded-full -mt-8 absolute overflow-hidden"
          >
            <div
              id="progress-bar"
              class="h-full w-[33.33%] bg-[#A95C32] transition-all duration-500 rounded-full"
            ></div>
          </div>
        </div>
      </div>
    </section>

    <!-- jaipurHeritage section -->
    <section class="jaipurHeritageSection px-7 lg:px-14">
      <div class="text-center">
        <button
          class="bg-[#A95C32] text-white px-4 py-1 rounded-[30px] text-[10px] lg:text-[13px]"
        >
          Destination
        </button>
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Experience The Royal Charm of Jaipur
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Handpicked places loved by travelers worldwide — whe re will you go
          next?
        </p>

        <div class="text-right mb-3">
          <a href="#" class="font-semibold text-[#A95C32]">Explore More</a>
        </div>
      </div>

      <div class="grid lg:grid-cols-2 grid-cols-1 gap-5">
        <div class="col-span-1">
          <div class="albert-hall-bg flex flex-col justify-end">
            <div class="flex justify-between items-end">
              <div>
                <h2 class="text-white text-[22px] lg:pl-2">Albert Hall</h2>

                <div class="flex gap-3 items-center mt-4">
                  <div
                    class="flex border border-white py-1 px-1.5 rounded-[30px]"
                  >
                    <img
                      class="w-8 rounded-full h-8 object-cover"
                      src="{{url('assets/images/user-1.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-2.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-3.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-4.png')}}"
                      alt=""
                    />

                    <div
                      class="w-8 h-8 bg-[#808080] -ml-2 opacity-90 text-white text-[10px] font-semibold flex justify-center pt-2 rounded-full"
                    >
                      +32
                    </div>
                  </div>

                  <div>
                    <p class="text-white font-lighter text-[11px]">
                      People Reviews
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <p class="text-[12px] lg:w-[55%] text-white">
                    Read the genuine experiences of travelers who explored the
                    world with us. Their words, their experiences — find out why
                    travelers love exploring with us
                  </p>
                </div>
              </div>

              <div class="hidden lg:block">
                <button
                  class="h-11 rotate-[330deg] rounded-full w-11 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
        <div class="col-span-1">
          <div class="hawa-mahal-bg flex flex-col justify-end">
            <div class="flex justify-between items-end">
              <div>
                <h2 class="text-white text-[22px] lg:pl-2">Hawa Mahal</h2>

                <div class="flex gap-3 items-center mt-4">
                  <div
                    class="flex border border-white py-1 px-1.5 rounded-[30px]"
                  >
                    <img
                      class="w-8 rounded-full h-8 object-cover"
                      src="{{url('assets/images/user-1.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-2.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-3.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-4.png')}}"
                      alt=""
                    />

                    <div
                      class="w-8 h-8 bg-[#808080] -ml-2 opacity-90 text-white text-[10px] font-semibold flex justify-center pt-2 rounded-full"
                    >
                      +32
                    </div>
                  </div>

                  <div>
                    <p class="text-white font-lighter text-[11px]">
                      People Reviews
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <p class="text-[12px] lg:w-[55%] text-white">
                    Read the genuine experiences of travelers who explored the
                    world with us. Their words, their experiences — find out why
                    travelers love exploring with us
                  </p>
                </div>
              </div>

              <div class="hidden lg:block">
                <button
                  class="h-11 rotate-[330deg] rounded-full w-11 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>
            </div>
          </div>

          <div class="patrika-gate-bg flex flex-col justify-end">
            <div class="flex justify-between items-end">
              <div>
                <h2 class="text-white text-[22px] lg:pl-2">Patrika Gate</h2>

                <div class="flex gap-3 items-center mt-4">
                  <div
                    class="flex border border-white py-1 px-1.5 rounded-[30px]"
                  >
                    <img
                      class="w-8 rounded-full h-8 object-cover"
                      src="{{url('assets/images/user-1.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-2.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-3.png')}}"
                      alt=""
                    />
                    <img
                      class="w-8 rounded-full h-8 -ml-2 object-cover"
                      src="{{url('assets/images/user-4.png')}}"
                      alt=""
                    />

                    <div
                      class="w-8 h-8 bg-[#808080] -ml-2 opacity-90 text-white text-[10px] font-semibold flex justify-center pt-2 rounded-full"
                    >
                      +32
                    </div>
                  </div>

                  <div>
                    <p class="text-white font-lighter text-[11px]">
                      People Reviews
                    </p>
                  </div>
                </div>

                <div class="mt-4">
                  <p class="text-[12px] lg:w-[55%] text-white">
                    Read the genuine experiences of travelers who explored the
                    world with us. Their words, their experiences — find out why
                    travelers love exploring with us
                  </p>
                </div>
              </div>

              <div class="hidden lg:block">
                <button
                  class="h-11 rotate-[330deg] rounded-full w-11 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- whyChooseUs section -->

    <section class="whyChooseUsSection px-7 lg:px-14">
      <div class="text-center mb-14">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Why Choose Us for Your Next Adventure?
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Handpicked places loved by travelers worldwide — where will you go
          next?
        </p>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-4 gap-5">
        <div class="col-span-1">
          <div
            class="bg-[#F9F9F9] border border-[#CFCFCF] rounded-[16px] pt-6 pb-12 px-7"
          >
            <div
              class="shadow-lg bg-[#A95C32] h-[80px] w-[80px] flex justify-center items-center rounded-full"
            >
              <img class="w-8" src="{{url('assets/images/rupee-icon.png')}}" alt="" />
            </div>

            <div class="mt-2">
              <h2 class="text-black font-semibold">Value For Money</h2>
              <p class="text-[14px] text-black mt-2">
                We understand the value of money and therefore provide the
                services as per expectaions.
              </p>
            </div>
          </div>
        </div>
        <div class="col-span-1">
          <div
            class="bg-[#F9F9F9] border border-[#CFCFCF] rounded-[16px] pt-6 pb-12 px-7"
          >
            <div
              class="shadow-lg bg-[#A95C32] h-[80px] w-[80px] flex justify-center items-center rounded-full"
            >
              <i class="fa-solid fa-calendar-days text-white text-[32px]"></i>
            </div>

            <div class="mt-2">
              <h2 class="text-black font-semibold">Fast Booking</h2>
              <p class="text-[14px] text-black mt-2">
                We understand the value of money and therefore provide the
                services as per expectaions.
              </p>
            </div>
          </div>
        </div>

        <div class="col-span-1">
          <div
            class="bg-[#F9F9F9] border border-[#CFCFCF] rounded-[16px] pt-6 pb-12 px-7"
          >
            <div
              class="shadow-lg bg-[#A95C32] h-[80px] w-[80px] flex justify-center items-center rounded-full"
            >
              <i class="fa-solid fa-user-tie text-white text-[30px]"></i>
            </div>

            <div class="mt-2">
              <h2 class="text-black font-semibold">Expert Guidance</h2>
              <p class="text-[14px] text-black mt-2">
                We understand the value of money and therefore provide the
                services as per expectaions.
              </p>
            </div>
          </div>
        </div>

        <div class="col-span-1">
          <div
            class="bg-[#F9F9F9] border border-[#CFCFCF] rounded-[16px] pt-6 pb-12 px-7"
          >
            <div
              class="shadow-lg bg-[#A95C32] h-[80px] w-[80px] flex justify-center items-center rounded-full"
            >
              <i class="fa-solid fa-headset text-white text-[32px]"></i>
            </div>

            <div class="mt-2">
              <h2 class="text-black font-semibold">Customer Support</h2>
              <p class="text-[14px] text-black mt-2">
                We understand the value of money and therefore provide the
                services as per expectaions.
              </p>
            </div>
          </div>
        </div>
      </div>

      <div class="grid grid-cols-4 gap-5 mt-10">
        <div class="col-span-1">
          <div class="text-center">
            <h2 class="text-[22px] lg:text-[28px] font-bold">2.5M+</h2>
            <p class="text-[10px] lg:text-[14px] text-[#141219]">
              Engaged Learners
            </p>
          </div>
        </div>

        <div class="col-span-1">
          <div class="text-center">
            <h2 class="text-[22px] lg:text-[28px] font-bold">5K+</h2>
            <p class="text-[10px] lg:text-[14px] text-[#141219]">
              Courses Available
            </p>
          </div>
        </div>

        <div class="col-span-1">
          <div class="text-center">
            <h2 class="text-[22px] lg:text-[28px] font-bold">800+</h2>
            <p class="text-[10px] lg:text-[14px] text-[#141219]">
              Expert Mentors
            </p>
          </div>
        </div>

        <div class="col-span-1">
          <div class="text-center">
            <h2 class="text-[22px] lg:text-[28px] font-bold">2.5K+</h2>
            <p class="text-[9px] lg:text-[14px] text-[#141219]">
              Subject Categories
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- gallery section -->
    <section class="gallerySection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Gallery of Unforgettable Experiences
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Explore Trending Locations
        </p>

        <div class="text-right mb-3">
          <a href="./gallery.html" class="font-semibold text-[#A95C32]"
            >Explore More</a
          >
        </div>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-4">
        <div class="col-span-1">
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img cursor-pointer lg:h-[470px] object-cover"
              data-index="0"
              src="{{url('assets/images/royal-gaitor.jpg')}}"
              alt=""
            />

            <span
              class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
              >Royal Gaitor</span
            >
          </div>
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img cursor-pointer object-cover mt-4"
              data-index="1"
              src="{{url('assets/images/royal-gaitor.jpg')}}"
              alt=""
            />
            <span
              class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
              >Jal Mahal</span
            >
          </div>
        </div>

        <div class="col-span-1">
          <div class="flex gap-4">
            <div>
              <div class="relative">
                <img
                  class="lg:h-[265px] h-[150px] cursor-pointer w-[190px] lg:w-[360px] object-cover rounded-[16px] gallery-img"
                  data-index="2"
                  src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                  alt=""
                />
                <span
                  class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                  >Amer Fort</span
                >
              </div>

              <div class="relative">
                <img
                  class="lg:h-[265px] h-[150px] cursor-pointer w-[190px] lg:w-[360px] object-cover mt-4 rounded-[16px] gallery-img"
                  data-index="3"
                  src="{{url('assets/images/hawa-mahal.jpg')}}"
                  alt=""
                />
                <span
                  class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                  >Hawa Mahal</span
                >
              </div>
            </div>

            <div>
              <div class="relative">
                <img
                  class="lg:h-[545px] gallery-img cursor-pointer lg:w-[320px] w-[200px] h-[316px] object-cover rounded-[16px]"
                  src="{{url('assets/images/patrika-gate.jpg')}}"
                  alt=""
                  data-index="4"
                />
                <span
                  class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                  >Patrika Gate</span
                >
              </div>
            </div>
          </div>

          <div class="mt-4">
            <div class="relative">
              <img
                class="w-full gallery-img h-[200px] cursor-pointer lg:h-[313px] object-cover rounded-[16px]"
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                data-index="5"
                alt=""
              />
              <span
                class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                >Pnna Minakund</span
              >
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- review section -->
    <section class="reviewSection my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Voices of our customers
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Hear the trusted feedback from customers who have put their faith in
          us
        </p>
      </div>
      <div class="swiper mySwiper2">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <!-- Add more swiper-slide divs here for more testimonials -->
        </div>
      </div>

      <div class="swiper mt-10 mySwiper2">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="{{url('assets/images/customer-1.png')}}"
                    alt=""
                  />
                  <div>
                    <p class="text-[15px] font-semibold">Harry Maguire</p>
                    <p class="text-[15px]">CFO, Company</p>
                  </div>
                </div>
                <div>
                  <ul class="flex gap-1">
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li><i class="fa-solid fa-star text-[#A95C32]"></i></li>
                    <li>
                      <i class="fa-solid fa-star-half text-[#A95C32]"></i>
                    </li>
                    <li><i class="fa-solid fa-star text-[#DCDCDC]"></i></li>
                  </ul>
                </div>
              </div>

              <div>
                <i
                  class="fa-solid fa-quote-left text-[#A95C32] text-[38px]"
                ></i>
                <p class="mt-2 font-semibold text-[14px]">
                  UI Wiki transformed our design process! The templates are
                  modern, user-friendly, and saved us countless hours.
                </p>
              </div>
            </div>
          </div>
          <!-- Add more swiper-slide divs here for more testimonials -->
        </div>
      </div>
    </section>

    <!-- tour packages section -->
    <section class="tourPackagesSection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Explore Our Exclusive Tour Packages
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Handpicked places loved by travelers worldwide — where will you go
          next?
        </p>

        <div class="text-right mb-3">
          <a href="#" class="font-semibold text-[#A95C32]">Explore More</a>
        </div>
      </div>
      <div class="swiper mySwiper4">
        <div class="swiper-wrapper">
          <!-- Slide Start -->
          <div class="swiper-slide">
            <div class="border border-[#CAC9C9] rounded-xl px-3 py-3">
              <img
                class="rounded-xl h-[370px] object-cover"
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt=""
              />
              <div class="pt-2">
                <h3 class="font-semibold">Amber Fort & City Place</h3>
                <p class="text-[10px] font-semibold">
                  A glimpse into the breathtaking places unforgettable...
                </p>
                <div class="flex justify-between items-center my-3">
                  <h1 class="font-semibold text-[19px]">₹11,000</h1>
                  <a
                    href="./tour-details.html"
                    class="border-[#A95C32] border text-[#A95C32] text-[14px] font-semibold px-6 py-2 rounded-[30px]"
                  >
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="border border-[#CAC9C9] rounded-xl px-3 py-3">
              <img
                class="rounded-xl h-[370px] object-cover"
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt=""
              />
              <div class="pt-2">
                <h3 class="font-semibold">Amber Fort & City Place</h3>
                <p class="text-[10px] font-semibold">
                  A glimpse into the breathtaking places unforgettable...
                </p>
                <div class="flex justify-between items-center my-3">
                  <h1 class="font-semibold text-[19px]">₹11,000</h1>
                  <a
                    href="./tour-details.html"
                    class="border-[#A95C32] border text-[#A95C32] text-[14px] font-semibold px-6 py-2 rounded-[30px]"
                  >
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="border border-[#CAC9C9] rounded-xl px-3 py-3">
              <img
                class="rounded-xl h-[370px] object-cover"
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt=""
              />
              <div class="pt-2">
                <h3 class="font-semibold">Amber Fort & City Place</h3>
                <p class="text-[10px] font-semibold">
                  A glimpse into the breathtaking places unforgettable...
                </p>
                <div class="flex justify-between items-center my-3">
                  <h1 class="font-semibold text-[19px]">₹11,000</h1>
                  <a
                    href="./tour-details.html"
                    class="border-[#A95C32] border text-[#A95C32] text-[14px] font-semibold px-6 py-2 rounded-[30px]"
                  >
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="border border-[#CAC9C9] rounded-xl px-3 py-3">
              <img
                class="rounded-xl h-[370px] object-cover"
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt=""
              />
              <div class="pt-2">
                <h3 class="font-semibold">Amber Fort & City Place</h3>
                <p class="text-[10px] font-semibold">
                  A glimpse into the breathtaking places unforgettable...
                </p>
                <div class="flex justify-between items-center my-3">
                  <h1 class="font-semibold text-[19px]">₹11,000</h1>
                  <a
                    href="./tour-details.html"
                    class="border-[#A95C32] border text-[#A95C32] text-[14px] font-semibold px-6 py-2 rounded-[30px]"
                  >
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Slide End -->

          <!-- Duplicate the above .swiper-slide block for more slides -->
        </div>
      </div>
    </section>

@endsection