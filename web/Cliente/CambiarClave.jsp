<%-- 
    Document   : CambiarClave
    Created on : 24/09/2021, 12:21:34 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar cuenta</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../Utiles/Css/estiloCambioClave.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        
        <div class="container-fluid">
            <section>
                <div class="container align-self-center">
                    <h3 align="center" class="display-6">Actualizando contraseña</h3>
                    <br>
                    <form class="row g-3">
                        <div class="form-group">
                            <label for="inputPassword4" class="form-label">Actual</label>
                            <input type="password" class="form-control" id="inputPassword4">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword4" class="form-label">Nueva</label>
                            <input type="password" class="form-control" id="inputPassword4">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword4" class="form-label">Repita contraseña nueva</label>
                            <input type="password" class="form-control" id="inputPassword4">
                        </div>
                        <div class="form-group" align="center">
                            <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"
                                checked>
                            <label class="btn btn-outline-success" for="btnradio1">Guardar cambios</label>
                            
                            <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                            <label class="btn btn-outline-success" for="btnradio2">Cancelar</label>
                        </div>
                    </form>
                </div>
            </section>
        </div>
        
        <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Utiles/Frameworks/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../Utiles/Js/loadMenuCliente.js" type="text/javascript"></script>
    </body>
</html>
