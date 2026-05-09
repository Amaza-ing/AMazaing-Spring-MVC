<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="currentTheme" value="${empty sessionScope.theme ? 'light' : sessionScope.theme}" />

<!DOCTYPE html>
<html lang="${pageContext.response.locale.language}">
  <head>
    <meta charset="UTF-8" />
    <title><spring:message code="form.title" /></title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/styles.css"
    />

    <c:if test="${currentTheme == 'dark'}">
      <link
        rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/css/styles-dark.css"
      />
    </c:if>
  </head>
  <body>
    <header class="header">
      <nav class="nav">
        <a href="${pageContext.request.contextPath}/home">
          <spring:message code="nav.home" />
        </a>
        <a href="${pageContext.request.contextPath}/courses">
          <spring:message code="nav.courses" />
        </a>
        <a href="${pageContext.request.contextPath}/about">
          <spring:message code="nav.about" />
        </a>
        <a href="${pageContext.request.contextPath}/theme/change?theme=light">
          <spring:message code="theme.light" />
        </a>
        <a href="${pageContext.request.contextPath}/theme/change?theme=dark">
          <spring:message code="theme.dark" />
        </a>
      </nav>
    </header>

    <main class="container">
      <section class="card">
        <h1>
          <spring:message code="form.title" />
        </h1>

        <p class="message">
          <spring:message code="form.message" />
        </p>

        <form:form
          method="post"
          action="${pageContext.request.contextPath}/courses"
          modelAttribute="course"
          cssClass="form"
        >
          <div class="form-group">
            <form:label path="title">
              <spring:message code="form.field.title" />
            </form:label>

            <form:input path="title" cssClass="input" />
            <form:errors path="title" cssClass="error" />
          </div>

          <div class="form-group">
            <form:label path="level">
              <spring:message code="form.field.level" />
            </form:label>

            <form:select path="level" cssClass="input">
              <form:option value="">
                <spring:message code="form.level.placeholder" />
              </form:option>
              <form:option value="Inicial">
                <spring:message code="form.level.initial" />
              </form:option>
              <form:option value="Intermedio">
                <spring:message code="form.level.intermediate" />
              </form:option>
              <form:option value="Avanzado">
                <spring:message code="form.level.advanced" />
              </form:option>
            </form:select>
            <form:errors path="level" cssClass="error" />
          </div>

          <div class="form-group">
            <form:label path="durationInHours">
              <spring:message code="form.field.duration" />
            </form:label>

            <form:input path="durationInHours" type="number" cssClass="input" />
            <form:errors path="durationInHours" cssClass="error" />
          </div>

          <div class="form-actions">
            <button type="submit" class="button">
              <spring:message code="form.submit" />
            </button>

            <a
              class="secondary-button"
              href="${pageContext.request.contextPath}/courses"
            >
              <spring:message code="form.cancel" />
            </a>
          </div>
        </form:form>
      </section>
    </main>
  </body>
</html>
