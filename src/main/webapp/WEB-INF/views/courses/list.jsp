<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="${pageContext.response.locale.language}">
  <head>
    <meta charset="UTF-8" />
    <title><spring:message code="courses.list.title" /></title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/styles.css">
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
      </nav>

      <div class="toolbar">
        <a href="${pageContext.request.contextPath}/courses?lang=es">
          <spring:message code="language.spanish" />
        </a>
        <a href="${pageContext.request.contextPath}/courses?lang=en">
          <spring:message code="language.english" />
        </a>
      </div>
    </header>

    <main class="container">
      <section class="card wide">
        <h1>
          <spring:message code="courses.list.title" />
        </h1>

        <p class="message">
            <spring:message code="courses.list.message" />
        </p>

        <c:if test="${not empty successMessage}">
            <div class="success">
                ${successMessage}
            </div>
        </c:if>

        <p>
          <a class="button" href="${pageContext.request.contextPath}/courses/new">
            <spring:message code="courses.create" />
          </a>
        </p>

        <table class="table">
          <thead>
            <tr>
              <th><spring:message code="courses.title" /></th>
              <th><spring:message code="courses.level" /></th>
              <th><spring:message code="courses.duration" /></th>
              <th><spring:message code="courses.action" /></th>
            </tr>
          </thead>

          <tbody>
            <c:forEach var="course" items="${courses}">
              <tr>
                <td>${course.title}</td>
                <td>${course.level}</td>
                <td>
                  ${course.durationInHours}
                  <spring:message code="courses.hours" />
                </td>
                <td>
                  <a href="${pageContext.request.contextPath}/courses/detail?id=${course.id}">
                    <spring:message code="courses.detail" />
                  </a>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <p>
          <a class="secondary-button" href="${pageContext.request.contextPath}/home">
            <spring:message code="courses.backHome" />
          </a>
        </p>
      </section>
    </main>
  </body>
</html>