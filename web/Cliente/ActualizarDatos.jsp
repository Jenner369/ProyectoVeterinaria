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
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Css/estilosActualizarDatos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <section>
                <div class="row no-gutters">
                    <div class="col-xl-6 col-lg-14 register-bg">
                        <div class="position-absolute nombre p-4">
                            
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 d-flex">
                        <div class="container align-self-senter">
                            <br>
                            <h3 align="center" class="display-6">Actualice sus datos</h3>
                            <br>
                            <form action="Servlet_Registro?modo=modificar" class="row g-3">
                                <div class="form-group">
                                    <label for="inputName" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre">
                                </div>
                                <div class="form-group">
                                    <label for="inputLastName" class="form-label">Apellido Paterno</label>
                                    <input type="text" class="form-control" id="paterno" name="paterno">
                                </div>
                                <div class="form-group">
                                    <label for="inputLastName" class="form-label">Apellido Materno</label>
                                    <input type="text" class="form-control" id="materno" name="materno">
                                </div>
                                <div class="form-group">
                                    <label for="user" class="form-label">Usuario</label>
                                    <input type="email" class="form-control" id="user" name="user">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword4" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="pass" name="pass">
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
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js" type="text/javascript"></script>
    </body>
</html>
