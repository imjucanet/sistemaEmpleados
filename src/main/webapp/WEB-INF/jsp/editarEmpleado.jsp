<%@include file="componentes/header.jsp" %>
<%@include file="componentes/style.jsp" %>
<%@include file="componentes/navBar.jsp" %>


<div class="container">
    <div class="text-center" style="margin:30px">
        <h3>Editar Empleado</h3>
    </div>

    <form action="${urlEditarEmpleado}" modelAttribute="empleadoForm" method="post">
        <input type="hidden" name="idEmpleado" value="${empleado.idEmpleado}">

        <div class="mb-3">
            <label for="nombreEmpleado" class="form-label">Nombre Empleado</label>
            <input type="text" class="form-control" id="nombreEmpleado" name="nombreEmpleado"
                   required="true" value="${empleado.nombreEmpleado}">
        </div>

        <div class="mb-3">
            <label for="departamentoEmpleado" class="form-label">Departamento Empleado</label>
            <input type="text" class="form-control" id="departamentoEmpleado" name="departamentoEmpleado"
                   value="${empleado.departamentoEmpleado}">
        </div>

        <div class="mb-3">
            <label for="salarioEmpleado" class="form-label">Salario Empleado</label>
            <input type="number" stop="any" class="form-control" id="salarioEmpleado" name="salarioEmpleado"
                   value="${empleado.salarioEmpleado}">
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Editar</button>
            <a href="${urlInicio}" class="btn btn-danger btn-sm">Regresar</a>
        </div>

    </form>
</div>

<%@include file="componentes/footer.jsp" %>
s