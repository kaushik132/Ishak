new Swiper("#heroSlider", {
  slidesPerView: 1.5,
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
      header.classList.remove("bg-white/80", "backdrop-blur-lg", "shadow-lg");
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
      header.classList.add("bg-white/80", "backdrop-blur-lg", "shadow-lg");
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

const swiper2 = new Swiper("#reviewSwiper", {
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
      slidesPerView: 3.4,
      spaceBetween: 30,
    },
  },
});

const swiper4 = new Swiper("#tourPackagesSwiper", {
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

const toggle = document.getElementById("menuToggle");
const menu = document.getElementById("mobileMenu");

toggle.addEventListener("click", () => {
  menu.classList.toggle("hidden");
});

function toggleMobileDropdown() {
  const dropdown = document.getElementById("mobileDropdown");
  const icon = document.getElementById("dropdownIcon");
  dropdown.classList.toggle("hidden");
  icon.classList.toggle("rotate-180");
}

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
    (parseInt(currentIndex) - 1 + imageSources.length) % imageSources.length;
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

const tourSwiper = new Swiper("#tourSwiper", {
  slidesPerView: 1,
  spaceBetween: 20,
  loop: true,
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
  pagination: {
    el: "#tourSwiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: "#tourSwiper-next",
    prevEl: "#tourSwiper-prev",
  },
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

document.addEventListener("DOMContentLoaded", function () {
  const swiper = new Swiper("#videoSlider", {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
});

document.querySelectorAll(".fa-play").forEach((btn) => {
  btn.addEventListener("click", () => {
    const videoUrl = btn.getAttribute("data-video-url");
    const modal = document.getElementById("videoModal");
    const iframe = document.getElementById("videoIframe");
    iframe.src = videoUrl;
    modal.classList.remove("hidden");
  });
});

document.getElementById("closeVideoModal").addEventListener("click", () => {
  const modal = document.getElementById("videoModal");
  const iframe = document.getElementById("videoIframe");
  iframe.src = "";
  modal.classList.add("hidden");
});

document.getElementById("videoModal").addEventListener("click", (e) => {
  if (e.target.id === "videoModal") {
    document.getElementById("closeVideoModal").click();
  }
});

new Swiper("#capturedMomentSwiper", {
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

new Swiper("#videoSlider2", {
  slidesPerView: 1,
  spaceBetween: 30,
  loop: true,
  autoplay: {
    delay: 3000,
    disableOnInteraction: false,
  },
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 2.7,
    },
  },
});
