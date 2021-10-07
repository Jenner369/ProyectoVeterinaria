<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link href="../Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link href="../Utiles/Css/estilo_vermascota.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav>
        </nav>
        <div class="container-fluid">
            <div class="card-body " align="center">
                <h2 class="card-title"> Mascotas</h2>
            </div>
            <table class="table table-striped  table-responsive"> 
                <tr>
                    <th>Código </th> 
                    <th>Nombre</th>
                    <th>Raza</th>
                    <th>Sexo</th>
                    <th>Tipo</th>
                    <th>     </th>
                </tr>
                <tr id="iconos">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>

                        <a href=""><i class="bi bi-pencil-square h4" class="enlace"></i></a>
                        <a href=""><i class="bi bi-trash h4" class="enlace"></i></a>
                        <a href=""><i class="bi bi-image h4" class="enlace"></i></a>


                    </td>
                </tr>
            </table>
            <div>
                <button onclick="$("#modalEjemplo").modal('show');">Prueba</button>
            </div>
            <div class="form-group">
                <button type="submit" class=" btn btn-success submit">Registrar</button>
            </div>
        </div>

    </body>

    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Utiles/Frameworks/jquery/jquery.min.js"></script>
    <script src="../Utiles/Js/loadMenuCliente.js"></script>
</html>
