<%-- 
    Document   : ModificarCita
    Created on : 24/09/2021, 12:22:41 AM
    Author     : USER
--%>

<%@page import="Beans.Beans_Servicio"%>
<%@page import="DAO.DAO_Servicio"%>
<%@page import="Beans.Beans_Cita"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Beans_Mascota"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="DAO.DAO_Mascota"%>
<%@page import="DAO.DAO_Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int cita = Integer.parseInt(request.getParameter("idCita"));
    DAO_Cita daoCita = new DAO_Cita();
    Beans_Cita bCita = daoCita.BuscarCitaID(cita);
    String Entrada = bCita.getENTRADA();
    String Salida = bCita.getSALIDA();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    LocalDateTime dateTimeEntrada = LocalDateTime.parse(Entrada, formatter);
    LocalDateTime dateTimeSalida = LocalDateTime.parse(Salida, formatter);
    String fechaEntrada = dateTimeEntrada.toLocalDate().toString();
    String horaEntrada = dateTimeEntrada.toLocalTime().toString();
    String fechaSalida = dateTimeSalida.toLocalDate().toString();
    String horaSalida = dateTimeSalida.toLocalTime().toString();

    //int ID_Mascota = daoCita.BuscarCitaID(cita).getMASCOTA_ID();
    DAO_Cita daoCita2 = new DAO_Cita();
    int ID_Servicio = daoCita2.BuscarCitaID(cita).getSERVICIO_ID();

    DAO_Cita daoCita3 = new DAO_Cita();
    Double monto = daoCita3.BuscarCitaID(cita).getMONTO();

    DAO_Mascota daoMascota = new DAO_Mascota();
    List<Beans_Mascota> lMascota = new ArrayList<>();
    lMascota = daoMascota.BuscarMascota_PorIDCliente(Integer.parseInt(session.getAttribute("id").toString()));

    DAO_Servicio daoServicio = new DAO_Servicio();
    List<Beans_Servicio> lServicio = new ArrayList<>();
    lServicio = daoServicio.BuscarTodosServicios();
    
    out.print(fechaEntrada + horaEntrada);
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modificar cita</title>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Utiles/Css/estiloReserva.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap-datepicker.css" rel="stylesheet" type="text/css"/>
</head>

<html>
    <nav>
    </nav>
    <body style="overflow-x: hidden">
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
                            <h3 align="center" class="display-6"> Modificar Cita <%out.print(cita);%></h3>
                            <br>
                            <form class="g-3" style="width: 100%">
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Entrada</label>
                                        <input type="date" name ="fechaEntrada"  values=<%=fechaEntrada%> class="form-control" placeholder="dd/mm/aaaa" id="datePicker" aria-label="Fecha de Entrada">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Entrada</label>
                                        <input type="time" name="horaEntrada" values=<%=horaEntrada%> class="form-control" aria-label="Hora de Entrada">                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Salida</label>
                                        <input type="date" name ="fechaSalida" value=<%=fechaSalida%> class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Salida</label>
                                        <input type="time" name="horaSalida" values=<%=horaSalida%> class="form-control" aria-label="Hora de Salida">                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">                    
                                        <div class="mb-3"><label class="form-label">Servicio</label>
                                            <div class="input-group">
                                                <select class="form-select" id="inputGroupSelect04" aria-label="Seleccione Servicio">
                                                    <% for (int i = 0; i < lServicio.size(); i++) {%>
                                                    <option value="<%=lServicio.get(i).getID()%>" monto="<%lServicio.get(i).getCosto();%>" duracion="<%lServicio.get(i).getDuracion();%>" <%
                                                        if (lServicio.get(i).getID() == ID_Servicio) {
                                                            out.print("selected");
                                                        }
                                                            %>><%=lServicio.get(i).getNombre()%></option>

                                                    <%}%>
                                                </select>
                                                <button class="btn btn-outline btn-success" type="submit">Agregar</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="mb-3"><label class="form-label">Mascota</label>
                                            <div class="input-group">
                                                <select class="form-select" name="mascota" id="SelectMascota" aria-label="Seleccione Mascota">
                                                    <% for (int i = 0; i < lMascota.size(); i++) {%>
                                                    <option value="<%=lMascota.get(i).getID()%>" <%
                                                        if (lMascota.get(i).getID() == bCita.getMASCOTA_ID()) {
                                                            out.print("selected");
                                                        }
                                                            %>><%=lMascota.get(i).getNombre()%></option>

                                                    <%}%>
                                                </select>                          
                                            </div>
                                        </div>                                                
                                    </div>
                                </div>
                                <div class="mb-3"><label class="form-label">Monto Total</label>
                                    <div class="input-group">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text" class="form-control" value="<%=monto%>" aria-label="Dollar amount (with dot and two decimal places)" required="">
                                    </div>
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
                                    <button class="btn btn-success" style="width: 25% ;margin:1% 70% 1% 70%;border:none" type="submit">Enviar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Js/scripDatePicker.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js"></script>
    </body>
</html>


