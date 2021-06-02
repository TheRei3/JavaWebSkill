<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("UTF-8");

%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr align="center" bgcolor="#99ccff">
			<td width="20%">아이디</td>
			<td width="20%">비밀번호</td>
			<td width="20%">이름</td>
			<td width="20%">이메일</td>
			<td width="20%">주소</td>
		</tr>
		<tr align="center">
				<td>
					${param.id }
				</td>
				<td>
					${param.pwd }
				</td>
				<td>
					${param.name }
				</td>
				<td>
					${param.email }
				</td>
				<td>
					${requestScope.address }
				</td>
		</tr>
	</table>
</body>
</html>