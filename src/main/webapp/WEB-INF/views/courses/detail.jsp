<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="es">
  <head>
    <%@ include file="/WEB-INF/views/fragments/head.jspf" %>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/fragments/header.jspf" %>

    <main class="container">
      <section class="card">
        <h1>${course.title}</h1>

        <p class="message">Información detallada del curso seleccionado.</p>

        <ul class="details">
          <li><strong>Identificador:</strong> ${course.id}</li>
          <li><strong>Nivel:</strong> ${course.level}</li>
          <li><strong>Duración:</strong> ${course.durationInHours} horas</li>
        </ul>

        <p>
          Esta página recibe un único objeto <code>Course</code> desde el
          controlador.
        </p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/courses">
            Volver al listado
          </a>
        </p>
      </section>
    </main>
  </body>
</html>
