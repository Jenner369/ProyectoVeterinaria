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


        </div>
        <div class=" modal fade" id="ModalImagen" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="action" enctype="multipart/form-data">
                            
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Guardar Cambios</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>    

        <!-- Modal Modificar-->
        <div class=" modal fade" id="ModalModificar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <form>
                                <div class="titulo">
                                    <div class="card-body " align="center">
                                        <h5 class="card-title">Modificar Mascota</h5>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputnombre" class="col-sm-2 col-form-label">Nombre</label>
                                    <input type="nombre" class="form-control" id="inputs" placeholder="nombre">
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="inputraza" class="col-sm-2 col-form-label">Raza</label>              
                                    <input type="raza" class="form-control" id="inputs" placeholder="Raza">              
                                </div>
                                <br>
                                <fieldset class="form-group">
                                    <div class="row">
                                        <legend class="col-form-label col-sm-2 pt-0">Sexo</legend>
                                        <div class="col-sm-10">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                                <label class="form-check-label" for="gridRadios1">
                                                    Hembra
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                                <label class="form-check-label" for="gridRadios2">
                                                    Macho
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                </fieldset>
                                <br>

                                <div class="form-group">
                                    <label for="inputTipo" class="form-label">Tipo</label>
                                    <select class="form-select" >
                                        <option value="">Selecciona el tipo</option>
                                        <option value="1">Perro</option>
                                        <option value="2">Gato</option>
                                        <option value="3">Conejo</option>
                                        <option value="4">otro</option>
                                    </select>            
                                </div>
                                <br>          
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Guardar Cambios</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class=" modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalVerLabel"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" align="center">
                        <div class="titulo">
                            <div class="card-body " align="center">
                                <h5 class="card-title">Eliminar Mascota</h5>
                            </div>
                        </div>
                        <div>                      
                            ¿Esta seguro que desea eliminar a su mascota del registro? 
                            <br>
                            <br>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Confirmar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>    


    </body>
    <script src="../Utiles/Frameworks/jquery/jquery.min.js" text="text/javascript"></script>
    <script src="../Utiles/Frameworks/bootstrap/js/bootstrap.min.js" text="text/javascript"></script>
    <script src="../Utiles/Js/loadMenuCliente.js" text="text/javascript"></script>

</html>