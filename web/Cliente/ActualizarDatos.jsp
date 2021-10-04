<%-- 
    Document   : ActualizarDatos
    Created on : 24/09/2021, 12:21:42 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container card  col-sm-6" style="width: 45%;margin: 5% 24% 5% 24%">
            <h2 style="margin-top: 2%">Actualizar Cita!</h2><br/>
            <form name="formulariocita" >               
                <div class="row">
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Fecha de Entrada</label>
                            <input type="date" name ="fechaEntrada" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada">
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Hora de Entrada</label>
                            <input type="time" name="horaEntrada" class="form-control" aria-label="Hora de Entrada">                         
                        </div>                    
                    </div>
                </div>
                <div class="row">
                    <div class="col">

                        <label class="form-label"> Fecha de Salida</label>
                        <input type="date" name ="fechaSalida" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada">

                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label class="form-label"> Hora de Salida</label>
                            <input type="time" name="horaSalida" class="form-control" aria-label="Hora de Salida">                         
                        </div>                    
                    </div>
                </div>
                <div class="row">
                    <div class="col">                    
                        <div class="mb-3"><label class="form-label">  Servicio</label>
                            <div class="input-group">
                                <select class="form-select" id="inputGroupSelect04" aria-label="Seleccione Servicio">
                                    <option selected> ...</option>
                                    <option value="1">Consulta Medica</option>
                                    <option value="2"> Baño & Peluqueria</option>
                                    <option value="3">Vacunas & Desparacitación</option>
                                    <option value="3">Cirugía</option>
                                </select>
                                <button class="btn btn-outline btn-success" type="submit">Agregar</button>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3"><label class="form-label">Mascota</label>
                            <div class="input-group">
                                <input type="text" class="form-control"  required="">                               
                            </div>
                        </div>                        
                    </div> 
                    <div class="col">
                        <div class="mb-3"><label class="form-label">Monto Total</label>
                            <div class="input-group">
                                <span class="input-group-text">S/.</span>
                                <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" required="">
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

                <div class="mb-3">
                    <div class="form-check">
                        <label class="form-check-lable">Estoy de acuerdo con terminos y condiciones de privacidad</label>
                        <input type="checkbox" class="form-check-input" name="acuerdoprivacidad" checked>    
                    </div>
                </div>
                <button class="btn btn-success" style="width: 25% ;margin:1% 70% 1% 70%;border:none" type="submit">Actualizar</button>
            </form>
        </div>
    </body>
</html>
