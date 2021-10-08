
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Date dDate = new Date();
    SimpleDateFormat dfDate = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat dfTime = new SimpleDateFormat("HH:mm");
    String DateEntrada = dfDate.format(dDate);
    String TimeEntrada = dfTime.format(dDate);
%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reserva Cita</title>
    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../Utiles/Css/estiloReserva.css" rel="stylesheet" type="text/css"/>
    <link href="../Utiles/Frameworks/bootstrap/css/bootstrap-datepicker.css" rel="stylesheet" type="text/css"/>
</head>

<html>
    <body style="overflow-x: hidden" class="bg-light" >
        <div class="container-fluid">
            <section>
                <div class="row no-gutters">
                    <div class="col-xl-6 col-lg-14 register-bg position-relative">
                        <div class="card card-body border-0 position-absolute nombre p-3 bg-success bg-gradient">
                            <h3 class=" font-weight-bold text-light display-6">Veterinaria Zeus</h3>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 d-flex">
                        <div class="container mt-2 pt-1 align-self-start">
                            <br>
                            <h3 align="center" class="display-6">Reservar Cita</h3>
                            <br>
                            <form action="Servlet_Cita" method="POST" class="g-3" style="width: 100%">
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Entrada</label>
                                        <input type="date" id="fechaEntrada" name="fechaEntrada" value="<%=DateEntrada%>" class="form-control" placeholder="dd/mm/aaaa" id="datePicker" aria-label="Fecha de Entrada">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Entrada</label>
                                        <input type="time" id="horaEntrada" name="horaEntrada" value="<%=TimeEntrada%>" class="form-control" aria-label="Hora de Entrada">                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="form-label"> Fecha de Salida</label>
                                        <input type="date" readonly="" name ="fechaSalida" id="fechaSalida" value="" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada">
                                    </div>
                                    <div class="col">
                                        <label class="form-label"> Hora de Salida</label>
                                        <input type="time" readonly="" name="horaSalida" id="horaSalida" value="" class="form-control" aria-label="Hora de Salida">                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">                    
                                        <div class="mb-3"><label class="form-label">  Servicio</label>
                                            <div class="input-group">
                                                <select class="form-select" id="servicioMascota" aria-label="Seleccione Servicio">
                                                    <option value="1" duracion="30" monto="98" selected>Consulta Medica</option>
                                                    <option value="2" duracion="30" monto="938"> Baño & Peluqueria</option>
                                                    <option value="3" duracion="30" monto="8">Vacunas & Desparacitación</option>
                                                    <option value="4" duracion="30" monto="928">Cirugía</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="mb-3"><label class="form-label">Mascota</label>
                                            <div class="input-group">
                                                <select class="form-select" id="SelectMascota" aria-label="Seleccione Mascota">
                                                    <option value="1" selected>Doki</option>
                                                    <option value="2">Otro</option>
                                                    <option value="3">Zeus</option>
                                                    <option value="4">Kaiser</option>
                                                </select>                             
                                            </div>
                                        </div>                        
                                    </div> 
                                </div>
                                <div class="mb-3"><label class="form-label">Monto Total</label>
                                    <div class="input-group">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text" value="0" readonly="" id="montoTotal" name="montoTotal" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" required="">
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
                                <input type="hidden" id="opcion" name="opcion" value="agregar" style="display: none;">
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../Utiles/Frameworks/jquery/jquery.min.js"></script>
        <script>
            $('#servicioMascota').change(function () {
                var id = $(this).children(":selected");
                $('#montoTotal').attr('value', id.attr("monto"));
                //CONVERTIR A TIPO DATE
                let dateObj = new Date($("#fechaEntrada").attr("value") + "T" + $("#horaEntrada").attr("value"));
                console.log(dateObj.toDateString());
                //SUMARLE

                dateObj.setMinutes(dateObj.getMinutes()+parseInt(id.attr('duracion')));
                var curr_day = dateObj.getDate();
                var curr_month = dateObj.getMonth()+1;
                var curr_year = dateObj.getFullYear();

                var curr_hour = dateObj.getHours();
                var curr_min = dateObj.getMinutes();

                if (curr_day < 10) {
                    curr_day = "0" + curr_day;
                }
                if (curr_month < 10) {
                    curr_month = "0" + curr_month;
                }
                if (curr_hour < 10) {
                    curr_hour = "0" + curr_hour;
                }
                if (curr_min < 10) {
                    curr_min = "0" + curr_min;
                }

                let dateReturn = curr_year + "-" + curr_month + "-" + curr_day;
                let timeReturn = curr_hour + ":" + curr_min;
                //RETORNAR
                $("#fechaSalida").attr("value", dateReturn);
                $("#horaSalida").attr("value", timeReturn);
            });
            $("#fechaEntrada").on("change", function () {
                var selected = $(this).val();
                console.log(selected);
                $("#fechaEntrada").attr("value", selected.toString());
            });
            $("#horaEntrada").on("change", function () {
                var selected = $(this).val();
                console.log(selected);
                $("#horaEntrada").attr("value", selected.toString());
            });
        </script>
        <script src="../Utiles/Js/scripDatePicker.js" type="text/javascript"></script>
    </body>
</html>


