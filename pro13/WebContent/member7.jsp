<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
%>
<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page" /> 
<jsp:setProperty property="*" name="m" />
<%
	/*
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	// MemberBean m = new MemberBean(id, pwd, name, email);
	m.setId(id);
	m.setPwd(pwd);
	m.setName(name);
	m.setEmail(email);
	*/
	MemberDAO dao = new MemberDAO() ;
	dao.addMember(m);
	List memberList = dao.listMember();
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
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
		</tr>
		<tr>
				<td>
					<jsp:getProperty property="id" name="m"/>
				</td>
				<td>
					<jsp:getProperty property="pwd" name="m"/>
				</td>
				<td>
					<jsp:getProperty property="name" name="m"/>
				</td>
				<td>
					<jsp:getProperty property="email" name="m"/>
				</td>
			</tr>
		
			<tr height="1" bgcolor="#99ccff">
				<td colspan="5"></td>
			</tr>
	</table>
</body>
</html>