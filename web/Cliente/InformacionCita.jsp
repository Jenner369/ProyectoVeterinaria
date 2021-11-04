<%-- 
    Document   : InformacionCita
    Created on : 03/10/2021, 08:44:03 PM
    Author     : Cristina Céspedes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Información Cita</title>
    <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/Utiles/Css/estiloReserva.css" rel="stylesheet" type="text/css"/>
</head>

<html>
    <body style="overflow-x: hidden  ">
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
                            <h3 align="center" class="display-6">Información Cita</h3>
                            <br>
                            <form class="g-3" style="width: 100%">
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
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Servicio</th>
                                            <th scope="col"> Precio</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td></td>
                                            <td></td>
                                        </tr>                       
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js"></script>
    </body>
</html>


