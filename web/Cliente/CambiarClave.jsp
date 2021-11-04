<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambiar contraseña</title>
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Css/estiloCambioClave.css" rel="stylesheet" type="text/css" />
    </head>

    <body class="text-white">
        <nav>
        </nav>

        <div class="container-fluid">
            <section class="m-5">
                <div class="container align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-4 bg bg-white bg-opacity-25 rounded-3 p-5">
                            <h3 align="center" class="display-6">Actualizando contraseña</h3>
                            <br>
                            <form class="row g-3">
                                <div class="form-group">
                                    <label for="PassActual" class="form-label">Actual</label>
                                    <input type="password" class="form-control" id="PassActual">
                                </div>
                                <div class="form-group">
                                    <label for="PassNueva" class="form-label">Nueva</label>
                                    <input type="password" class="form-control" id="PassNueva">
                                </div>
                                <div class="form-group">
                                    <label for="PassNueva2" class="form-label">Repita contraseña nueva</label>
                                    <input type="password" class="form-control" id="PassNueva2">
                                </div>
                                <div class="form-group" align="center">
                                    <input type="radio" class="btn-check" name="btnradio" id="btnradio1"
                                           autocomplete="off" checked>
                                    <label class="btn btn-outline-success" for="btnradio1">Guardar cambios</label>

                                    <input type="radio" class="btn-check" name="btnradio" id="btnradio2"
                                           autocomplete="off">
                                    <label class="btn btn-outline-light" for="btnradio2">Cancelar</label>
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