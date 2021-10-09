
<%@page import='DAO.DAO_Cita' %>
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
                            <h3 align="center" class="display-6">Información Cita <%out.print(IdCita)%></h3>
                            <br>
                        <form class="g-3" style="width:100%"style="margin-left: 5%">                         
                            <div class="row">
                                <div class="col">
                                    <label class="form-label"> Fecha de Entrada</label>
                                    <input type="date" name ="fechaEntrada" class="form-control" placeholder="dd/mm/aaaa" id="datePicker" aria-label="Fecha de Entrada"  readonly>
                                </div>
                                <div class="col">
                                    <label class="form-label"> Hora de Entrada</label>
                                    <input type="time" name="horaEntrada" class="form-control" aria-label="Hora de Entrada"  readonly>                         
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label class="form-label"> Fecha de Salida</label>
                                    <input type="date" name ="fechaSalida" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada"  readonly>
                                </div>
                                <div class="col">
                                    <label class="form-label"> Hora de Salida</label>
                                    <input type="time" name="horaSalida" class="form-control" aria-label="Hora de Salida"  readonly>                         
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="mb-3"><label class="form-label">Mascota</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control"  readonly>                               
                                        </div>
                                    </div>                        
                                </div> 
                                <div class="col">
                                    <div class="mb-3"><label class="form-label">Monto Total</label>
                                        <div class="input-group">
                                            <span class="input-group-text">S/.</span>
                                            <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)"  readonly>
                                        </div>
                                    </div>                        
                                </div>

                            </div>                          
                            <div class="form-group">
                                <label class="form-label" style="font-size: 18px;">¿Seguro de eliminar la cita?</label>
                            </div>
                            <div class="form-group" align="center">
                                <button class="btn btn-success" style="border:none;font-size: 18px;" type="submit">Eliminar Cita</button>
                            </div>
                        </form>

                    </div>
                </div>
            </section>
        </div>
    </body>
</html>