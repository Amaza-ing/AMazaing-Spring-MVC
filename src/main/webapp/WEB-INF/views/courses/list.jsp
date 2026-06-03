<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="${pageContext.response.locale.language}">
  <head>
    <%@ include file="/WEB-INF/views/fragments/head.jspf" %>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/fragments/header.jspf" %>

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
                <td class="actions-cell">
                  <a href="${pageContext.request.contextPath}/courses/${course.id}">
                    <spring:message code="courses.detail" />
                  </a>

                  <a
                    <a href="${pageContext.request.contextPath}/courses/${course.id}/edit">
                  >
                    <spring:message code="courses.edit" />
                  </a>

                  <form
                    method="post"
                    action="${pageContext.request.contextPath}/courses/${course.id}"
                    class="inline-form"
                    onsubmit="return confirm('<spring:message code="courses.confirmDelete" />');"
                  >

                    <input type="hidden" name="_method" value="delete">

                    <button type="submit" class="link-button">
                        <spring:message code="courses.delete" />
                    </button>
                  </form>
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