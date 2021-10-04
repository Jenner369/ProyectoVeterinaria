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
<<<<<<< HEAD
        <title>Actualizar datos</title>
        <link href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../Utiles/Css/estilosActualizarDatos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <section>
                <div class="row no-gutters">
                    <div class="col-xl-6 col-lg-14 register-bg">
                        <div class="position-absolute nombre p-4">
                            <h3 class="font-weight-bold text-light display-6">Veterinaria Zeus</h3>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 d-flex">
                        <div class="container align-self-senter">
                            <br>
                            <h3 align="center" class="display-6">Actualice sus datos</h3>
                            <br>
                            <form class="row g-3">
                                <div class="form-group">
                                    <label for="inputEmail4" class="form-label">Usuario</label>
                                    <input type="email" class="form-control" id="inputEmail4">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword4" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="inputPassword4">
                                </div>
                                <div class="form-group">
                                    <label for="inputName" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="inputName">
                                </div>
                                <div class="form-group">
                                    <label for="inputLastName" class="form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="inputLastName">
                                </div>
                                <div class="form-group">
                                    <label for="inputGenero" class="form-label">Género</label>
                                    <select id="inputGenero" class="form-select">
                                        <option selected>Femenino</option>
                                        <option>Masculino</option>
                                    </select>
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
                                    <button type="submit" class="form-control btn btn-success submit">Registrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Utiles/Frameworks/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../Utiles/Js/loadMenuCliente.js" type="text/javascript"></script>
=======
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
>>>>>>> 2fa28818714c2ea20775cb1f2a486d3113dd37fc
    </body>
</html>
