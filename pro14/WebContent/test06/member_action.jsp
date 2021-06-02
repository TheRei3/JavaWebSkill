<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*, sec02.ex01.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="m" class="sec02.ex01.MemberBean" />
<jsp:setProperty property="*" name="m"/>
<%
	MemberDAO dao = new MemberDAO() ;
	dao.addMember(m);
	List membersList = dao.listMember();
	request.setAttribute("membersList", membersList);
%>
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="membersList" />
</body>
</html>