window.sr = ScrollReveal({ reset: true});

sr.reveal('.area-1', { origin: "left", distance: "0.5rem", duration:2000, reset: false});
sr.reveal('.area-2', { origin: "left", distance: "0.5rem", duration:2000, reset: false});
sr.reveal('.area-3', { origin: "left", distance: "1rem", duration:2000, reset: false});
sr.reveal('.area-4', { origin: "left", distance: "1rem", duration:2000, reset: false});
sr.reveal('.area-5', { origin: "left", distance: "3rem", duration:2000, reset: false});
sr.reveal('.area-6', { origin: "left", distance: "3rem", duration:2000, reset: false});
sr.reveal('.area-7', { origin: "bottom", distance: "2rem", duration:2000, reset: false});
sr.reveal('.area-8', { origin: "right", distance: "4rem", duration:2000, reset: false});
sr.reveal('.area-9', { origin: "bottom", distance: "1rem", duration:2000, reset: false});

var swiper = new Swiper(".mySwiper", {
    slidesPerView: 6,
    spaceBetween: 100,
    loop: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});
