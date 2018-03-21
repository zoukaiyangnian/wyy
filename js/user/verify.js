function getFocus(){
  var $tar=$(this)
  $tar.addClass("txt_focus")
  $tar.nextAll("span").removeClass("vali_info")
}
function getBlur(){
  var $tar=$(this)
  $tar.removeClass("txt_focus")
  $tar.nextAll("span").addClass("vali_info")
}

