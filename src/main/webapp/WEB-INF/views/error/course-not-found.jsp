<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
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
      <section class="card">
        <h1>${pageTitle}</h1>

        <p class="message">No se ha encontrado ningún curso con el identificador ${courseId}.</p>

        <p class="error">${errorMessage}</p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/courses">
            Volver al listado de cursos
          </a>
        </p>
      </section>
    </main>
  </body>
</html>