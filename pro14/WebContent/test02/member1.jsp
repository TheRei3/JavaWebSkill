<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) request.getParameter("id");
	String pwd = (String) request.getParameter("pwd");
	String name =  (String) session.getAttribute("name");
	String email = (String) application.getAttribute("email");

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
		</tr>
		<tr align="center">
				<td>
					<%=id %>
				</td>
				<td>
					<%=pwd %>
				</td>
				<td>
					<%=name %>
				</td>
				<td>
					<%=email %>
				</td>
		</tr>
		<tr align="center">
				<td>
					${id }
				</td>
				<td>
					${pwd }
				</td>
				<td>
					${name }
				</td>
				<td>
					${email }
				</td>
		</tr>
	</table>
</body>
</html>