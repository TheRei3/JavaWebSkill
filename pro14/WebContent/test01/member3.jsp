<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("UTF-8");

%> 
<jsp:useBean id="m" class="sec01.ex01.MemberBean" />
<jsp:setProperty property="*" name="m"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%">아이디</td>
			<td width="20%">비밀번호</td>
			<td width="20%">이름</td>
			<td width="20%">이메일</td>
		</tr>
		<tr align="center">
				<td>
					<%=m.getId() %>
				</td>
				<td>
					<%=m.getPwd() %>
				</td>
				<td>
					<%=m.getName() %>
				</td>
				<td>
					<%=m.getEmail() %>
				</td>
		</tr>
		<tr align="center">
				<td>
					${m.id }
				</td>
				<td>
					${m.pwd }
				</td>
				<td>
					${m.name }
				</td>
				<td>
					${m.email }
				</td>
		</tr>
	</table>
</body>
</html>