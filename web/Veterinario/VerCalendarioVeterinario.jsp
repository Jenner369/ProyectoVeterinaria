<a href="../Utiles/Jsp/validationVeterinario.jsp"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/Utiles/Css/estilo_carousel.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/Utiles/Frameworks/fullcalendar/main.css" rel="stylesheet"/>
        <!-- It's to get context path-->
        <link id="contextPathHolder" data-contextPath="<%=request.getContextPath()%>"/>
    </head>
    <body>
        <nav>
        </nav>
        <!-- add calander in this div -->
        <div class="container">
            <div class="row">
                <div id="calendar"></div>
            </div>
        </div>
        <!--MODAl-->
        <div class="modal fade" id="modalEjemplo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalTitle"></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p id="ModalDescription"></p>
                        <p id="ModalStart"></p>
                        <p id="ModalEnd"></p>
                        <p id="ModalCliente"></p>
                        <p id="ModalVeterinario"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" id="updateButton" class="btn btn-warning">Modificar</button>
                        <button type="button" id="deleteButton" class="btn btn-danger">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/jquery/jquery.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/loadMenuVeterinario.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/fullcalendar/main.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Frameworks/fullcalendar/locales/es.js"></script>
    <script src="<%=request.getContextPath()%>/Utiles/Js/scriptCalendarCliente.js"></script>
</html>
