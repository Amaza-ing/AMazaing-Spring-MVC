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
          Esta página no se ha abierto directamente. Ha sido devuelta por un
          controlador de Spring MVC.
        </p>

        <p class="small">
          URL alternativa:
          <a href="${pageContext.request.contextPath}/home">/home</a>
        </p>
      </section>
    </main>
  </body>
</html>