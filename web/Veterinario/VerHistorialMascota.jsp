<!%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historial de Mascotas</title>
        <link rel="stylesheet" href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Utiles/Css/HistorialMascota.css">
    </head>

    <body>
        <nav></nav>
        <div class="container">
            <div class="card my-5">
                <div class="card-header text-center m-0">
                    <p class="display-6 m-0">Historial de Mascotas</p>
                </div>
                <div class="card-body py-5">
                    <div style="height: fit-content">
                        <table class="table table-hover table-condensed table-bordered text-center">
                            <tr class="bg-secondary text-white">
                                <td>ID</td>
                                <td>Nombre</td>
                                <td>Dueño</td>
                                <td>Ver Historial</td>
                            </tr>
                            <tr>
                                <td>
                                    <!%Todos.get(i).getID()%>1020
                                </td>
                                <td>
                                    <!%Todos.get(i).getNombre()%>Dooby
                                </td>
                                <td>Hector</td>
                                <td><button class="btn btn-success" data-toggle="modal" data-target="#ModalVer"">Ver
                                        Historial</button></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <button class="btn btn-success" data-toggle="modal" data-target="#ModalVer"">Ver
        Historial</button>

        <!-- Modal -->
        <div class=" modal fade" id="ModalVer" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary"
                                data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <script src="../Utiles/Frameworks/jquery/jquery.min.js" text="text/javascript"></script>
    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" text="text/javascript"></script>
    <script src="../Utiles/Js/loadMenuVeterinario.js" text="text/javascript"></script>

</html>