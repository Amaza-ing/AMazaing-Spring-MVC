<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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
          <spring:message code="${pageTitle}" />
        </h1>

        <p class="message">
          <spring:message code="form.message" />
        </p>

        <form:form
          method="post"
          action="${pageContext.request.contextPath}${formAction}"
          modelAttribute="course"
          cssClass="form"
        >

          <c:if test="${formMethod == 'put'}">
              <input type="hidden" name="_method" value="put">
          </c:if>

          <form:hidden path="id" />

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

              <c:forEach var="level" items="${courseLevels}">
                <form:option value="${level}">
                  ${level}
                </form:option>
              </c:forEach>
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
              <spring:message code="${submitCode}" />
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
