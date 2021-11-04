
<%@page import="DAO.DAO_Servicio"%>
<%@page import="Beans.Beans_Mascota"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAO_Mascota"%>
<%@page import="DAO.DAO_Mascota"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Beans.Beans_Cita"%>
<%@page import="DAO.DAO_Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    int cita =Integer.parseInt(request.getParameter("idCita"));   
    DAO_Cita daoCita = new DAO_Cita();
    Beans_Cita bCita =  daoCita.BuscarCitaID(cita);
    String Entrada = bCita.getENTRADA();
    String Salida = bCita.getSALIDA();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    LocalDateTime dateTimeEntrada = LocalDateTime.parse(Entrada , formatter);
    LocalDateTime dateTimeSalida = LocalDateTime.parse( Salida , formatter);
    String fechaEntrada = dateTimeEntrada.toLocalDate().toString();
    String horaEntrada = dateTimeEntrada.toLocalTime().toString();
    String fechaSalida= dateTimeSalida.toLocalDate().toString();
    String horaSalida = dateTimeSalida.toLocalTime().toString();
    int ID_Mascota = daoCita.BuscarCitaID(cita).getMASCOTA_ID();
    int ID_Servicio = daoCita.BuscarCitaID(cita).getSERVICIO_ID();
    Double monto = daoCita.BuscarCitaID(cita).getMONTO();

    DAO_Mascota daoMascota = new DAO_Mascota();
    daoMascota.BuscarMascota_porID(ID_Mascota);
    String nombreMascota = daoMascota.BuscarMascota_porID(ID_Mascota).getNombre();
    
    DAO_Servicio daoServico = new DAO_Servicio();
    daoServico.BuscarServicios_ID(ID_Servicio);
    String nombreServicio = daoServico.BuscarServicios_ID(ID_Servicio).getNombre();
%> 


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/Utiles/Css/estilo_Eliminar_Cita.css" rel="stylesheet" type="text/css"/>
        <title> Eliminar Cita </title>
    </head>
    <body style="overflow-x: hidden  ">
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
                            <h3 align="center" class="display-6">Eliminar Cita </h3>
                            <h4 align="center" class="display-6">Información de la Cita <%out.print(cita);%></h4>
                            <br>
                            <form class="g-3" style="width: 100%">
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Entrada</label>
                                        <input type="date"  class="form-control" name ="fechaEntrada" value=<%=fechaEntrada%>  readonly="">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Entrada</label>
                                        <input type="time" class="form-control" name ="horaEntrada" value=<%=horaEntrada%>  readonly="" >                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Salida</label>
                                        <input type="date" class="form-control" name ="fechaSalida" value=<%=fechaSalida%> readonly="">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Salida</label>
                                        <input type="time" class="form-control" name="horaSalida" values=<%=horaEntrada%>  readonly="">                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">                    
                                        <div class="mb-3"><label class="form-label">Servicio</label>
                                            <div class="input-group">
                                        <input type="text" class="form-control" name="servicio" values=<%=nombreServicio%> readonly="" >                         

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="mb-3"><label class="form-label">Mascota</label>
                                            <div class="input-group">
                                        <input type="text" class="form-control" name="mascota" values=<%=nombreMascota%>  readonly="" >                         
                                            </div>
                                        </div>                                                
                                    </div> 
                                </div>
                                <div class="mb-3"><label class="form-label">Monto Total</label>
                                    <div class="input-group">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text" class="form-control" name="monto" values=<%=monto%>  aria-label="Dollar amount (with dot and two decimal places)" readonly="" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label" style="font-size:20px; text-align: center">¿Seguro de eliminar la cita?</label>
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