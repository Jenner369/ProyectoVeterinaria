<%-- 
    Document   : Servicios
    Created on : 24/09/2021, 12:22:35 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    </head>
    <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <h3 class="navbar-brand">Veterinaria Zeus </h3>
                </div>
            </div>
    </nav>
        
    <div class="text-dark text-center" id="firstSection">
        <div class="container py-5 ">
            <div class="text-center text-light rounded-2 bg-secondary bg-opacity-75 p-3">
            <p class="display-1 font-weight-bolder" style="font-size: 55px">Servicios  Veterinaria Zeus</p>
            <div class="container py-sm-3">
                <header class="mb-xxl-5">
                    <p class="display-6 font-weight-bolder px-xxl-5" style="font-size: 30px">
                        Los mejores servicios y atención te la brindamos en la Veterinaria Zeus, deja al consentido de la casa en las mejores manos!
                    </p>
                </header>
                <div class="row">
                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <i class="display-1"></i>
                        <img src="Imagenes/LavadoIcono.jpg" alt="" style="border-radius: 8em"/>
                        <a class="display-6" style="text-decoration: none; color: #333333" href="#Baño">Baño</a>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <i class="display-1"></i>
                        <img src="Imagenes/IconoChequeo.jpg" alt="" style="border-radius: 8em"/>
                        <a class="display-6" style="text-decoration: none; color: #333333" href="#Chequeo">Chequeo Habitual</a>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                        <i class="display-1"></i>
                        <a class="display-6" style="text-decoration: none; color: #333333" onclick="clickService('PulgasParasitos')" href="#Servicios">Pulgas y Parasitos</a>
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
    
            <section id="Baño" class="bg-dark bg-gradient text-white text-center py-5">
        <div class="container py-3">

            <header class="mb-5">
                <h1 class="display-4 font-weight-bolder"></h1>
            </header>

            <div class="row justify-content-center">
                <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                    <div class="container">
                        <div class="carousel-caption text-start text-light rounded-2 bg-secondary bg-opacity-25 p-5">
                            <h1>Lavado</h1>
                            <p>Hacemos un lavado completo</p>
                            <p><a class="btn btn-lg btn-success" href="#">Reservar para un lavado</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
 </body>  
</html>
