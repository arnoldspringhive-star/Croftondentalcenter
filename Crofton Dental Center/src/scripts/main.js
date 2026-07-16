// main.js - Client Side Interactions for Crofton Dental Center

document.addEventListener("DOMContentLoaded", () => {
  initDrawers();
  initTestimonials();
  initAccordions();
  initAptForm();
  initHeaderScroll();
  initHeroSlider();
});

// 1. Drawer Logic (Mobile Navigation and Request Appointment Drawers)
function initDrawers() {
  const triggers = document.querySelectorAll(".request-btn-drawer");
  const mobileTrigger = document.querySelector(".mobile-menu-trigger");
  
  const aptDrawer = document.getElementById("appointment-drawer");
  const mobileDrawer = document.getElementById("mobile-drawer");
  
  const closeBtns = document.querySelectorAll(".drawer__close");
  const overlays = document.querySelectorAll(".drawer__overlay");

  // Open Appointment Drawer
  triggers.forEach(trigger => {
    trigger.addEventListener("click", (e) => {
      e.preventDefault();
      closeAllDrawers();
      openDrawer(aptDrawer);
    });
  });

  // Open Mobile Navigation Drawer
  if (mobileTrigger) {
    mobileTrigger.addEventListener("click", (e) => {
      e.preventDefault();
      closeAllDrawers();
      openDrawer(mobileDrawer);
      mobileTrigger.setAttribute("aria-expanded", "true");
    });
  }

  // Close Drawers via X buttons
  closeBtns.forEach(btn => {
    btn.addEventListener("click", () => {
      closeAllDrawers();
    });
  });

  // Close Drawers via overlay click
  overlays.forEach(overlay => {
    overlay.addEventListener("click", () => {
      closeAllDrawers();
    });
  });

  // ESC key listener to close drawers
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape") {
      closeAllDrawers();
    }
  });

  function openDrawer(drawer) {
    if (!drawer) return;
    drawer.setAttribute("aria-hidden", "false");
    document.body.style.overflow = "hidden"; // Prevent background scroll
    // Focus close button inside drawer for accessibility
    const closeBtn = drawer.querySelector(".drawer__close");
    if (closeBtn) closeBtn.focus();
  }

  function closeAllDrawers() {
    [aptDrawer, mobileDrawer].forEach(drawer => {
      if (drawer) {
        drawer.setAttribute("aria-hidden", "true");
      }
    });
    if (mobileTrigger) {
      mobileTrigger.setAttribute("aria-expanded", "false");
    }
    document.body.style.overflow = "";
  }
}

// 2. Testimonial Slideshow Logic
function initTestimonials() {
  const slides = document.querySelectorAll(".testimonial-slide");
  const dots = document.querySelectorAll(".testimonials-dot");
  if (slides.length === 0 || dots.length === 0) return;

  let currentIndex = 0;
  let timer = null;

  function showSlide(index) {
    slides.forEach(slide => slide.classList.remove("active"));
    dots.forEach(dot => dot.classList.remove("active"));

    slides[index].classList.add("active");
    dots[index].classList.add("active");
    currentIndex = index;
  }

  dots.forEach((dot, index) => {
    dot.addEventListener("click", () => {
      showSlide(index);
      resetTimer();
    });
  });

  function startTimer() {
    timer = setInterval(() => {
      let nextIndex = (currentIndex + 1) % slides.length;
      showSlide(nextIndex);
    }, 6000); // Shift every 6 seconds
  }

  function resetTimer() {
    clearInterval(timer);
    startTimer();
  }

  // Initialize
  showSlide(0);
  startTimer();
}

// 3. FAQ Accordion Panels Toggle
function initAccordions() {
  const accordionItems = document.querySelectorAll(".accordion-item");

  accordionItems.forEach(item => {
    const titleBtn = item.querySelector(".accordion-title");
    const content = item.querySelector(".accordion-content");

    if (titleBtn && content) {
      titleBtn.addEventListener("click", () => {
        const isActive = item.classList.contains("active");
        
        // Close all other items first (optional, but clean)
        accordionItems.forEach(otherItem => {
          if (otherItem !== item) {
            otherItem.classList.remove("active");
            const otherContent = otherItem.querySelector(".accordion-content");
            if (otherContent) otherContent.style.maxHeight = null;
          }
        });

        // Toggle active status
        if (isActive) {
          item.classList.remove("active");
          content.style.maxHeight = null;
        } else {
          item.classList.add("active");
          content.style.maxHeight = content.scrollHeight + "px";
        }
      });
    }
  });
}

// 4. Appointment drawer form handling
function initAptForm() {
  const form = document.getElementById("appointment-drawer-form");
  const successBanner = document.getElementById("drawer-form-success");

  if (form && successBanner) {
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      
      // Shopify-style button loading transition state
      const submitBtn = form.querySelector("button[type='submit']");
      if (submitBtn) {
        submitBtn.disabled = true;
        const btnText = submitBtn.querySelector(".Polaris-Button__Content");
        const originalText = btnText.innerHTML;
        btnText.innerHTML = "Submitting Request...";
        
        setTimeout(() => {
          // Clear form and display success panel
          form.reset();
          form.style.display = "none";
          successBanner.style.display = "flex";
          
          // Re-enable button
          submitBtn.disabled = false;
          btnText.innerHTML = originalText;
        }, 1200);
      }
    });
  }
}

// 5. Sticky header styling adjustment on scroll
function initHeaderScroll() {
  const header = document.querySelector(".site-header");
  if (!header) return;

  window.addEventListener("scroll", () => {
    if (window.scrollY > 40) {
      header.style.boxShadow = "var(--shadow-medium)";
      header.style.backgroundColor = "rgba(253, 252, 250, 0.98)";
    } else {
      header.style.boxShadow = "";
      header.style.backgroundColor = "rgba(253, 252, 250, 0.95)";
    }
  });
}

// 6. Hero Slider Animation (Design 2)
function initHeroSlider() {
  const container = document.querySelector(".hero-slider");
  const slides = document.querySelectorAll(".hero-slide");
  const dots = document.querySelectorAll(".slider-dot");
  if (slides.length === 0 || dots.length === 0) return;

  let currentIndex = 0;
  let timer = null;
  let isPaused = false;

  function showSlide(index) {
    slides.forEach(slide => slide.classList.remove("active"));
    dots.forEach(dot => dot.classList.remove("active"));

    slides[index].classList.add("active");
    dots[index].classList.add("active");
    currentIndex = index;
  }

  dots.forEach((dot, index) => {
    dot.addEventListener("click", () => {
      showSlide(index);
      if (!isPaused) {
        resetTimer();
      } else {
        clearInterval(timer);
      }
    });
  });

  function startTimer() {
    if (timer) clearInterval(timer);
    timer = setInterval(() => {
      if (!isPaused) {
        let nextIndex = (currentIndex + 1) % slides.length;
        showSlide(nextIndex);
      }
    }, 5000); // 5 seconds slider cycle
  }

  function resetTimer() {
    startTimer();
  }

  if (container) {
    container.addEventListener("mouseenter", () => {
      isPaused = true;
      if (timer) clearInterval(timer);
    });

    container.addEventListener("mouseleave", () => {
      isPaused = false;
      startTimer();
    });
  }

  // Initialize
  showSlide(0);
  startTimer();
}
