
<%@page import="DAO.DAO_Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    int cita =Integer.parseInt(request.getParameter("idCita"));   
%>  


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Utiles/Css/estiloEliminarCita.css" rel="stylesheet" type="text/css"/>
        <title> Eliminar Cita </title>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <section>
                <div class="row no-gutters">
                    <div class="col-xl-6 col-lg-14 register-bg">
                        <div class="position-absolute nombre p-4">
                            <h3 class=" font-weight-bold text-light display-6">Veterinaria Zeus</h3>
                        </div>
                    </div>
                    
                    <div class="col-xl-6 col-lg-12 d-flex">
                        <div class="container align-self-senter ">
                            <br>
                            <h3 align="center" class="display-6">Información Cita <%out.print(cita);%></h3>
                            <br>
                        <form  action="Servlet_Cita" metodo="post" class="g-3" style="width:100%"style="margin-left: 5%" >                                                   
                            <div class="form-group">
                                <label class="form-label" style="font-size: 18px;">¿Seguro de eliminar la cita?</label>
                            </div>
                            <div class="form-group">
                                <a class=" btn-success" href="Servlet_Cita?enlace=Eliminar&id=<%=cita%>">Eliminar
                            </div>
                        </form>

                    </div>
                </div>
            </section>
        </div>
    </body>
</html>