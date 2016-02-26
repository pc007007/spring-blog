<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2/25/16
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form commandName="user" cssClass="form-horizontal">
    <c:if test="${param.success==true}">
        <div class="alert alert-success">Registration successfull!</div>
    </c:if>
    
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Name:</label>
        <div class="col-sm-10">
            <form:input path="name" cssClass="form-control"/>
        </div>
    </div>

    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">Name:</label>
        <div class="col-sm-10">
            <form:input path="email" cssClass="form-control"/>
        </div>
    </div>

    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">Password:</label>
        <div class="col-sm-10">
            <form:password path="password" cssClass="form-control"/>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-2">
            <input type="submit" value="Save" class="btn btn-lg btn-primary" />
        </div>
    </div>
</form:form>