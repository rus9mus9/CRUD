<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>

    <h1>Users List</h1>
    <c:url var="searchuser" value="/searchresults"/>
    <form:form action="${searchuser}" commandName="searcheduser">
        <table width="30%">
            <tr>
                <td><form:input path="name"/> <spring:message text="Name"/></td>
                <td><input class="but" type="submit" name="action" value="<spring:message text="Search"/>"/></td>
            </tr>
        </table>
    </form:form>


    <c:if test="${!empty listUsers}">
        <table class = "tg">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Admin</th>
                <th>Creation date</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${listUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                    <td>${user.age}</td>
                    <td>${user.admin}</td>
                    <td>${user.createDate}</td>
                    <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <h1>Add User</h1>
    <c:url var="addAction" value="/users/add"/>

    <form:form action="${addAction}" commandName="user">
        <table>
            <c:if test="${!empty user.name}">
                <tr>
                    <td>
                        <form:label path="id">
                            <spring:message text="ID"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                        <form:hidden path="id"/>
                    </td>
                </tr>
            </c:if>
            <tr>
                <td>
                    <form:label path="name">
                        <spring:message text="Username"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="name"/>
                </td>
            </tr>
            <tr>
                <td class="param">
                    <form:label path="age">
                        <spring:message text="Age"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="age"/>
                </td>
            </tr>

            <tr>
                <td><form:label path="admin"><spring:message text="Admin"/></form:label></td>
                <td>
                    <form:checkbox path="admin" value="false"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align: left">
                    <c:if test="${!empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Edit User"/>"/>
                    </c:if>
                    <c:if test="${empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Add User"/>">
                    </c:if>
                </td>
            </tr>
        </table>


    <br/>
    <br/>
    <div style="align-content: left">
        <ul>
            <c:if test="${page > 1}">
                <li><a href="<c:url value="/users"/>">Back</a></li>
                <li><a href="<c:url value="/users"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
            </c:if>
            <li><spring:message text="${page}"/></li>
            <c:if test="${!empty listUsers}">
                <li><a href="<c:url value="/users"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
            </c:if>
        </ul>
    </div>
    </form:form>
</body>
</html>
