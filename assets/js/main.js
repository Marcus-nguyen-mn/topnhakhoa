jQuery(document).ready(function(){
    sliderPostsSec3();
    menuMobile();
    FormContact(".btn-subm-ctp","formCtpPage",".formCtpPage","#nameCtp","#sdtCtp",".phoneVal",".nameVal");
    handleShowFormSearch();
    handleChangeMode();
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

function FormContact(buttonClass , formClass , dataClass, idHoTen, idSdt, phoneVal, nameVal){
    var submit = jQuery(buttonClass);
    submit.click(function(){
    var hoTen = document.forms[formClass]["hoTen"].value;
    var sdt = document.forms[formClass]["Sdt"].value;
    var remove_space = jQuery.trim(sdt.replace(/ /g,''));
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    if(hoTen == "" || sdt == ""){
    if(hoTen == ""){ jQuery(nameVal).css('display','block');}
        jQuery(idHoTen).click(function(){
        jQuery(nameVal).css('display','none');
      });
        if(sdt !== ""){
        if (vnf_regex.test(remove_space) == false){
          jQuery(phoneVal).empty().append('<span>Số điện thoại không đúng định dạng!</span>');
          jQuery(phoneVal).css('display','block');
        }
        else{
          jQuery(phoneVal).empty().append('<span>Số điện thoại hợp lệ!</span>');
          jQuery(phoneVal).css('display','block');
        }
      }else{
        jQuery(phoneVal).empty().append('Bạn chưa nhập số điện thoại!');
        jQuery(phoneVal).css('display','block');
      }
      jQuery(idSdt).click(function(){
        jQuery(phoneVal).css('display','none');});
      return false;
    }
    if(hoTen !== "" || sdt !== ""){
      if (vnf_regex.test(remove_space) == false){
      jQuery(phoneVal).empty().append('<span>Số điện thoại không đúng định dạng!</span>');
      jQuery(phoneVal).css('display','block');
    }
    else{
      jQuery(phoneVal).empty().append('<span>Bạn đã đăng kí thành công!</span>');
      jQuery(phoneVal).css('display','block');
  
      var data = jQuery(dataClass).serialize();
      jQuery.ajax({
        type : 'GET',
        url : 'https://script.google.com/macros/s/AKfycbz3Wv5vn4Wkq_7AInlu4xTEmmQVADjsJEw4CmwiHEtUMiTTaOP49WYeVd_HZeFzfHLh/exec',
        dataType:'json',
        crossDomain : true,
        data : data,
        success : function(response){
          if(response == 'false')
          {
            alert('Thêm không thành công');
          }else{
              alert('Đăng ký thành công. Chúng tôi sẽ liên hệ hỗ trợ trong thời gian sớm nhất. Trân trọng!');
            }
          }
        });
      return false;
    }
    return false;
  }
  else{
    var data = jQuery(formClass).serialize();
    jQuery.ajax({
      type : 'GET',
      url : 'https://script.google.com/macros/s/AKfycbz3Wv5vn4Wkq_7AInlu4xTEmmQVADjsJEw4CmwiHEtUMiTTaOP49WYeVd_HZeFzfHLh/exec',
      dataType:'json',
      crossDomain : true,
      data : data,
      success : function(data){
        if(data == 'false')
        {
          alert('Thêm không thành công');
        }else{
          alert('Đăng ký thành công. Chúng tôi sẽ liên hệ hỗ trợ trong thời gian sớm nhất. Trân trọng!');
        }
      }
    });
    return false;
  }
  });
}
function handleShowFormSearch(){
  let btnShowFormSearch = document.querySelector("#btnShowFormSearch");
  let searchFormHeader = document.querySelector("#searchFormHeader");
  let searchFieldCs = document.querySelector(".search_field_cs")
  if(btnShowFormSearch){
    btnShowFormSearch.onclick = ()=>{
      searchFormHeader.classList.toggle("active");
    }
  }
  window.onclick = function(event) {
    if (event.target != searchFormHeader && event.target != btnShowFormSearch && event.target != searchFieldCs) {
      searchFormHeader.classList.remove("active");
    }
  }
}
function handleChangeMode(){
  let btnChangeMod = document.querySelector('#btnChangeMod');
  if(btnChangeMod){
    btnChangeMod.onclick = ()=>{
      btnChangeMod.classList.toggle("active");
    }
  }
}