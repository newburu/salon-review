$(document).ready(function () {
  var pagetop = $('#page_top');   
  var scrolldown = $('#scroll_down');   
  pagetop.hide();
  scrolldown.show()
  $(window).scroll(function () {
      if ($(this).scrollTop() > 300) {  // 300pxスクロールしたら表示
        pagetop.fadeIn();
        scrolldown.fadeOut();
      } else {
        pagetop.fadeOut();
        scrolldown.fadeIn();
      }
  });
  pagetop.click(function () {
      $('body,html').animate({
          scrollTop: 0
      }, 500); //0.5秒かけてトップへ移動
      return false;
  });
});
