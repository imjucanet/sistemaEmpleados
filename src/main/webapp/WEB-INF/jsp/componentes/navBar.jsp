<!-- Agregar los url de la aplicación -->
<!-- Use c:url with a context-relative value (it prepends the context path automatically) -->
<c:url var="urlInicio" value="/" />
<c:url var="urlAgregarEmpleado" value="/agregarEmpleados" />
<c:url var="urlEditarEmpleado" value="/editarEmpleados"/>

<div class="container">
    <!-- Titulo -->
    <h5 class="page-title text-center">
        Sistema de Gestion de Empleados
    </h5>

    <!-- NavBar -->
    <nav class="navbar navbar-expand-lg motion-navbar" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="${urlInicio}">
                <span class="brand-mark">E</span>
                <span class="brand-text">Empleados</span>
            </a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${urlInicio}">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlAgregarEmpleado}">Agregar Empleados</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
