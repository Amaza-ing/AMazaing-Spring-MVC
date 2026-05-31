<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="${pageContext.response.locale.language}">
  <head>
    <%@ include file="/WEB-INF/views/fragments/head.jspf" %>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/fragments/header.jspf" %>

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