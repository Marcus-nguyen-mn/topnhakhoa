jQuery(document).ready(function(){
    sliderPostsSec3();
    menuMobile();
});
function sliderPostsSec3(){
    jQuery('.slider_post_sec_3').slick({
        centerMode: true,
        centerPadding: '400px',
        slidesToShow: 1,
        dots: true,
        prevArrow: false,
        nextArrow: false,
        autoplay: true,
        autoplaySpeed: 2000,
        responsive: [
            {
                breakpoint: 1025,
                settings: {
                  arrows: false,
                  centerMode: true,
                  centerPadding: '150px',
                  slidesToShow: 1
                }
            },
          {
            breakpoint: 768,
            settings: {
              arrows: false,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 1
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: false,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 1
            }
          }
        ]
      });
}
function menuMobile(){
  let btnOpenMenu = document.querySelector(".btn-menu-mobile");
  let closeMenu = document.querySelector(".overlay_menu");
  let menuMobile = document.querySelector(".menu_mobile");
  let overLay = document.querySelector(".overlay_menu");
  let body = document.getElementsByTagName("BODY")[0];
  if(btnOpenMenu){
    btnOpenMenu.onclick = function(){
      menuMobile.classList.toggle("active");
      overLay.classList.toggle("active");
      btnOpenMenu.classList.toggle("active");
      body.classList.toggle("active");
    }

  }
  if(closeMenu){
    closeMenu.onclick = function(){
      menuMobile.classList.toggle("active");
      overLay.classList.toggle("active");
      btnOpenMenu.classList.toggle("active");
      body.classList.toggle("active");
    }

  }
}