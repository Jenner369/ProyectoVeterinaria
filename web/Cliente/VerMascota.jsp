<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mascotas</title>
        <link rel="stylesheet" href="../Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link href="../Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="../Utiles/Css/VerMascota.css">
    </head>

    <body>
        <nav>
        </nav>
        <div class="container">
            <div class="card my-5">
                <div class="card-header text-center m-0">
                    <p class="display-6 m-0">Mascotas</p>
                </div>
                <div class="card-body py-5">
                    <div class="container" style="height: fit-content">
                        <div class="form-group pb-3">
                            <button onclick="$('#ModalAgregar').modal('show');" type="submit"
                                class=" btn btn-success submit">Agregar</button>
                        </div>
                        <table class="table table-hover table-condensed table-bordered text-center">
                            <tr class="bg-secondary text-white">
                                <th>C&oacute;digo</th>
                                <th>Nombre</th>
                                <th>Raza</th>
                                <th>Sexo</th>
                                <th>Tipo</th>
                                <th colspan="3">Acciones</th>
                            </tr>
                            <tr id="iconos">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <a onclick="$('#ModalImagen').modal('show');"><i
                                            class="bi bi-image h4 text-secondary"></i></a>
                                </td>
                                <td>
                                    <a onclick="$('#ModalModificar').modal('show');"><i
                                            class="bi bi-pencil-square h4 text-warning"></i></a>
                                </td>
                                <td>
                                    <a onclick="$('#ModalEliminar').modal('show');"><i
                                            class="bi bi-trash h4 text-danger"></i></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
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

                        <a onclick="$('#modaleditar').modal('show');"><i class="bi bi-pencil-square h4" class="enlace"></i></a>
                        <a href=""><i class="bi bi-trash h4" class="enlace"></i></a>
                        <a href=""><i class="bi bi-image h4" class="enlace"></i></a>

        <!-- Modal Agregar-->
        <div class=" modal fade" id="ModalAgregar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

                    </td>
                </tr>
            </table>
            <div>
                <button onclick="$('#modalEjemplo').modal('show');">Prueba</button>
            </div>
        </div>

        <!-- Modal Modificar-->
        <div class=" modal fade" id="ModalModificar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" tabindex="-1" id="modaleditar">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                           aqui form
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Guardar Cambios</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="../Utiles/Frameworks/jquery/jquery.min.js" text="text/javascript"></script>
    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" text="text/javascript"></script>
    <script src="../Utiles/Js/loadMenuCliente.js" text="text/javascript"></script>

    </html>