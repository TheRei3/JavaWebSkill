<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>escapeXml 변환하기</title>
</head>
<body>
	<h2>escapeXml 변환하기</h2>
	<h2>
		<c:out value="&lt;" escapeXml="true" /><br>
		<c:out value="&lt;" escapeXml="false" /><br>
		<c:out value="&gt;" escapeXml="true" /><br>
		<c:out value="&gt;" escapeXml="false" /><br>
		<c:out value="&amp;" escapeXml="true" /><br>
		<c:out value="&amp;" escapeXml="false" /><br>
		<c:out value="&#039;" escapeXml="true" /><br>
		<c:out value="&#039;" escapeXml="false" /><br>
		<c:out value="&#034;" escapeXml="true" /><br>
		<c:out value="&#034;" escapeXml="false" />
	</h2>
</body>
</html>