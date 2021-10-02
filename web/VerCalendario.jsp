<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Utiles/Frameworks/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="Utiles/Frameworks/bootstrap/font/bootstrap-icons.css" rel="stylesheet">
        <link href="Utiles/Css/estilo_carousel.css" rel="stylesheet" type="text/css"/>
        <link href="Utiles/Frameworks/fullcalendar/main.css" rel="stylesheet"/>
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
                        <button type="button" class="btn btn-warning">Modificar</button>
                        <button type="button" class="btn btn-danger">Eliminar</button>
                        <button type="button" class="btn btn-primary">Ver Informacion</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <script src="Utiles/Frameworks/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Utiles/Frameworks/jquery/jquery.js"></script>
    <script src="Utiles/Js/loadMenu.js"></script>
    <script src="Utiles/Frameworks/fullcalendar/main.js"></script>
    <script src="Utiles/Frameworks/fullcalendar/locales/es.js"></script>
    <script src="Utiles/Js/scriptCalendar.js"></script>
</html>
