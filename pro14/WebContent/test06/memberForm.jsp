<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
</head>
<body>
	<form action="member_action.jsp" method="post">
		<h1 style="text-align: center">회원 가입창</h1>	
		<table algin="center">
			<tr>
				<td width="200">
					<p align="left">아이디
				</td>
				<td width="400">
					<input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="left">비밀 번호
				</td>
				<td width="400">
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="left">이름
				</td>
				<td width="400">
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="left">이메일
				</td>
				<td width="400">
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td width="400">
					<input type="submit" value="가입하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>