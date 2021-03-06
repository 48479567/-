var swiper = new Swiper('.swiper-container', {
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 'auto',
    coverflowEffect: {
      rotate: 60,
      stretch: 0,
      depth: 300,
      modifier: 3,
      slideShadows : true,
    },
    pagination: {
      el: '.swiper-pagination',
    },
  });