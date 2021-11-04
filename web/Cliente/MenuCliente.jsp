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
        
                <!--Presentación de la pagina de Veterinaria Zeus-->
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


        <section id="QuienesSomos" class="bg-dark bg-gradient text-white text-center py-5">

            <div class="container py-3">

                <header class="mb-5">
                    <h1 class="display-4 font-weight-bolder">Excelente trato a los clientes</h1>
                </header>

                <div class="row justify-content-center">
                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <i class="bi-person-badge display-1"></i>
                        <h5 class="mt-4">Fernando Lopez</h5>
                        <p>Debo reconocerlo, es la mejor veterinaria en la que han tratado a mi mascota.</p>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <i class="bi-person-badge display-1"></i>
                        <h5 class="mt-4">Antauro Humala</h5>
                        <p>Los precios que ofrece esta veterinaria y su calidad es inigualable.</p>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <i class="bi-person-badge display-1"></i>
                        <h5 class="mt-4">Carlos Castillo</h5>
                        <p>100% recomendable.</p>
                    </div>
                </div>
            </div>

        </section>
        <!--Anotaciones del lenguaje de Bootstrap-->
        <!--
            Margin
                Margin top: mt-value
                Margin right: me-value
                Margin bottom: mb-value
                Margin left: ms-value
            Padding
                Padding top: pt-value
                Padding right: pe-value
                Padding bottom: pb-value
                Paddig left: ps-value.
                Where the range for the value is 0 to 5
                Padding eje y: py-value
                Padding eje x: px-value
        -->

        <!--Seccion sobre Servicios en un Carrusel-->
        <div id="Servicios" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#Servicios" data-bs-slide-to="0" class="active"
                        aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#Servicios" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#Servicios" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" id="Lavado">
                    <img src="https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1469&q=80"
                         alt="">
                    <div class="container">
                        <div class="carousel-caption text-start text-light rounded-2 bg-secondary bg-opacity-25 p-5">
                            <h1>Lavado</h1>
                            <p>Hacemos un lavado completo</p>
                            <p><a class="btn btn-lg btn-success" href="#">Reservar para un lavado</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" id="Pulgas">
                    <img src="https://images.unsplash.com/photo-1450778869180-41d0601e046e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1586&q=80"
                         alt="">
                    <div class="container">
                        <div class="carousel-caption text-center text-light rounded-2 bg-secondary bg-opacity-25 p-5">
                            <h1>Pulgas</h1>
                            <p>Quitamos las pulgas</p>
                            <p><a class="btn btn-lg btn-success" href="#">Reservar para quitar pulgas</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" id="Parasitos">
                    <img src="https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"
                         alt="">
                    <div class="container">
                        <div class="carousel-caption text-end text-light rounded-2 bg-secondary bg-opacity-25 p-5">
                            <h1>Parasitos</h1>
                            <p>Quitamos los parasitos con medicamentos</p>
                            <p><a class="btn btn-lg btn-success" href="#">Reservar para quitar parasitos</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#Servicios" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#Servicios" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--Seccion negra sobre ¿Quienes Somos?-->
        <section id="QuienesSomos" class="bg-dark bg-gradient text-white text-center py-5">

            <div class="container py-3">

                <header class="mb-5">
                    <h1 class="display-4 font-weight-bolder">Confia en Veterinaria Zeus</h1>
                </header>

                <div class="row">

                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <h5 class="mt-4">Combine Images</h5>
                        <p>Take separate Snagit images and combine them into one, organized.</p>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <h5 class="mt-4">Favorites</h5>
                        <p>Keep all of your most valuable tools together in one spot.</p>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <!--icon <i> -->
                        <h5 class="mt-4">Stamp Search</h5>
                        <p>Quickly search through nearly 2,000 pre-mades stamps.</p>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-3">
                        <!--icon <i> -->
                        <h5 class="mt-4">Simplify Tool</h5>
                        <p>Convert your standard screenshots into simplified.</p>
                    </div>

                </div>

            </div>

        </section>
    </body>

    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/clickServices.js"></script>
</html>
