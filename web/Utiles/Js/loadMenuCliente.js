function loadNavBarMenu() {
    var CONTEXT_PATH = $('#contextPathHolder').attr('data-contextPath');
    $('nav').load(CONTEXT_PATH+'/Cliente/navbarMenuCliente.jsp')
}

$(document).ready( function() {
    loadNavBarMenu()
})