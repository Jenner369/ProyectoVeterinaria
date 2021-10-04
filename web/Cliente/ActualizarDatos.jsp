<%-- 
    Document   : ActualizarDatos
    Created on : 24/09/2021, 12:21:42 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar datos</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../Utiles/Css/estilosActualizarDatos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <section>
                <div class="row no-gutters">
                    <div class="col-xl-6 col-lg-14 register-bg">
                        <div class="position-absolute nombre p-4">
                            <h3 class="font-weight-bold text-light display-6">Veterinaria Zeus</h3>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 d-flex">
                        <div class="container align-self-senter">
                            <br>
                            <h3 align="center" class="display-6">Actualice sus datos</h3>
                            <br>
                            <form class="row g-3">
                                <div class="form-group">
                                    <label for="inputEmail4" class="form-label">Usuario</label>
                                    <input type="email" class="form-control" id="inputEmail4">
                                </div>
                                <div class="form-group">
                                    <label for="inputName" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="inputName">
                                </div>
                                <div class="form-group">
                                    <label for="inputLastName" class="form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="inputLastName">
                                </div>
                                <div class="form-group">
                                    <label for="inputGenero" class="form-label">Género</label>
                                    <select id="inputGenero" class="form-select">
                                        <option selected>Femenino</option>
                                        <option>Masculino</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-success submit">Guardar cambios</button>
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
