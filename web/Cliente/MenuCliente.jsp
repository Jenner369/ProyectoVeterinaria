<%@include file="/Utiles/Jsp/validationCliente.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Css/estilo_carousel.css" rel="stylesheet" type="text/css"/>
        <!-- It's to get context path-->
        <link id="contextPathHolder" data-contextPath="<%=request.getContextPath()%>"/>
    </head>
    <body>
        <nav></nav>
        
        <%
            int id = (int) session.getAttribute("id");
        %>
        
        <div class="text-dark text-center" id="firstSection">

            <div class="container py-5">
                <div class="text-center text-light rounded-2 bg-secondary bg-opacity-75 p-3">
                    <p class="display-1 font-weight-bolder">Veterinaria Zeus</p>
                    <p class="display-6 font-weight-bolder">La mejor veterinaria de la región</p>

                    <div class="container py-sm-5">
                        <header class="mb-xxl-5">
                            <p class="display-6 font-weight-bolder px-xxl-5">
                                Razones por las cuales venir a atiender a tu pequeño amigo a nuestra veterinaria
                            </p>
                        </header>

                        <div class="row">
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <i class="display-1 bi bi-cash"></i>
                                <p class="display-6">Economico</p>
                                <h5>Podemos ayudarte con el costo</h5>

                            </div>
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <i class="display-1 bi bi-lightning-charge-fill"></i>
                                <p class="display-6">Rapido</p>
                                <h5>Tenemos un tiempo promedio para todo</h5>
                            </div>
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <i class="display-1 bi bi-heart-fill"></i>
                                <p class="display-6">Seguro</p>
                                <h5>Tenemos una certificacion para tener contacto con los animales</h5>
                            </div>
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <i class="display-1 bi bi-award-fill"></i>
                                <p class="display-6">Eficaz</p>
                                <h5>Todos nuestros clientes terminan felices</h5>
                            </div>
                        </div>
                        <div class="row pt-5">
                            <div class="col-12 col-sm-1 col-lg-3"></div>
                            <div class="col-12 col-sm-1 col-lg-3"></div>
                            <div class="col-12 col-sm-1 col-lg-3"></div>
                            <p class="col-12 col-sm-6 col-lg-3"><a class="btn btn-lg btn-success rounded-3 display-3 px-4 py-2" href="#">Reservar una cita</a></p>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </body>

    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/clickServices.js"></script>
</html>
