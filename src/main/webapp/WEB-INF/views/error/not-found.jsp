<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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

        <p class="message">La página que estás intentando abrir no existe.</p>

        <p>
          Comprueba la dirección o vuelve a una sección existente de la
          aplicación.
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
