<%-- 
    Document   : EliminarCita
    Created on : 24/09/2021, 12:22:49 AM
    Author     : USER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    int cita =Integer.parseInt(request.getParameter("IdCita"));
%>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Utiles/Css/estiloEliminarCita.css" rel="stylesheet" type="text/css"/>
        <title> Eliminar Cita </title>
    </head>
    <body>
    <body>
        <nav>
        </nav>

        <div class="container-fluid">
            <section class="m-5">
                <div class="container align-self-center">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-4 bg bg-white bg-opacity-25 rounded-3 p-5">
                            <h3 align="center" class="display-6" style="color: black">Eliminar Cita</h3>
                            <br>
                            <form>
                                <div class="form-group">
                                    <label class="form-label">¿Seguro de eliminar la cita <%out.print(cita);%>?</label>
                                </div>
                                <div class="form-group" align="center">
                                    <button class="btn btn-success" style="border:none" type="submit">Eliminar Cita</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>