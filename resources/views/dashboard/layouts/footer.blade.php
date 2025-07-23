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
            <li class="mb-3"><a href="{{url('/')}}">Home Page</a></li>
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

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
      const swiper = new Swiper("#heroSlider", {
        slidesPerView: 1.5, // default (mobile)
        spaceBetween: 16,
        loop: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        breakpoints: {
          640: {
            slidesPerView: 1.5,
          },
          768: {
            slidesPerView: 2,
          },
          1024: {
            slidesPerView: 3,
          },
        },
        on: {
          slideChange: function () {
            const totalSlides = this.slides.length - this.loopedSlides * 2;
            const realIndex = this.realIndex;
            const progress = ((realIndex + 1) / totalSlides) * 100;
            const progressBar = document.getElementById("progress-bar");
            progressBar.style.width = `${progress}%`;
          },
        },
      });
    </script>

    <script>
      const header = document.getElementById("mainHeader");
      const targetSection = document.getElementById("hero-section");
      const navLinks = document.getElementById("navLinks");
      const contactLinks = document.getElementById("contactLinks");
      const menuToggle = document.getElementById("menuToggle");
      const mobileMenu = document.getElementById("mobileMenu");
      const links = document.querySelectorAll(
        "#navLinks a, #contactLinks i, #contactLinks span"
      );

      const mobileLinks = document.getElementById("mobileMenuLinks");

      const observer = new IntersectionObserver(
        ([entry]) => {
          if (entry.isIntersecting) {
            header.classList.remove(
              "bg-white/80",
              "backdrop-blur-lg",
              "shadow-lg"
            );
            navLinks.classList.add("bg-white/10", "backdrop-blur-md");
            contactLinks.classList.add("bg-white/35", "backdrop-blur-md");

            menuToggle.classList.remove("text-black");
            menuToggle.classList.add("text-white");
            mobileMenu.classList.remove("bg-black/50");

            links.forEach((link) => {
              link.classList.remove("text-black");
              link.classList.add("text-white");
            });

            mobileLinks.classList.remove("text-black");
            mobileLinks.classList.add("text-white");
          } else {
            header.classList.add(
              "bg-white/80",
              "backdrop-blur-lg",
              "shadow-lg"
            );
            navLinks.classList.remove("bg-white/10", "backdrop-blur-md");
            contactLinks.classList.remove("bg-white/35", "backdrop-blur-md");
            mobileMenu.classList.add("transparent");

            links.forEach((link) => {
              link.classList.add("text-black");
              link.classList.remove("text-white");
            });
            mobileLinks.classList.add("text-black");
            mobileLinks.classList.remove("text-white");

            menuToggle.classList.add("text-black");
            menuToggle.classList.remove("text-white");
          }
        },
        {
          threshold: 0.1,
        }
      );

      observer.observe(targetSection);
    </script>

    <script>
      const swiper2 = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 0,
        autoplay: true,

        breakpoints: {
          640: {
            slidesPerView: 1,
          },
          768: {
            slidesPerView: 2,
            loop: true,
            autoplay: {
              delay: 2000,
            },
          },
          1024: {
            slidesPerView: 3,
            spaceBetween: 30,
          },
        },
      });
    </script>

    <!-- Swiper Initialization -->
    <script>
      const swiper4 = new Swiper(".mySwiper4", {
        slidesPerView: 1,
        spaceBetween: 20,
        autoplay: true,
        breakpoints: {
          640: {
            slidesPerView: 1,
          },
          768: {
            slidesPerView: 2,
            loop: true,
            autoplay: {
              delay: 2000,
            },
          },
          1024: {
            slidesPerView: 3.9,
          },
        },
      });
    </script>

    <script>
      const swiper3 = new Swiper(".mySwiper2", {
        slidesPerView: 1,
        spaceBetween: 20,
        autoplay: true,
        breakpoints: {
          640: {
            slidesPerView: 1,
          },
          768: {
            slidesPerView: 2,
            loop: true,
            autoplay: {
              delay: 2000,
            },
          },
          1024: {
            slidesPerView: 3.9,
          },
        },
      });
    </script>
    <script>
      const toggle = document.getElementById("menuToggle");
      const menu = document.getElementById("mobileMenu");

      toggle.addEventListener("click", () => {
        menu.classList.toggle("hidden");
      });
    </script>

    
  <script>
    const swiper = new Swiper("#videoSlider2", {
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
      function toggleMobileDropdown() {
        const dropdown = document.getElementById("mobileDropdown");
        const icon = document.getElementById("dropdownIcon");
        dropdown.classList.toggle("hidden");
        icon.classList.toggle("rotate-180");
      }
    </script>

    <script>
      const galleryImages = document.querySelectorAll(".gallery-img");
      const modal = document.getElementById("imageModal");
      const modalImage = document.getElementById("modalImage");
      const closeModal = document.getElementById("closeModal");
      const nextBtn = document.getElementById("nextBtn");
      const prevBtn = document.getElementById("prevBtn");

      let currentIndex = 0;
      const imageSources = [];

      galleryImages.forEach((img, index) => {
        imageSources.push(img.src);
        img.dataset.index = index;
        img.addEventListener("click", () => {
          currentIndex = index;
          showModal(img.src);
        });
      });

      function showModal(src) {
        modalImage.src = src;
        modal.classList.remove("hidden");
      }

      function hideModal() {
        modal.classList.add("hidden");
      }

      function showNext() {
        currentIndex = (parseInt(currentIndex) + 1) % imageSources.length;
        modalImage.src = imageSources[currentIndex];
      }

      function showPrev() {
        currentIndex =
          (parseInt(currentIndex) - 1 + imageSources.length) %
          imageSources.length;
        modalImage.src = imageSources[currentIndex];
      }

      closeModal.addEventListener("click", hideModal);
      nextBtn.addEventListener("click", showNext);
      prevBtn.addEventListener("click", showPrev);

      document.addEventListener("keydown", (e) => {
        if (e.key === "Escape") hideModal();
        if (e.key === "ArrowRight") showNext();
        if (e.key === "ArrowLeft") showPrev();
      });
    </script>

    
    

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  </body>
</html>
