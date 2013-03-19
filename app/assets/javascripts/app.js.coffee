$(document).ready ->
  $("ul.nav>li>a[href='"+window.location.pathname+"']").parent().addClass('active')