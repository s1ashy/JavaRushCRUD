<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>User Registration Form</title>
    
    <style>
        .error {
            color: #ff0000;
        }
    </style>
</head>

<body>
<h2>Registration Form</h2>

<form:form method="POST" modelAttribute="user">
    <form:input path="id" type="hidden" id="id"/>
    <table>
        <tr>
            <td><label for="name">Name: </label> </td>
            <td><form:input path="name" id="name"/></td>
            <td><form:errors path="name" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label for="createdDate">Created Date: </label> </td>
            <td><form:input path="createdDate" id="createdDate"/></td>
            <td><form:errors path="createdDate" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label for="age">Age: </label> </td>
            <td><form:input path="age" id="age"/></td>
            <td><form:errors path="age" cssClass="error"/></td>
        </tr>
        <tr>
            <td><label for="isAdmin">Admin: </label> </td>
            <td><form:checkbox path="isAdmin" id="isAdmin"/></td>
            <td><form:errors path="isAdmin" cssClass="error"/></td>
        </tr>
        <tr>
            <td colspan="3">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Update"/>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Register"/>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</form:form>
<br/>
<br/>
Go back to <a href="<c:url value='/list' />">List of All Users</a>
</body>
</html>