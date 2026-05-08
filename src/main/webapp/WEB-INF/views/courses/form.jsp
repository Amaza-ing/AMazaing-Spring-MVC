<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

        <p class="message">Rellena los datos para crear un nuevo curso.</p>

        <form:form
          method="post"
          action="${pageContext.request.contextPath}/courses"
          modelAttribute="course"
          cssClass="form"
        >
          <div class="form-group">
            <form:label path="title">Título</form:label>
            <form:input path="title" cssClass="input" />
            <form:errors path="title" cssClass="error" />
          </div>

          <div class="form-group">
            <form:label path="level">Nivel</form:label>
            <form:select path="level" cssClass="input">
              <form:option value="" label="Selecciona un nivel" />
              <form:option value="Inicial" label="Inicial" />
              <form:option value="Intermedio" label="Intermedio" />
              <form:option value="Avanzado" label="Avanzado" />
            </form:select>
            <form:errors path="level" cssClass="error" />
          </div>

          <div class="form-group">
            <form:label path="durationInHours">Duración en horas</form:label>
            <form:input path="durationInHours" type="number" cssClass="input" />
            <form:errors path="durationInHours" cssClass="error" />
          </div>

          <div class="form-actions">
            <button type="submit" class="button">Crear curso</button>

            <a
              class="secondary-button"
              href="${pageContext.request.contextPath}/courses"
            >
              Cancelar
            </a>
          </div>
        </form:form>
      </section>
    </main>
  </body>
</html>
