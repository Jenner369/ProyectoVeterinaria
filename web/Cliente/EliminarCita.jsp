<%-- 
    Document   : EliminarCita
    Created on : 24/09/2021, 12:22:49 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title> Eliminar Cita </title>
    </head>
    <body>
        <div class="container card  col-sm-6" style="width: 30%;margin: 5% 25% 5% 25%">
            <h2 style="margin-top: 2%">Eliminar Cita!</h2>
             <form name="formularioEliminar">
                <label> Ingrese Id para confirmación</label>
                <div class="input-group">
                      <input class="form-control" type="tex" name="idCita">
                    <button class="btn btn-outline-secondary" type="submit">Eliminar</button>
                </div><br/>
            </form>
        </div>                 
    </body>
</html>