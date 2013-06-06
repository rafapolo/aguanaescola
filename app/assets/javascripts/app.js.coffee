$(document).ready ->
	$(".chosen").attr("data-placeholder","Selecione...").chosen({no_results_text: "Sem resultados"})
	$("ul.nav>li>a[href='"+window.location.pathname+"']").parent().addClass('active')
	$("ul.nav.nav-tabs>li>a[href='"+window.location.pathname+"']").parent().addClass('active')