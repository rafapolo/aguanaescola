$(document).ready ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()


  $("ul.nav>li>a[href='"+window.location.pathname+"']").parent().addClass('active')