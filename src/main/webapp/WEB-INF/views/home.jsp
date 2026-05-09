<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="currentTheme" value="${empty sessionScope.theme ? 'light' : sessionScope.theme}" />

<!DOCTYPE html>
<html lang="${pageContext.response.locale.language}">
  <head>
    <meta charset="UTF-8" />
    <title><spring:message code="home.title" /></title>
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

      <div class="toolbar">
        <a href="${pageContext.request.contextPath}/home?lang=es">
          <spring:message code="language.spanish" />
        </a>
        <a href="${pageContext.request.contextPath}/home?lang=en">
          <spring:message code="language.english" />
        </a>
      </div>
    </header>

    <main class="container">
      <section class="card">
        <h1>
          <spring:message code="home.title" />
        </h1>

        <p class="message">
          <spring:message code="home.message" />
        </p>

        <hr />

        <p>
          <strong>
            <spring:message code="home.courseName" />
          </strong>
        </p>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/courses">
            <spring:message code="home.cta" />
          </a>
        </p>
      </section>
    </main>
  </body>
</html>