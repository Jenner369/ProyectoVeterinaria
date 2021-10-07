<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro cliente</title>
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Css/estilosRegistro.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
                            <h3 align="center" class="display-6">Registrate gratis</h3>
                            <br>
                            <form class="row g-3">
                                <div class="form-group">
                                    <label for="inputEmail4" class="form-label">Usuario</label>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="Ejm. Clara09">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword4" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="inputPassword4">
                                </div>
                                <div class="form-group">
                                    <label for="inputName" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="inputName" placeholder="Ejm. Clara Celeste">
                                </div>
                                <div class="form-group">
                                    <label for="inputLastName" class="form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="inputLastName" placeholder="Ejm. Chavez Cotrina">
                                </div>
                                <div class="form-group">
                                    <label for="inputGenero" class="form-label">Género</label>
                                    <select id="inputGenero" class="form-select">
                                        <option selected>Femenino</option>
                                        <option>Masculino</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck">
                                        <label class="form-check-label" for="gridCheck">
                                            Acepto términos y condiciones de la empresa
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-success submit">Registrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js" type="text/javascript"></script>
    </body>
</html>
