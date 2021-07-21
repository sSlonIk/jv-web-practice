<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>List of drivers</title>
</head>
<body>
<h1> List of drivers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
