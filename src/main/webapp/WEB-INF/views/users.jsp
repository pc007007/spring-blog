<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2/24/16
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table>
    <thead>
    <tr>
        <th>user name</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>