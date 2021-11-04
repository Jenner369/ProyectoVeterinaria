  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO MASCOTAS</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link href="<%=request.getContextPath()%>/Utiles/Css/RegistrarMascota.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <form>
                <div class="titulo">
                    <div class="card-body " align="center">
                        <h5 class="card-title">Registrar Mascota</h5>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputnombre" class="col-sm-2 col-form-label">Nombre</label>
                    <input type="nombre" class="form-control" id="inputs" placeholder="nombre">
                </div>
                <br>
                <div class="form-group row">
                    <label for="inputraza" class="col-sm-2 col-form-label">Raza</label>              
                    <input type="raza" class="form-control" id="inputs" placeholder="Raza">              
                </div>
                <br>
                <fieldset class="form-group">
                    <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">Sexo</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                <label class="form-check-label" for="gridRadios1">
                                    Hembra
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                <label class="form-check-label" for="gridRadios2">
                                    Macho
                                </label>
                            </div>

                        </div>
                    </div>
                </fieldset>
                <br>

                <div class="form-group">
                    <label for="inputTipo" class="form-label">Tipo</label>
                    <select class="form-select" >
                        <option value="">Selecciona el tipo</option>
                        <option value="1">Perro</option>
                        <option value="2">Gato</option>
                        <option value="3">Conejo</option>
                        <option value="4">otro</option>
                    </select>            
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-success submit">Registrar</button>
                </div>
            </form>
            <!---->
        </div>
    </body>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js"></script>

</html>
