<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	MemberBean m = new MemberBean(id, pwd, name, email);
	MemberDAO dao = new MemberDAO();
	dao.addMember(m);
	List memberList = dao.listMember();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록창</title>
</head>
<body>
	<table>
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일</td>
		</tr>
		<%
			if( memberList.size()==0 ){
		%>
			<tr>
				<td colspan="5">
					<p align="center">
						<b>
							<span style="font-size: 9pt;">
								등록된 회원이 없습니다.
							</span>
						</b>
					</p>
				</td>
			</tr>
		<%
			} else{
				for(int i = 0 ; i < memberList.size() ; i++){
					MemberBean bean = (MemberBean) memberList.get(i);
		%>
			<tr>
				<td>
					<%=bean.getId() %>
				</td>
				<td>
					<%=bean.getPwd() %>
				</td>
				<td>
					<%=bean.getName() %>
				</td>
				<td>
					<%=bean.getEmail() %>
				</td>
				<td>
					<%=bean.getJoinDate() %>
				</td>
			</tr>
		<%
				}  // for
			}  // if	
		%>
			<tr height="1" bgcolor="#99ccff">
				<td colspan="5"></td>
			</tr>
	</table>
</body>
</html>