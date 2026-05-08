<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>${pageTitle}</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/styles.css"
    />
  </head>
  <body>
    <header class="header">
      <nav class="nav">
        <a href="${pageContext.request.contextPath}/home">Inicio</a>
        <a href="${pageContext.request.contextPath}/courses">Cursos</a>
        <a href="${pageContext.request.contextPath}/about">Sobre el curso</a>
      </nav>
    </header>

    <main class="container">
      <section class="card wide">
        <h1>${pageTitle}</h1>

        <p class="message">
          Estos cursos vienen del controlador, que a su vez obtiene los datos
          desde un servicio.
        </p>

        <c:if test="${not empty successMessage}">
          <div class="success">${successMessage}</div>
        </c:if>

        <p>
          <a
            class="button"
            href="${pageContext.request.contextPath}/courses/new"
          >
            Crear nuevo curso
          </a>
        </p>

        <table class="table">
          <thead>
            <tr>
              <th>Título</th>
              <th>Nivel</th>
              <th>Duración</th>
              <th>Acción</th>
            </tr>
          </thead>

          <tbody>
            <c:forEach var="course" items="${courses}">
              <tr>
                <td>${course.title}</td>
                <td>${course.level}</td>
                <td>${course.durationInHours} horas</td>
                <td>
                  <a href="${pageContext.request.contextPath}/courses/detail?id=${course.id}">
                    Ver detalle
                  </a>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/home">
            Volver al inicio
          </a>
        </p>
      </section>
    </main>
  </body>
</html>
