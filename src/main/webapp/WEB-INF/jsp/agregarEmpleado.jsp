<%@include file="componentes/header.jsp" %>
<%@include file="componentes/style.jsp" %>
<%@include file="componentes/navBar.jsp" %>


<div class="container">
    <div class="text-center" style="margin:30px">
        <h3>Agregar Empleado</h3>
    </div>

    <form action="${urlAgregarEmpleado}" modelAttribute="empleadoForm" method="post">
        <div class="mb-3">
            <label for="nombreEmpleado" class="form-label">Nombre Empleado</label>
            <input type="text" class="form-control" id="nombreEmpleado" name="nombreEmpleado" required="true">
        </div>

        <div class="mb-3">
            <label for="departamentoEmpleado" class="form-label">Departamento Empleado</label>
            <input type="text" class="form-control" id="departamentoEmpleado" name="departamentoEmpleado">
        </div>

        <div class="mb-3">
            <label for="salarioEmpleado" class="form-label">Salario Empleado</label>
            <input type="number" stop="any" class="form-control" id="salarioEmpleado" name="salarioEmpleado">
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Agregar Empleado</button>
            <a href="${urlIniciol}" class="btn btn-danger btn-sm">Regresar al inicio</a>
        </div>

    </form>
</div>

<%@include file="componentes/footer.jsp"%>s