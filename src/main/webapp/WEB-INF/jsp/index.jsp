<%@include file="componentes/header.jsp" %>
<%@include file="componentes/style.jsp" %>
<%@include file="componentes/navBar.jsp" %>


<body>

<!-- Tabla -->
<div class="container-tabla">
    <table class="table">
        <thead>
        <tr>
            <th scope="col" class="text-center">Id Empleado</th>
            <th scope="col" class="text-center">Nombre Empleado</th>
            <th scope="col" class="text-center">Departamento Empleado</th>
            <th scope="col" class="text-center">Sueldo Empleado</th>
            <th scope="col" class="text-center">Acciones</th>
        </tr>
        </thead>
        <c:forEach var="empleado" items="${empleados}">
            <tr>
                <th scope="row">${empleado.idEmpleado}</th>
                <td>${empleado.nombreEmpleado}</td>
                <td>${empleado.departamentoEmpleado}</td>
                <td>
                    <fmt:setLocale value="es_COP"/>
                    <fmt:formatNumber type="currency"
                                      value="${empleado.salarioEmpleado}"
                                      pattern="$ #, ##0.00"
                    />
                </td>

                <!-- Botones de Acción -->
                <td class="text-center">

                    <!-- Botón Editar Empleado -->

                    <c:set var="urlEditarEmpleado">
                        <c:url value="${application.contextPath}/editarEmpleado">
                            <c:param name="idEmpleado"
                                     value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEditarEmpleado}"
                       class="btn btn-warning btn-sm me-3"> Editar
                    </a>

                    <!-- Botón Eliminar -->

                    <c:set var="urlEliminarEmpleados">
                        <c:url value="${application.contextPath}/eliminarEmpleados">
                            <c:param name="idEmpleado"
                                     value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEliminarEmpleados}"
                       class="btn btn-danger btn-sm me-3"> Eliminar
                    </a>
                </td>
            </tr>
        </c:forEach>
        <tbody>
        </tbody>
    </table>
</div>

<%@include file="componentes/footer.jsp" %>



