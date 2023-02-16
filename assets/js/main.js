jQuery(document).ready(function(){
    sliderPostsSec3();
});
function sliderPostsSec3(){
    jQuery('.slider_post_sec_3').slick({
        centerMode: true,
        centerPadding: '60px',
        slidesToShow: 1,
        responsive: [
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