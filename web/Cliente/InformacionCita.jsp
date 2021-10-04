<%-- 
    Document   : InformacionCita
    Created on : 03/10/2021, 08:44:03 PM
    Author     : Cristina Céspedes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información Cita</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container card  col-sm-6" style="width: 45%;margin: 5% 24% 5% 24%">
            <h2 style="margin-top: 2%"> Información de la Cita</h2><br/>
            <form name="formulariocita" >               
                <div class="row">
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Fecha de Entrada</label>
                            <input type="date" name ="fechaEntrada" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada" readonly>
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Hora de Entrada</label>
                            <input type="time" name="horaEntrada" class="form-control" aria-label="Hora de Entrada" readonly>                         
                        </div>                    
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Fecha de Salida</label>
                            <input type="date" name ="fechaSalida" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada" readonly>
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Hora de Salida</label>
                            <input type="time" name="horaSalida" class="form-control" aria-label="Hora de Salida" readonly>                         
                        </div>                    
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mb-3"><label class="form-label">Mascota</label>
                            <div class="input-group">
                                <input type="text" class="form-control"   readonly>                               
                            </div>
                        </div>                        
                    </div> 
                    <div class="col">
                        <div class="mb-3"><label class="form-label">Monto Total</label>
                            <div class="input-group">
                                <span class="input-group-text">S/.</span>
                                <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" readonly>
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
    </body>
</html>