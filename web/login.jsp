<!--%-- Document : LogIn Created on : 24/09/2021, 12:20:19 AM Author : USER --%-->
<jsp:include page="Utiles/Jsp/validation.jsp"/>
<!--<%@page contentType="text/html" pageEncoding="UTF-8" %>-->
<html lang="en">

    <head>
        <title>Login 10</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Utiles/Css/LogIn.css">
    </head>

    <body>

        <section class="ftco-section">
            <div class="container mt-5 mt-md-5 mt-lg-5 text-white">
                <div class="row justify-content-center">

                    <div class="col-md-6 col-lg-4 bg bg-white bg-opacity-25 rounded-3 p-5">
                        <!--Titulo-->
                        <div class="row justify-content-center">
                            <div class="text-center p-lg-4 p-md-1 p-sm-0">
                                <h2 class="display-5 heading-section">Inicio de Sesión</h2>
                            </div>
                        </div>
                        <!--Botones-->
                        <div class="row justify-content-center p-3">
                            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">

                                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"
                                       checked>
                                <label class="btn btn-outline-success" for="btnradio1">Cliente</label>

                                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                                <label class="btn btn-outline-light" for="btnradio2">Veterinario</label>

                            </div>
                        </div>
                        <!--Formulario-->
                        <div class="row justify-content-center">

                            <h4 class="text-center">¿Ya tienes una cuenta?</h4>

                            <form action="Servlet_Ingreso" method="POST" class="signin-form">

                                <div class="form-group py-4">
                                    <input type="text" id="tipo" name="tipo" class="form-control" placeholder="Usuario" required>
                                </div>

                                <div class="form-group pb-4">
                                    <input id="pass" name="pass" type="password" class="form-control"
                                           placeholder="Contrase&ntilde;a" required>
                                </div>

                                <div class="form-group pb-3">
                                    <div class="btn-group col-12 px-5" role="group">
                                        <button type="submit" class="form-control btn btn-success submit">Iniciar</button>
                                        <button type="button" class="form-control btn btn-light"><a class="text-decoration-none text-dark" href="Cliente/Registro.jsp">Registro</a></button>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="text-center">
                                        <h6><a class="text-dark text-decoration-none" href="Cliente/CambiarClave.jsp">Recuperar Contrase&ntilde;a</a></h6>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>
    <script src="Utiles/Frameworks/bootstrap/js/bootstrap.min.js"></script>
    <script src="Utiles/Frameworks/jquery/jquery.min.js"></script>

</html>