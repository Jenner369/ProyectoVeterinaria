<%-- 
    Document   : ReservaCita
    Created on : 24/09/2021, 12:22:18 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title>Reservar Cita</title>       
    </head>
    <body>
        <div class="container card  col-sm-6" style="width: 50%;margin: 5% 25% 5% 25%">
            <h2 style="margin-top: 2%">Reservar Cita!</h2><br/>
            <form name="formulariocita" >
                <div class="mb-3">
                    <label class="form-label">Id Cliente</label>
                    <input type="text" name="idCliente" class="form-control" placeholder="Id Cliente" required="">
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mb-3">
                        <label class="form-label"> Fecha de Entrada</label>
                        <input type="date" name ="fechaEntrada" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Entrada">
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                         <label class="form-label"> Fecha de Salida</label>
                        <input type="date" name ="fechaSalida" class="form-control" placeholder="dd/mm/aaaa" aria-label="Fecha de Salida">
                         </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mb-3"><label class="form-label">Monto</label>
                            <div class="input-group">
                              <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" required="">
                              <span class="input-group-text">$</span>
                              <span class="input-group-text">0.00</span>
                            </div>
                        </div>                        
                    </div>
                    <div class="col">
                        <div class="mb-3">
                        <label class="form-label"> ID Veterinario</label>
                        <input type="text" name ="idVeterinario" class="form-control" placeholder="Id Veterinario" aria-label="Id Veterinario" required="">
                        </div>                       
                    </div>    
                </div>
                <div class="mb-3">
                    <div class="form-check">
                        <label class="form-check-lable">Estoy de acuerdo con terminos y condiciones de privacidad</label>
                        <input type="checkbox" class="form-check-input" name="acuerdoprivacidad" checked>    
                    </div>
                </div>
                <button class="btn btn-success" style="width: 25% ;margin:1% 70% 1% 70%;border:none" type="submit">Enviar</button>
     
            </form>
            
        </div>
    </body>
</html>
