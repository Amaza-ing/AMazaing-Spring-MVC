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
        <h1>${pageTitle}</h1>

        <p class="message">${description}</p>

        <p>
          En esta aplicación estamos aprendiendo cómo Spring MVC conecta URLs,
          controladores, modelos y vistas.
        </p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/home">
            Volver al inicio
          </a>
        </p>
      </section>
    </main>
  </body>
</html>
