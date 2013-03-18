$(document).ready ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()


  $("li>a[href='"+window.location.pathname+"']").parent().addClass('active')