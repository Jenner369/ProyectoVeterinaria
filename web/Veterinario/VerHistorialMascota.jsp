<%@page import="DAO.DAO_Cliente"%>
<%@page import="Beans.Beans_Mascota"%>
<%@page import="Beans.Beans_Mascota"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DAO_Mascota"%>
<!%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historial de Mascotas</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css">
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Utiles/Css/HistorialMascota.css">
    </head>

    <body>
        <nav></nav>
        <div class="container">
            <div class="card my-5">
                <!--Header-->
                <div class="card-header text-center m-0">
                    <p class="display-6 m-0">Historial de Mascotas</p>
                </div>

                <!--Body-->
                <div class="card-body py-5">
                    <div style="height: fit-content">
                        <table class="table table-hover table-condensed table-bordered text-center">
                            <tr class="bg-secondary text-white">
                                <td>ID</td>
                                <td>Nombre</td>
                                <td>Due&ntilde;o</td>
                                <td>Ver Historial</td>
                            </tr>
                            <%
                                DAO_Mascota OpcionesMascotas = new DAO_Mascota();
                                List<Beans_Mascota> Mascotas = OpcionesMascotas.BuscarMascotaTodos();
                                for (int i = 0; i < Mascotas.size(); i++) {
                            %>
                            <tr>
                                <td>
                                    <%=Mascotas.get(i).getID()%>
                                </td>
                                 <td>
                                    <%=Mascotas.get(i).getNombre()%>
                                </td>
                                <td>
                                    <%
                                        DAO_Cliente ClienteDeMascota = new DAO_Cliente();
                                        out.print((ClienteDeMascota.BuscarClientePorID(Mascotas.get(i).getCLIENTE_ID())).toString().toUpperCase());
                                    %>
                                </td>
                                <td>
                                    <!--button  class="btn btn-success" data-toggle="modal" data-target="#ModalVer" onclick="$('#ModalVer').modal('show');">Ver
                                        Historial</button-->
                                    <a class="btn btn-success" href="Cliente/ReportesDeHistorial.jsp?codigo=<%=Mascotas.get(i).getID()%>" target="_blanck">Ver Historial</a>
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
            </div>
        </div>

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
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.min.js" text="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.min.js" text="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuVeterinario.js" text="text/javascript"></script>

</html>