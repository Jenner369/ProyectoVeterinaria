<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Veterinaria Zeus</a>
        <!-- BUTTON COLLAPSE -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- MENU-->
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ms-auto me-auto mb-2 mb-md-0">
                <!-- SUBMENU -->
                <li class="nav-item">
                    <a class="nav-link" href="Servlet_Cliente?enlace=menu">Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown"
                       aria-expanded="false">Reserva</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        <li><a class="dropdown-item" href="">Reservar Cita</a></li>
                        <li><a class="dropdown-item" href="">Ver Horarios</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#Servicios" id="dropdown02" data-bs-toggle="dropdown"
                       aria-expanded="false">Servicios</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown02">
                        <li><a class="dropdown-item" onclick="clickService('Lavado')" href="#Servicios">Lavado</a></li>
                        <li><a class="dropdown-item" onclick="clickService('Pulgas')" href="#Servicios">Pulgas</a></li>
                        <li><a class="dropdown-item" onclick="clickService('Parasitos')" href="#Servicios">Parasitos</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="Servlet_Cliente?enlace=calendario" id="dropdown03"
                       aria-expanded="false">Calendario</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="Servlet_Cliente?enlace=mascota" id="dropdown04"
                       aria-expanded="false">Mascotas</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="Servlet_Cliente?enlace=servicio" id="dropdown05"
                       aria-expanded="false">Servicios</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-table" href="#" id="dropdown06" data-bs-toggle="dropdown">
                        <div class="d-table-cell pe-2" style="padding-right: 0px;">Cuenta</div>
                        <span>
                            <i class="bi bi-person-circle h5"></i>
                        </span>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown02">
                        <li><a class="dropdown-item" href="#">Cuenta</a></li>
                        <li><a class="dropdown-item" href="Servlet_Menu?enlace=salir">Salir</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>