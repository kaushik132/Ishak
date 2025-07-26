@extends('dashboard.layouts.main')
@section('main.section')
   <!-- hero section  -->
    <section id="hero-section" class="gallery-hero-section px-7 lg:px-14">
      <div>
        <div>
          <h1
            class="text-white heading font-semibold lg:text-[62px] text-[28px] text-center lg:w-[60%] mx-auto"
          >
            Gallery
          </h1>
        </div>
      </div>
    </section>

    <!-- gallery section -->
    <section class="gallerySection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Tour Memories Gallery
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Explore stunning moments from our unforgettable journeys.
        </p>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-4">
        <div class="col-span-1">
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img cursor-pointer gallery-img lg:h-[470px] object-cover"
              src="./images/royal-gaitor.jpg"
              alt=""
              data-index="0"
            />

            <span
              class="absolute top-4 right-4 cursor-pointer text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
              >Royal Gaitor</span
            >
          </div>
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img object-cover mt-4"
              src="./images/royal-gaitor.jpg"
              alt=""
              data-index="1"
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
                  class="lg:h-[265px] cursor-pointer gallery-img h-[150px] w-[190px] lg:w-[360px] object-cover rounded-[16px]"
                  src="./images/architecturel-city-palace.jpg"
                  alt=""
                  data-index="2"
                />
                <span
                  class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                  >Amer Fort</span
                >
              </div>

              <div class="relative">
                <img
                  class="lg:h-[265px] cursor-pointer gallery-img h-[150px] w-[190px] lg:w-[360px] object-cover mt-4 rounded-[16px]"
                  src="./images/hawa-mahal.jpg"
                  alt=""
                  data-index="3"
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
                  class="lg:h-[545px] cursor-pointer gallery-img lg:w-[320px] w-[200px] h-[316px] object-cover rounded-[16px]"
                  src="./images/patrika-gate.jpg"
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
                class="w-full h-[200px] cursor-pointer gallery-img lg:h-[313px] object-cover rounded-[16px]"
                src="./images/architecturel-city-palace.jpg"
                alt=""
                data-index="5"
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

    <!-- captured moment section -->
    <section class="capturedMomentSection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Captured Moment
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Explore stunning moments from our unforgettable journeys.
        </p>
      </div>

      <div id="capturedMomentSwiper" class="swiper mx-auto rounded-[16px]">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <img
              data-index="0"
              src="./images/tourist-curring.jpg"
              class="h-[400px] lg:h-[600px] gallery-img cursor-pointer sliderImage w-full object-cover rounded-[16px]"
              alt=""
            />
          </div>

          <!-- Slide 2 -->
          <div class="swiper-slide">
            <img
              data-index="1"
              src="./images/tourist-curring.jpg"
              class="h-[400px] lg:h-[600px] gallery-img cursor-pointer sliderImage w-full object-cover rounded-[16px]"
              alt=""
            />
          </div>

          <!-- Slide 3 -->
          <div class="swiper-slide">
            <img
              data-index="2"
              src="./images/tourist-curring.jpg"
              class="h-[400px] gallery-img cursor-pointer lg:h-[600px] sliderImage w-full object-cover rounded-[16px]"
              alt=""
            />
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

    <!-- gallery section -->
    <section class="gallerySection px-7 lg:px-14 my-14">
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-4">
        <div class="col-span-1">
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img cursor-pointer gallery-img lg:h-[470px] object-cover"
              src="./images/royal-gaitor.jpg"
              alt=""
              data-index="0"
            />

            <span
              class="absolute top-4 right-4 cursor-pointer text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
              >Royal Gaitor</span
            >
          </div>
          <div class="relative">
            <img
              class="rounded-[16px] gallery-img object-cover mt-4"
              src="./images/royal-gaitor.jpg"
              alt=""
              data-index="1"
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
                  class="lg:h-[265px] cursor-pointer gallery-img h-[150px] w-[190px] lg:w-[360px] object-cover rounded-[16px]"
                  src="./images/architecturel-city-palace.jpg"
                  alt=""
                  data-index="2"
                />
                <span
                  class="absolute top-4 right-4 text-[13px] font-semibold px-3 py-1 rounded-[30px] bg-white"
                  >Amer Fort</span
                >
              </div>

              <div class="relative">
                <img
                  class="lg:h-[265px] cursor-pointer gallery-img h-[150px] w-[190px] lg:w-[360px] object-cover mt-4 rounded-[16px]"
                  src="./images/hawa-mahal.jpg"
                  alt=""
                  data-index="3"
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
                  class="lg:h-[545px] cursor-pointer gallery-img lg:w-[320px] w-[200px] h-[316px] object-cover rounded-[16px]"
                  src="./images/patrika-gate.jpg"
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
                class="w-full h-[200px] cursor-pointer gallery-img lg:h-[313px] object-cover rounded-[16px]"
                src="./images/architecturel-city-palace.jpg"
                alt=""
                data-index="5"
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

    <!-- tour moments section -->
    <section class="tourMomentsSection px-7 lg:px-14 my-14">
      <div class="text-center">
        <h2 class="text-black text-[20px] lg:text-[48px] font-[500]">
          Tour Moments Captured
        </h2>

        <p class="text-[9px] lg:text-[15px] text-[#808080] mb-7">
          Explore stunning moments from our unforgettable journeys.
        </p>
      </div>

      <div id="videoSlider2" class="swiper mx-auto">
        <div class="swiper-wrapper">
          <!-- Slide 1 -->
          <div class="swiper-slide">
            <div class="tour-trip-col flex items-center justify-center">
              <i
                class="fa-solid fa-play text-[22px] flex cursor-pointer justify-center items-center text-[#A95C32] bg-white opacity-70 h-14 w-14 rounded-full"
                data-video-url="https://www.youtube.com/embed/HcOc7P5BMi4"
              ></i>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="swiper-slide">
            <div class="tour-trip-col flex items-center justify-center">
              <i
                class="fa-solid fa-play text-[22px] flex cursor-pointer justify-center items-center text-[#A95C32] bg-white opacity-70 h-14 w-14 rounded-full"
                data-video-url="https://www.youtube.com/embed/HcOc7P5BMi4"
              ></i>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="swiper-slide">
            <div class="tour-trip-col flex items-center justify-center">
              <i
                class="fa-solid fa-play text-[22px] flex cursor-pointer justify-center items-center text-[#A95C32] bg-white opacity-70 h-14 w-14 rounded-full"
                data-video-url="https://www.youtube.com/embed/HcOc7P5BMi4"
              ></i>
            </div>
          </div>

          <!-- Slide 4 -->
          <div class="swiper-slide">
            <div class="tour-trip-col flex items-center justify-center">
              <i
                class="fa-solid fa-play text-[22px] flex cursor-pointer justify-center items-center text-[#A95C32] bg-white opacity-70 h-14 w-14 rounded-full"
              ></i>
            </div>
          </div>

          <!-- More swiper-slide blocks as needed -->
        </div>
      </div>
    </section>

    <!-- Video Modal -->
    <div
      id="videoModal"
      class="fixed inset-0 bg-black bg-opacity-70 z-50 flex items-center justify-center hidden"
    >
      <div class="bg-white rounded-lg overflow-hidden relative w-[90%] h-[90%]">
        <button
          id="closeVideoModal"
          class="absolute top-2 right-2 text-black text-xl font-bold z-10"
        >
          &times;
        </button>
        <div class="w-full h-full">
          <iframe
            id="videoIframe"
            class="w-full h-full"
            src=""
            frameborder="0"
            allowfullscreen
          ></iframe>
        </div>
      </div>
    </div>

@endsection