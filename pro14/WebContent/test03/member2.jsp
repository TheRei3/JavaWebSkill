<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*, sec01.ex01.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="membersList" class="java.util.ArrayList" />
<jsp:useBean id="membersMap" class="java.util.HashMap" /> 
   
<%
	membersMap.put("id", "park2");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park2@test.com");
	MemberBean m1 = new MemberBean("son", "1234", "손흥민", "son@test.com");
	MemberBean m2 = new MemberBean("ki", "4321", "기성용", "ki@test.com");
	membersList.add(m1);
	membersList.add(m2);
	membersMap.put("membersList", membersList);
%>
<c:set var="membersList" value="${membersMap.membersList }" />
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
			<td width="5%">이메일</td>
		</tr>
		<tr align="center">
				<td>
					${membersMap.id }
				</td>
				<td>
					${membersMap.pwd }
				</td>
				<td>
					${membersMap.name }
				</td>
				<td>
					${membersMap.email }
				</td>
		</tr>
		<tr align="center">
				<td>
					${membersList[0].id }
				</td>
				<td>
					${membersList[0].pwd }
				</td>
				<td>
					${membersList[0].name }
				</td>
				<td>
					${membersList[0].email }
				</td>
		</tr>
		<tr align="center">
				<td>
					${membersList[1].id }
				</td>
				<td>
					${membersList[1].pwd }
				</td>
				<td>
					${membersList[1].name }
				</td>
				<td>
					${membersList[1].email }
				</td>
		</tr>
	</table>
</body>
</html>