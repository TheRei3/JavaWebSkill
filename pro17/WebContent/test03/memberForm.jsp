<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
</head>
<body>
	<form method="post" action="${contextPath}/member/addMember.do }">
		<h1 style="text-align: center;">회원 가입창</h1>
		<table>
			<tr align="center">
				<td width="200">
					<p align="center">아이디</p>
				</td>
				<td width="400">
					<input type="text" name="id">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">비밀번호</p>
				</td>
				<td width="400">
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">이름</p>
				</td>
				<td width="400">
					<input type="text" name="name">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p align="center">이메일</p>
				</td>
				<td width="400">
					<input type="text" name="email">
				</td>
			</tr>
			<tr align="center">
				<td width="200">
					<p>&nbsp;</p>
				</td>
				<td width="400">
					<input type="submit" value="가입하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>