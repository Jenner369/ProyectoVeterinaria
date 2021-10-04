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
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link href="../Utiles/Css/estilo_Servicio.css" rel="stylesheet" type="text/css"/>
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
            <div class="container py-5">
                <div class="text-center text-light rounded-2 bg-secondary bg-opacity-75 p-3 " >
                    <p class="display-1 font-weight-bolder">Veterinaria Zeus</p>
                    <div class="container py-sm-5">
                        <header class="mb-xxl-5">
                            <p class="display-6 font-weight-bolder px-xxl-5" style="font-size: 30px">
                                Los mejores servicios y atención te la brindamos en la Veterinaria Zeus, deja al consentido de la casa en las mejores manos!
                            </p>
                        </header>

                        <div class="row">
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <img  src="https://img.icons8.com/ios-glyphs/90/000000/veterinarian.png"/><br/>
                                <a class="display-6" style="text-decoration: none; color: #333333" href="#consultaMedica">Consulta Medica</a>
                            </div> 
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <img  src="https://img.icons8.com/ios-filled/90/000000/barbershop.png"/><br/>
                                <a class="display-6" style="text-decoration: none; color: #333333" href="#Baño">Baño & Peluqueria Profesional</a>
                            </div>
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <img src="https://img.icons8.com/ios-glyphs/90/000000/syringe-with-a-drop-of-blood.png"/><br/>
                                <a class="display-6" style="text-decoration: none; color: #333333" href="#VacunasDesparacitacion">Vacunas & Desparasitaciones</a>
                            </div>
                            <div class="col-12 col-sm-6 col-lg-3 mb-5 mb-lg-0">
                                <img src="https://img.icons8.com/ios-glyphs/90/000000/stethoscope.png"/><br/>
                                <a class="display-6" style="text-decoration: none; color: #333333" href="#Cirugia">Cirugía</a>
                            </div>                              
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Presentación de los servicios-->

        <section id="consultaMedica" class="bg-gradient text-white text-center " style="background:#475b5a">

            <div class="container py-3">

                <header class="mb-5"><br/>
                    <h1 class="display-4 font-weight-bolder">Consulta Médica Veterinaria</h1>
                </header>
                <div class="row">
                    <div class="col-12 col-sm-6" >                   
                        <img class="img-fluid" src="https://images.unsplash.com/photo-1577175889968-f551f5944abd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" width="700px"">                      
                    </div>
                    <div class="col-12 col-sm-6 ">
                        <!--Descrición del servicio-->
                        <h5 class="mt-4"> La mejor atención la encuentras en nuestra veterinaria</h5>
                    </div>
                    <p style="padding-left: 65%"><a class="btn btn-lg btn-success" href="#">Reservar  cita</a></p>

                </div>
            </div>
        </section> 

        <section id="Baño" class="bg-gradient text-white text-center py-5" style="background:#7b7055">
            <div class="container py-3">

                <header class="mb-5">
                    <h1 class="display-4 font-weight-bolder"> Baño & Peluqueria Profesional</h1>
                </header>

                <div class="row">

                    <div class="col-12 col-sm-6 ">
                        <!--icon <i> -->
                        <h5 class="mt-4"> La mejor atención la encuentras en nuestra veterinaria</h5>
                        <p style="padding-left: 65%"><a class="btn btn-lg btn-success" href="#">Reservar  cita</a></p>

                    </div>
                    <div class="col-12 col-sm-6 " style="">
                        <img src="https://images.unsplash.com/photo-1611173622933-91942d394b04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" width="650px">
                    </div>
                </div>
            </div>
        </section> 


        <section id="VacunasDesparacitacion" class="bg-gradient text-white text-center py-5" style="background:#475b5a">

            <div class="container py-3">

                <header class="mb-5">
                    <h1 class="display-4 font-weight-bolder">Vacunas & Desparasitaciones</h1>
                </header>

                <div class="row">
                    <div class="col-12 col-sm-6 ">
                        <img src="https://www.zooplus.es/magazine/wp-content/uploads/2018/09/katzen-impfung-768x512.jpg" width="700px">
                    </div>
                    <div class="col-12 col-sm-6 ">
                        <!--icon <i> -->
                        <h5 class="mt-4"> La mejor atención la encuentras en nuestra veterinaria</h5>
                    </div>
                    <p style="padding-left: 65%"><a class="btn btn-lg btn-success" href="#">Reservar  cita</a></p>                   
                </div>
            </div>
        </section> 

        <section id="Cirugia" class="bg-gradient text-white text-center py-5" style="background:#7b7055">

            <div class="container py-3">

                <header class="mb-5">
                    <h1 class="display-4 font-weight-bolder"> Cirugía </h1>
                </header>
                <div class="row">                    
                    <div class="col-12 col-sm-6 ">                      
                        <h5 class="mt-4"> La mejor atención la encuentras en nuestra veterinaria</h5>
                        <p style="padding-left: 65%"><a class="btn btn-lg btn-success" href="#">Reservar  cita</a></p>   
                    </div>
                    <div class="col-12 col-sm-6 ">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cirug%C3%ADa..jpg/1200px-Cirug%C3%ADa..jpg" width="700px">
                    </div>
                </div>
            </div>
        </section> 
    </body>
    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="../Utiles/Js/clickServices.js"></script>



</html>
