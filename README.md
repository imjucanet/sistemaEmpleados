# sistemaEmpleados

Aplicación web simple para la gestión de empleados desarrollada con Spring Boot y JSP.

## Descripción

Proyecto de ejemplo para mostrar CRUD básico de empleados (listar, agregar, buscar, eliminar). Usa Spring Data JPA para persistencia y JSP para las vistas.

## Características

- Listado de empleados
- Formulario para agregar empleados
- Persistencia con Spring Data JPA (compatible con H2 y MySQL)
- Plantillas JSP y estilos personalizados (style.jsp)

## Tecnologías

- Java 21
- Spring Boot 3
- Spring Data JPA
- JSP (Tomcat embebido)
- Maven
- Lombok
- H2 / MySQL (conector incluido)

## Requisitos previos

- JDK 21 instalado y JAVA_HOME configurado (Windows ejemplo):
  setx JAVA_HOME "C:\\Program Files\\Java\\jdk-21"
  Abrir nueva terminal después de setx.
- Maven instalado

## Instalación y ejecución

1. Clonar el repositorio.
2. Configurar las propiedades de conexión si usa MySQL en `src/main/resources/application.properties` (o dejar la configuración H2 para pruebas).
3. Construir el proyecto:

   mvn -DskipTests package

4. Ejecutar la aplicación:

   mvn spring-boot:run

La aplicación arranca por defecto en http://localhost:8080

## Configuración de base de datos (ejemplo MySQL)

En `src/main/resources/application.properties`:

spring.datasource.url=jdbc:mysql://localhost:3306/empleadosdb
spring.datasource.username=usuario
spring.datasource.password=clave
spring.jpa.hibernate.ddl-auto=update

> Para desarrollo rápido se puede usar H2 (dependencia incluida en pom.xml).

## Rutas principales

- GET  /           -> Lista de empleados (vista `index.jsp`)
- GET  /agregarEmpleados -> Formulario para agregar empleado
- POST /agregarEmpleados -> Procesa el envío del formulario

(Ver `src/main/java/com/jucanet/sistemaEmpleados/controlador/indexControlador.java` para más detalles)

## Estructura relevante

- src/main/java/com/jucanet/sistemaEmpleados/
  - controlador/ (controladores MVC)
  - servicio/ (lógica de negocio)
  - repositorio/ (interfaces JPA)
  - modelo/ (entidades)
- src/main/resources/ (configuración Spring)
- src/main/webapp/WEB-INF/jsp/ (vistas JSP)
  - componentes/style.jsp (estilos globales)
  - agregarEmpleado.jsp (formulario)

## Contribuir

1. Crear un fork
2. Realizar cambios en una rama
3. Abrir Pull Request describiendo los cambios

## Licencia

MIT — ver LICENSE si aplica.

---
