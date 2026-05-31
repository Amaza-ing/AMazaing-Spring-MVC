<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
  <head>
    <%@ include file="/WEB-INF/views/fragments/head.jspf" %>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/fragments/header.jspf" %>

    <main class="container">
      <section class="card">
        <h1>${pageTitle}</h1>

        <p class="message">Ha ocurrido un error inesperado en la aplicación.</p>

        <p class="error">${errorMessage}</p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/home">
            Volver al inicio
          </a>
        </p>
      </section>
    </main>
  </body>
</html>
