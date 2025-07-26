<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ishak</title>
    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
      integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="{{url('css/style.css')}}" />
    <!-- Swiper CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
  </head>
  <body class="relative">
    <header
      id="mainHeader"
      class="px-4 cursor-pointer sm:px-6 md:px-10 fixed py-4 md:py-6 lg:py-5 w-full transition-colors duration-500 z-50 bg-transparent"
    >
      <div class="flex justify-between items-center">
        <!-- Logo -->
        <div>
          <a href="{{url('/')}}">
            <img
              class="w-[100px] md:w-[120px] lg:w-[140px]"
              src="{{url('images/logo.png')}}"
              alt="Logo"
            />
          </a>
        </div>

        <!-- Desktop Navigation -->
        <div class="hidden lg:flex gap-4 xl:gap-10">
          <ul
            id="navLinks"
            class="flex items-center gap-4 xl:gap-8 px-6 xl:px-9 py-3 xl:py-4 rounded-[30px]"
          >
            <li>
              <a href="{{url('/')}}" class="text-sm md:text-base">Home</a>
            </li>
            <li class="relative group">
              <a
                href="#"
                class="text-white text-sm md:text-base flex items-center gap-1"
              >
                Tour & Packages
                <i class="fa-solid fa-chevron-down text-[11px] mt-[2px]"></i>
              </a>

              <!-- Dropdown -->
              <ul
                class="absolute left-0 top-full bg-white text-black rounded-md shadow-lg w-48 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition duration-300"
              >
                <li>
                  <a
                    style="color: black !important"
                    href="{{url('tour')}}"
                    class="block px-4 py-2 hover:bg-gray-100 rounded-tl-md rounded-tr-md text-sm"
                    >First Day Tour</a
                  >
                </li>
                <li>
                  <a
                    style="color: black !important"
                    href="{{url('tour')}}"
                    class="block px-4 py-2 hover:bg-gray-100 rounded-bl-md rounded-br-md text-sm"
                    >Second Day Tour</a
                  >
                </li>
              </ul>
            </li>

            <li>
              <a href="{{url('gallery')}}" class="text-white text-sm md:text-base"
                >Gallery</a
              >
            </li>
            <li>
              <a href="{{url('contact-us')}}" class="text-white text-sm md:text-base"
                >Contact Us</a
              >
            </li>
          </ul>

          <ul
            id="contactLinks"
            class="flex items-center px-6 xl:px-8 py-3 xl:py-4 rounded-[30px] gap-4 xl:gap-6"
          >
            <li class="mt-1">
              <a href="#">
                <i
                  class="fa-brands fa-whatsapp text-white text-[20px] md:text-[20px]"
                ></i>
              </a>
            </li>
            <li>
              <a href="#">
                <i
                  class="fa-solid fa-phone text-white text-[14px] md:text-[16px]"
                ></i>
                <span class="ml-1">+91 8874567567</span>
              </a>
            </li>
          </ul>
        </div>

        <!-- Mobile Menu Icon -->
        <div class="lg:hidden">
          <button
            id="menuToggle"
            class="text-2xl bg-white/70 px-3 pb-1 rounded-lg"
          >
            <i class="fa-solid fa-bars text-black text-[20px]"></i>
          </button>
        </div>
      </div>

      <!-- Mobile Menu (optional if you want to show on click) -->
      <div
        id="mobileMenu"
        class="lg:hidden relative z-50 hidden mt-4 bg-white/10 backdrop-blur-md rounded-[20px] p-4"
      >
        <ul id="mobileMenuLinks" class="flex flex-col gap-4">
          <li>
            <a href="{{url('/')}}">Home</a>
          </li>
          <li>
            <button
              onclick="toggleMobileDropdown()"
              class="w-full text-left flex items-center justify-between"
            >
              Tour & Packages
              <i
                id="dropdownIcon"
                class="fa-solid fa-chevron-down ml-2 transition-transform duration-300"
              ></i>
            </button>
            <ul id="mobileDropdown" class="pl-4 mt-2 space-y-2 hidden">
              <li>
                <a href="{{url('tour')}}" class="block">First Day Tour</a>
              </li>
              <li>
                <a href="{{url('tour')}}" class="block">Second Day Tour</a>
              </li>
            </ul>
          </li>

          <li><a href="{{url('gallery')}}">Gallery</a></li>
          <li><a href="{{url('contact-us')}}">Contact Us</a></li>
          <li class="flex gap-4">
            <a href="#"><i class="fa-brands fa-whatsapp"></i></a>
            <a href="#"
              ><i class="fa-solid fa-phone"></i> <span>+91 8874567567</span></a
            >
          </li>
        </ul>
      </div>
    </header>