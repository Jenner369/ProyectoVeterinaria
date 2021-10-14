<%@page import="Beans.Beans_Mascota"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DAO_Mascota"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mascotas</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Utiles/Css/VerMascota.css">
    </head>

    <body>

        <%
            int id = (int) session.getAttribute("id");
        %>
        <nav>
        </nav>
        <div class="container">
            <div class="card my-5">
                <!--Header de la Tarjeta-->
                <div class="card-header text-center m-0">
                    <p class="display-6 m-0">Mascotas</p>
                </div>
                <!--Body de la Tarjeta-->
                <div class="card-body py-5">
                    <div class="container" style="height: fit-content">

                        <div class="form-group pb-3 text-end">
                            <button onclick="$('#ModalAgregar').modal('show');" type="submit"
                                    class=" btn btn-success bi bi-plus-lg submit"> Agregar</button>
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
                            <%
                                DAO_Mascota Mascotas = new DAO_Mascota();
                                List<Beans_Mascota> ListaMascotas = Mascotas.BuscarMascotaTodos();
                                for (int i = 0; i < ListaMascotas.size(); i++) {
                            %>
                            <tr id="iconos">
                                <td><% out.print(ListaMascotas.get(i).getID()); %></td>
                                <td><% out.print(ListaMascotas.get(i).getNombre()); %></td>
                                <td><% out.print(ListaMascotas.get(i).getRaza()); %></td>
                                <td><% out.print(ListaMascotas.get(i).getSexo()); %></td>
                                <td><% out.print(ListaMascotas.get(i).getTipo()); %></td>
                                <td>
                                    <button onclick="$('#ModalImagen').modal('show');" type ="button" 
                                            class="btn btn-secondary bi bi-image-alt"></button>
                                </td>
                                <td>
                                    <button onclick="$('#ModalModificar').modal('show');" type ="button" 
                                            class="btn btn-warning bi bi-pencil-fill text-white"></button>
                                </td>
                                <td>
                                    <button onclick="$('#ModalEliminar').modal('show');" type ="button" 
                                            class="btn btn-danger bi bi-trash-fill"></button>
                                    <input type="hidden" id="IdCliente<%out.print(ListaMascotas.get(i).getID());%>"
                                           name="IdCliente<%out.print(ListaMascotas.get(i).getID());%>" 
                                           value="<%out.print(ListaMascotas.get(i).getID());%>">
                                </td>
                                <%
                                    }
                                %>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>

        <!--Modal de Imagen-->
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
        <%
            DAO_Mascota ModificarMascota = new DAO_Mascota();
            Beans_Mascota NuevaMascota = ModificarMascota.BuscarMascota_porID(60);
        %>
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
                            <form id="ModificarMascota" action="Servlet_Mascota?accion=modificar" method="post">
                                <!--Body-->
                                <div class="modal-body">
                                    <div class="container-fluid">
                                        <div class="form-group mb-2">
                                            <label for="InMNombre" class="form-label">Nombre</label>
                                            <input type="text" class="form-control" id="InMNombre" name="NombreM"
                                                   value="<% out.print(NuevaMascota.getNombre()); %>" required>
                                        </div>

                                        <div class="form-group mb-2">
                                            <label for="InMRaza" class="form-label">Raza</label>
                                            <input type="text" class="form-control" id="InMRaza" name="RazaM"
                                                   value="<% out.print(NuevaMascota.getRaza()); %>" required>
                                        </div>
                                        
                                        <div class="form-group mb-2">
                                            <label class="form-check-label">Sexo</label>
                                            <div class="ps-5">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="SexoM" id="RadioHembraM"
                                                           value="H">
                                                    <label class="form-check-label" for="RadioHembraM">
                                                        Hembra
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="SexoM" id="RadioMachoM"
                                                           value="M">
                                                    <label class="form-check-label" for="RadioMachoM">
                                                        Macho
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="InMTipo" class="form-label">Tipo</label>
                                            <select class="form-select" id="InMTipo" name="TipoM">
                                                <option value="Perro">Perro</option>
                                                <option value="Gato">Gato</option>
                                                <option value="Conejo">Conejo</option>
                                                <option value="Otro">Otro</option>
                                            </select>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                                <!--Pie del Modal-->
                                <div class="modal-footer">
                                    <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                    <button type="submit" class="btn btn-success submit">Guardar Cambios</button>
                                </div>
                                <input type="hidden" id="ID" name="ID" value="<%out.print(id);%>" style="display: none;">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Modal de Eliminar-->
        <div class=" modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <p class="display-6 m-0">Eliminar Mascota</p>
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

        <!--Modal de Registrar-->
        <div class=" modal fade" id="ModalAgregar" tabindex="-1" role="dialog" aria-labelledby="ModalVerLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <!--Cabezera-->
                    <div class="modal-header justify-content-center">
                        <p class="display-6 m-0">Registrar Mascota</p>
                    </div>

                    <form id="RegistrarMascota" action="Servlet_Mascota?accion=registrar" method="post">
                        <!--Body-->
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="form-group mb-2">
                                    <label for="InNombre" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="InNombre" name="Nombre"
                                           placeholder="Nombre" required>
                                </div>

                                <div class="form-group mb-2">
                                    <label for="InRaza" class="form-label">Raza</label>
                                    <input type="text" class="form-control" id="InRaza" name="Raza" placeholder="Raza" required>
                                </div>

                                <div class="form-group mb-2">
                                    <label class="form-check-label">Sexo</label>
                                    <div class="ps-5">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="Sexo" id="RadioHembra"
                                                   value="H">
                                            <label class="form-check-label" for="RadioHembra">
                                                Hembra
                                            </label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="Sexo" id="RadioMacho"
                                                   value="M">
                                            <label class="form-check-label" for="RadioMacho">
                                                Macho
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="InTipo" class="form-label">Tipo</label>
                                    <select class="form-select" id="InTipo" name="Tipo">
                                        <option selected>Selecciona...</option>
                                        <option value="Perro">Perro</option>
                                        <option value="Gato">Gato</option>
                                        <option value="Conejo">Conejo</option>
                                        <option value="Otro">Otro</option>
                                    </select>
                                </div>
                                <br>
                            </div>
                        </div>
                        <!--Pie del Modal-->
                        <div class="modal-footer">
                            <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success submit">Registrar</button>
                        </div>
                        <input type="hidden" id="ID" name="ID" value="<%out.print(id);%>" style="display: none;">
                    </form>
                </div>
            </div>
        </div>

    </body>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js" text="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.min.js" text="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuCliente.js" text="text/javascript"></script>
</html>