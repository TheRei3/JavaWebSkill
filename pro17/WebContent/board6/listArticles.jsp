<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" /> 
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>

<style>
	.cls1 {
		font-size: : 40px;
		text-align: center;
	}
	.cls2 {
		font-size: : 20px;
		text-align: center;
	}
</style>	
<meta charset="UTF-8">


</head>
<body>
	<a href="${contextPath }/board/articleForm.do">
		<p class="cls2">글쓰기</p>	
	</a>
</body>
</html>