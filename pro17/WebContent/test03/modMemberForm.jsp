<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
</style>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
</head>
<body>
	<h1>회원 정보 수정창</h1>
	<form action="${contextPath}/member/modMember.do?id=${memInfo.id}">
		<table border="1">
			<tr align="center">
				<td width="200">
					<p align="center">아이디</p>
				</td>
				<td width="400">
					<input type="text" name="id" value="${memInfo.id }" disabled="disabled">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">비밀번호</p>
				</td>
				<td width="400">
					<input type="password" name="pwd" value="${memInfo.pwd }">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">이름</p>
				</td>
				<td width="400">
					<input type="text" name="name" value="${memInfo.name }">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">이메일</p>
				</td>
				<td width="400">
					<input type="text" name="email" value="${memInfo.email }">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">가입일</p>
				</td>
				<td width="400">
					<input type="text" name="joinDate" value="${memInfo.joinDate }">
				</td>
			</tr>
			<tr align="center">
				<td colspan="2" width="400">
					<input type="submit" value="가입하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>