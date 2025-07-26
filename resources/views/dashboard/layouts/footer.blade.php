    <!-- footer -->
    <footer class="px-7 lg:px-14 pt-14 bg-[#E6B9A1]">
      <div
        class="grid grid-cols-1 lg:grid-cols-4 justify-between flex border-b-[1px] pb-6"
      >
        <div class="col-span-1 text-center lg:text-left">
          <img class="w-40 mx-auto lg:mx-0" src="./images/logo.png" alt="" />

          <p class="font-semibold text-[14px] mt-3 lg:mt-8 lg:w-[65%]">
            UI Wiki simplifies design with intuitive tools and templates,
            empowering you to create effortlessly.
          </p>

          <ul class="flex gap-4 mt-7 justify-center lg:justify-start">
            <li>
              <a
                href="{{url('/')}}"
                class="h-10 w-10 border border-[#f1f1f1] flex justify-center items-center rounded-full"
                ><i class="fa-brands fa-x-twitter"></i
              ></a>
            </li>

            <li>
              <a
                href="#"
                class="h-10 w-10 border border-[#f1f1f1] flex justify-center items-center rounded-full"
                ><i class="fa-brands fa-facebook"></i
              ></a>
            </li>

            <li>
              <a
                href="#"
                class="h-10 w-10 border border-[#f1f1f1] flex justify-center items-center rounded-full"
                ><i class="fa-brands fa-instagram"></i
              ></a>
            </li>

            <li>
              <a
                href="#"
                class="h-10 w-10 border border-[#f1f1f1] flex justify-center items-center rounded-full"
                ><i class="fa-brands fa-linkedin"></i
              ></a>
            </li>
          </ul>
        </div>

        <div class="col-span-1 mt-10 lg:mt-0">
          <h2 class="font-bold text-[18px] text-center lg:text-left">
            Quick Link
          </h2>

          <ul class="mt-5 text-[14px] font-semibold text-center lg:text-left">
            <li class="mb-3"><a href="./index.html">Home Page</a></li>
            <li class="mb-3"><a href="./gallery.html">Gallery</a></li>
            <li class="mb-3">
              <a href="./first-tour.html">Tour & Packages</a>
            </li>
            <li><a href="#">Privacy & Policy</a></li>
          </ul>
        </div>

        <div class="col-span-1 mt-10 lg:mt-0">
          <h2 class="font-bold text-[18px] text-center lg:text-left">
            Support
          </h2>

          <ul class="mt-5 text-[14px] font-semibold text-center lg:text-left">
            <li class="mb-3"><a href="./contact.html">Contact Us</a></li>
            <li class="mb-3"><a href="#">FAQ</a></li>
            <li class="mb-3"><a href="#">Help & Support</a></li>
          </ul>
        </div>

        <div class="col-span-1 mt-10 lg:mt-0">
          <h2 class="font-bold text-[18px] ml-2 text-center lg:text-left">
            Newsletter
          </h2>

          <form class="mt-5 text-center lg:text-left">
            <input
              type="email"
              class="bg-transparent w-full rounded-[30px] border border-[#f1f1f1] outline-0 px-4 py-2 text-white placeholder:text-black"
              placeholder="Enter your email"
            />

            <button
              class="bg-[#C4693AA6] mt-4 px-7 pt-2.5 pb-3 rounded-[30px] text-white"
            >
              Submit
            </button>
          </form>
        </div>
      </div>

      <!-- bottom footer -->
      <div
        class="py-7 text-center lg:text-left lg:flex items-center justify-between"
      >
        <p class="text-[#333] text-[14px] mb-2 lg:mb-0 lg:text-[16px]">
          Copyright © 2025 <span class="font-bold">Ishak</span> All right
          reserved
        </p>
        <p class="text-[#333]">
          Design and Develop by
          <a href="https://www.ahitechno.com/" class="text-blue-600"
            >AHITechno</a
          >
        </p>
      </div>
    </footer>

    <div
      class="media w-[40px] py-4 fixed z-40 rounded-tl-lg rounded-bl-lg right-0 fixed top-32"
    >
      <ul>
        <li>
          <a href="#" class="flex justify-center items-center mb-4"
            ><i class="fa-brands fa-facebook text-white"></i
          ></a>
        </li>

        <li>
          <a href="#" class="flex justify-center items-center mb-4"
            ><i class="fa-brands fa-youtube text-white"></i
          ></a>
        </li>
        <li>
          <a href="#" class="flex justify-center items-center mb-4"
            ><i class="fa-brands fa-google text-white"></i
          ></a>
        </li>
        <li>
          <a href="#" class="flex justify-center items-center"
            ><i class="fa-brands fa-instagram text-white"></i
          ></a>
        </li>
      </ul>
    </div>

    <!-- Image Modal -->
    <div
      id="imageModal"
      class="fixed inset-0 bg-black bg-opacity-80 flex items-center justify-center z-50 hidden"
    >
      <button
        id="closeModal"
        class="absolute top-5 right-5 text-white text-3xl font-bold"
      >
        &times;
      </button>

      <button
        id="prevBtn"
        class="absolute left-5 text-white text-4xl font-bold"
      >
        &#10094;
      </button>

      <img
        id="modalImage"
        class="max-w-[90%] max-h-[90%] object-contain rounded-lg"
        src=""
        alt="Modal Image"
      />

      <button
        id="nextBtn"
        class="absolute right-5 text-white text-4xl font-bold"
      >
        &#10095;
      </button>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="{{url('js/script.js')}}"></script>
  </body>
</html>
