<%-- 
    Document   : EliminarCuenta
    Created on : 24/09/2021, 12:21:50 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cuenta</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../Utiles/Css/estiloEliminarCuenta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        
        <div class="container-fluid">
            <section class="m-5">
                <div class="container align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-4 bg bg-white bg-opacity-25 rounded-3 p-5">
                            <h3 align="center" class="display-6">Eliminar la cuenta</h3>
                            <br>
                            <p>Hola, </p>
                            <p>Lamentamos que quiera eliminar tu cuenta, esperamos volver a verte pronto.</p>
                            <form action="Servlet_Registro?modo=eliminar" class="row g-3">
                                <div class="form-group">
                                    <label for="inputRazon" class="form-label">¿Por qué quiere eliminar tu cuenta?</label>
                                    <select id="inputRazon" class="form-select">
                                        <option selected>...</option>
                                        <option>Ya no quiero ser clienta de la veterinaria.</option>
                                        <option>La atención no es buena.</option>
                                        <option>No quiero atender a mis mascotas en esta veterinaria.</option>
                                        <option>Otro motivo.</option>
                                    </select>
                                </div>
                                
                                <div class="form-group">
                                    <label for="PassActual" class="form-label">Para continuar, introduzca su contraseña</label>
                                    <input type="password" class="form-control" id="PassActual">
                                </div>
                                
                                <div class="form-group" align="center">
                                    <input type="radio" class="btn-check" name="btnradio" id="btnradio1"
                                           autocomplete="off" checked>
                                    <label class="btn btn-outline-success" for="btnradio1">Eliminar cuenta</label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Utiles/Frameworks/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../Utiles/Js/loadMenuCliente.js" type="text/javascript"></script>
    </body>
</html>
