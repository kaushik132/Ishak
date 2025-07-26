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
              src="./images/sandstone.jpg"
              alt="Gateway of India"
              class="img-fluid w-full"
            />
          </div>
        </div>

        <div class="col-span-1 lg:col-span-2">
          <div class="form-section">
            <form>
              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Name</label>
                <input
                  type="text"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Name"
                />
              </div>

              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Email</label>
                <input
                  type="email"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Email"
                />
              </div>
              <div class="form-group mb-3">
                <label class="text-[15px] font-semibold">Phone no.</label>
                <input
                  type="number"
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  placeholder="Your Phone no."
                />
              </div>

              <div class="form-group mb-4">
                <label class="text-[15px] font-semibold">Message</label>
                <textarea
                  class="form-control mt-1 mt-1 py-2.5 w-full rounded-lg px-4 block border-[#ddd] border"
                  rows="5 mt-1"
                  placeholder="I'd love to learn more about your services"
                ></textarea>
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
                <p>hello@uiwiki.co</p>
              </div>
            </div>

            <div class="info-card mb-3">
              <i class="fas fa-phone"></i>
              <div class="info-text">
                <strong>Phone</strong>
                <p>Office: +91 6232511522</p>
              </div>
            </div>

            <div class="info-card mb-3">
              <i class="fas fa-map-marker-alt"></i>
              <div class="info-text">
                <strong>Location</strong>
                <p>Office : 123 Maple Street, Spring field</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241317.11609968054!2d72.74109940617357!3d19.08219783915542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b63b687c76b3%3A0x68c4b9b5db49c5e3!2sGateway%20Of%20India%2C%20Mumbai!5e0!3m2!1sen!2sin!4v1620024055747!5m2!1sen!2sin"
        width="100%"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"
      >
      </iframe>
    </section>
@endsection