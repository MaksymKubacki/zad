<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Add Group</title>
</head>

<body>
	<p>Add Group</p>
	<form:form method="post" modelAttribute="squad">
		Name <form:input path="name" type="text" />
		<form:errors path="name" />
		<br />
		<input type='submit' />
		<br />
	</form:form>
	<p>Group list</p>
	<c:forEach items="${availableSquads}" var="squad">
		<c:out value="${squad}" />
		<a href="/zadanie/group/${squad.id}/del">DEL</a>
		<a href="/zadanie/group/${squad.id}/edit">Edit</a>
		<br />
	</c:forEach>
	<br />

</body>
</html>