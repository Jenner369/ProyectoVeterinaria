<%@include file="/Utiles/Jsp/validation.jsp"%>
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
                        <form action="Servlet_Ingreso" method="POST" class="signin-form">
                            <div class="row justify-content-center p-3">
                                <div class="btn-group" role="group" aria-label="Basic radio toggle button group">

                                    <input onclick="ShowOptions()" type="radio" class="btn-check" name="tipo" id="btnradio1" autocomplete="off" value="cliente"
                                           checked>
                                    <label class="btn btn-outline-success" for="btnradio1">Cliente</label>

                                    <input onclick="HideOptionsForVeterinario()" type="radio" class="btn-check" name="tipo" id="btnradio2" autocomplete="off" value="veterinario">
                                    <label class="btn btn-outline-light" for="btnradio2">Veterinario</label>

                                </div>
                            </div>
                            <!--Formulario-->
                            <div class="row justify-content-center">

                                <h4 class="text-center">¿Ya tienes una cuenta?</h4>

                                <div class="form-group py-4">
                                    <input type="text" id="user" name="user" class="form-control" placeholder="Usuario" required>
                                </div>

                                <div class="form-group pb-4">
                                    <input id="pass" name="pass" type="password" class="form-control"
                                           placeholder="Contrase&ntilde;a" required>
                                </div>

                                <div class="form-group pb-3">
                                    <div class="btn-group col-12 px-5" role="group">
                                        <button type="submit" class="form-control btn btn-success submit">Iniciar</button>
                                        <button type="button" class="form-control btn btn-light" id="Registro">Registro</button>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="text-center" id="Recuperar">
                                        <h6><a class="text-dark text-decoration-none" href="Cliente/CambiarClave.jsp">Recuperar Contrase&ntilde;a</a></h6>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </body>
    <script src="Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="Utiles/Frameworks/bootstrap/js/bootstrap.min.js"></script>
    <script>
        function HideOptionsForVeterinario() {
            $('#Registro').css('display', 'none');
            $('#Recuperar').css('display', 'none');
            console.log("entre");
        }

        function ShowOptions() {
            $('#Registro').css('display', 'block');
            $('#Recuperar').css('display', 'block');
            console.log("entre2");
        }
    </script>

</html>