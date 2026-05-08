<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
      <section class="card">
        <h1>${pageTitle}</h1>

        <p class="message">${message}</p>

        <p>
          Estás viendo el contenido de:
          <strong>${courseName}</strong>
        </p>

        <hr />

        <p>
          Antes usamos un controlador clásico configurado manualmente en XML.
        </p>

        <p>
          Ahora estamos usando controladores con anotaciones como
          <code>@Controller</code> y <code>@GetMapping</code>.
        </p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/courses">
            Ver listado de cursos
          </a>
        </p>
      </section>
    </main>
  </body>
</html>