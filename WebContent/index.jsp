<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MultiLanguages</title>
</head>
<body>
	<c:set var="mangonngu" value="${param.radio_mangonngu}" />
	<c:if test="${not empty mangonngu}">
		<f:setLocale value="${mangonngu}" scope="session" />
	</c:if>
	<br>
	<f:setBundle basename="resource" scope="session"/>
	<form action="index.jsp" method="post">
		<br>
		<f:message key="languagemessase"/>
		<input type="radio" name="radio_mangonngu" value="vi-VN" 
		<c:if test='${mangonngu=="vi-VN"}'>checked</c:if> >
		
		<f:message key="vn"/>
		<input type="radio" name="radio_mangonngu" value="en-US" 
		<c:if test='${mangonngu=="en-US"}'>checked</c:if> >
		
		<f:message key="en"/>
		<input type="submit" name="submit" value='<f:message key="choosebutton" />'  >
		<hr>
		<table border="0">
			<tr>
				<td> <f:message key="username"/> </td>
				<td> <input type="text" name="txtUsername" value=""> </td>
			
			</tr>
			<tr>
				<td> <f:message key="pass"/> </td>
				<td> <input type="text" name="txtpassword" value=""> </td>
			
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" name="submit" value='<f:message key="login"/>'> </td>
			
			</tr>
		</table>
		
	</form>
</body>
</html>