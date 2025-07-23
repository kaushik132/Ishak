@extends('dashboard.layouts.main')
@section('main.section')
   <!-- hero section  -->
    <section id="hero-section" class="tour-details-hero-section px-7 lg:px-14">
      <h1
        class="text-white heading font-semibold lg:text-[62px] text-[28px] text-center lg:w-[60%] mx-auto"
      ></h1>
    </section>

    <div class="text-center my-14">
      <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
        First Day Tour in Jaipur
      </h2>

      <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
        Explore stunning moments from our unforgettable journeys.
      </p>
    </div>

    <section class="px-7 lg:px-14">
      <div class="lg:mb-8 mb-6">
        <h2 class="text-[18px] lg:text-[26px] font-semibold">
          Trending Tour & Packages
        </h2>
        <p class="-mt-1 text-[12px] lg:text-[16px]">
          Explore majestic forts, vibrant bazaars, and timeless traditions
          across the land of kings.
        </p>
      </div>
      <div class="swiper mySwiper" id="tourSwiper">
        <div class="swiper-wrapper">
          <!-- Slide Start -->
          <div class="swiper-slide">
            <div class="bg-white rounded-[12px] overflow-hidden slide">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide End -->
        </div>
      </div>
    </section>

    <!-- captured moment section -->
    <section class="capturedMomentSection px-7 lg:px-14 my-14">
      <div class="lg:mb-8 mb-6">
        <h2 class="text-[18px] lg:text-[26px] font-semibold">
          Trending Tour & Packages
        </h2>
        <p class="-mt-1 text-[12px] lg:text-[16px]">
          Explore majestic forts, vibrant bazaars, and timeless traditions
          across the land of kings.
        </p>
      </div>

      <div id="videoSlider" class="swiper  mySwiperVideoSection mx-auto rounded-[16px]">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <img
              src="{{url('assets/images/hawa-mahal.jpg')}}"
              class="h-[400px] gallery-img lg:h-[600px] sliderImage w-full object-cover rounded-[16px]"
              data-index="0"
              alt=""
            />
            <i
              class="fa-solid fa-play absolute cursor-pointer top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 flex justify-center text-[18px] items-center text-white bg-[#63636394] h-[65px] w-[65px] rounded-full"
            ></i>

            <div
              class="flex justify-between items-center absolute bottom-[30px] left-[20px] lg:left-[70px] w-[90%] mx-auto px-8"
            >
              <div>
                <h2 class="text-white text-[26px] font-semibold">
                  Albert Hall
                </h2>
                <p class="text-white text-[14px] font-semibold mt-4 lg:w-[45%]">
                  Read the genuine experiences of travelers who explored the
                  world with us. Their words, their experiences — find out why
                  travelers love exploring with us
                </p>
              </div>

              <div class="hidden lg:block">
                <button
                  class="h-12 rotate-[330deg] rounded-full w-12 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="swiper-slide">
            <img
              src="{{url('assets/images/patrika-gate.jpg')}}"
              class="h-[400px] gallery-img lg:h-[600px] sliderImage w-full object-cover rounded-[16px]"
              alt=""
              data-index="1"
            />
            <i
              class="fa-solid fa-play absolute cursor-pointer top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 flex justify-center text-[18px] items-center text-white bg-[#63636394] h-[65px] w-[65px] rounded-full"
            ></i>

            <div
              class="flex justify-between items-center absolute bottom-[30px] left-[20px] lg:left-[70px] w-[90%] mx-auto px-8"
            >
              <div>
                <h2 class="text-white text-[26px] font-semibold">
                  Albert Hall
                </h2>
                <p
                  class="text-white text-[12px] lg:text-[14px] font-semibold mt-4 lg:w-[45%]"
                >
                  Read the genuine experiences of travelers who explored the
                  world with us. Their words, their experiences — find out why
                  travelers love exploring with us
                </p>
              </div>

              <div class="hidden lg:block">
                <button
                  class="h-12 rotate-[330deg] rounded-full w-12 border border-white"
                >
                  <i class="fa-solid text-white fa-arrow-right"></i>
                </button>
              </div>
            </div>
          </div>
        </div>

        <!-- Navigation buttons -->
        <!-- Left Arrow -->
        <div class="swiper-button-prev custom-arrow text-white">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="w-4 h-4"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M15 19l-7-7 7-7"
            />
          </svg>
        </div>

        <!-- Right Arrow -->
        <div class="swiper-button-next custom-arrow text-white">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="w-4 h-4"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M9 5l7 7-7 7"
            />
          </svg>
        </div>
      </div>
    </section>

    <section class="px-7 pt-14 lg:px-14">
      <div class="mb-6 lg:mb-8">
        <h2 class="text-[18px] lg:text-[26px] font-semibold">
          Half Day Jaipur City Tour
        </h2>
        <p class="-mt-1 text-[12px] lg:text-[16px]">
          Explore majestic forts, vibrant bazaars, and timeless traditions
          across the land of kings.
        </p>
      </div>
      <div class="swiper mySwiper" id="tourSwiper">
        <div class="swiper-wrapper">
          <!-- Slide Start -->
          <div class="swiper-slide">
            <div class="bg-white rounded-[12px] overflow-hidden slide">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide End -->
        </div>
      </div>
    </section>

    <section class="px-7 pt-14 lg:px-14">
      <div class="mb-6 lg:mb-8">
        <h2 class="text-[18px] lg:text-[26px] font-semibold">
          Jaipur Heritage Discovery – Day 1 Tour
        </h2>
        <p class="-mt-1 text-[12px] lg:text-[16px]">
          Explore majestic forts, vibrant bazaars, and timeless traditions
          across the land of kings.
        </p>
      </div>
      <div class="swiper mySwiper" id="tourSwiper">
        <div class="swiper-wrapper">
          <!-- Slide Start -->
          <div class="swiper-slide">
            <div class="bg-white rounded-[12px] overflow-hidden slide">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>
                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide End -->
        </div>
      </div>
    </section>

    <section class="px-7 pt-14 lg:px-14">
      <div class="mb-6 lg:mb-8">
        <h2 class="text-[18px] lg:text-[26px] font-semibold">
          Jaipur Cultural & Sightseeing Tour
        </h2>
        <p class="-mt-1 text-[12px] lg:text-[16px]">
          Explore majestic forts, vibrant bazaars, and timeless traditions
          across the land of kings.
        </p>
      </div>
      <div class="swiper mySwiper" id="tourSwiper">
        <div class="swiper-wrapper">
          <!-- Slide Start -->
          <div class="swiper-slide">
            <div class="bg-white rounded-[12px] overflow-hidden slide">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="bg-white slide rounded-[12px] overflow-hidden">
              <img
                src="{{url('assets/images/architecturel-city-palace.jpg')}}"
                alt="Amber Fort"
                class="w-full h-[300px] object-cover"
              />

              <div class="p-2 space-y-3">
                <h2 class="text-xl font-semibold text-gray-800">
                  Amber Fort & City Palace
                </h2>
                <p class="text-gray-600 text-sm">
                  A glimpse into the breathtaking places and unforgettable
                  memories we create.
                </p>

                <div class="flex justify-between items-center pt-2">
                  <h3
                    class="text-lg font-semibold flex items-center gap-1 text-gray-800"
                  >
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span class="money leading-none">11,000</span>
                  </h3>

                  <a href="./tour-details.html" class="book-btn px-3 py-1">
                    Book Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide End -->
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
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <div class="bg-[#F8F8F8] px-8 py-6 rounded-[16px]">
              <div class="flex justify-between items-center mb-4">
                <div class="flex gap-5 items-center">
                  <img
                    class="w-12 h-12 rounded-full"
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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
                    src="./images/customer-1.png"
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


    
<script>
  const swiper = new Swiper("#videoSlider", {
    loop: true,
    autoplay: {
      delay: 2000,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
</script>

  
   <script>
      console.log("Video Slider");
      
      const swiper2 = new Swiper(".mySwiperVideoSection", {
        slidesPerView: 1,
        spaceBetween: 0,
        autoplay: true,

        breakpoints: {
          640: {
            slidesPerView: 1,
          },
          768: {
            slidesPerView: 1,
            loop: true,
            autoplay: {
              delay: 2000,
            },
          },
          1024: {
            slidesPerView: 1,
            spaceBetween: 30,
          },
        },
      });
    </script> 
@endsection