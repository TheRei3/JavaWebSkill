<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="sec02.ex01.MemberDAO"%>
<%@page import="sec02.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		h1{
			text-align: center;
		}
	</style>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<h1>회원 정보 출력</h1>
<%
	request.setCharacterEncoding("UTF-8");
	String _name = request.getParameter("name");
	MemberVO vo = new MemberVO();
	vo.setName(_name);
	MemberDAO dao = new MemberDAO();
	List memberList = dao.listMembers(vo); 
%>
	<table border="1" >
		<tr align="center" bgcolor="#FFFF66">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일자</td>
		</tr>
		<%
			for( int i = 0 ; i < memberList.size() ; i++ ){
				MemberVO mvo = (MemberVO) memberList.get(i);
				String id = mvo.getId();
				String pwd = mvo.getPwd();
				String name = mvo.getName();
				String email = mvo.getEmail();
				String joinDate = mvo.getJoinDate();
			
		%>
		<tr align="center">
			<td><%= id %></td>
			<td><%= pwd %></td>
			<td><%= name %></td>
			<td><%= email %></td>
			<td><%= joinDate %></td>
		</tr>
		<%
			}
		%>
	</table>
	
</body>
</html>