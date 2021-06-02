<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="sec01.ex01.*"%>
<%
	request.setCharacterEncoding("UTF-8");

%> 
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" />
<jsp:setProperty property="*" name="m1"/>
<jsp:useBean id="memberList" class="java.util.ArrayList" />
<jsp:useBean id="membersMap" class="java.util.HashMap" /> 
<%
	membersMap.put("id", "park2");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park2@test.com");
	
	MemberBean m2 - new MemberBean("son", "1234", "손흥민", "son@test.com"):
	memberList.add(m1);
	memberList.add(m2);
	membersMap.put("memberList", memberList);
%> 
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
					${ membersMap.id}
				</td>
				<td>
					${ membersMap.pwd}
				</td>
				<td>
					${ membersMap.name}
				</td>
				<td>
					${ membersMap.email}
				</td>
		</tr>
		<tr align="center">
				<td>
					${ membersMap.memberList[0].id}
				</td>
				<td>
					${ membersMap.memberList[0].pwd}
				</td>
				<td>
					${ membersMap.memberList[0].name}
				</td>
				<td>
					${ membersMap.memberList[0].email}
				</td>
		</tr>
		<tr align="center">
				<td>
					${ membersMap.memberList[1].id}
				</td>
				<td>
					${ membersMap.memberList[1].pwd}
				</td>
				<td>
					${ membersMap.memberList[1].name}
				</td>
				<td>
					${ membersMap.memberList[1].email}
				</td>
		</tr>
	</table>
</body>
</html>