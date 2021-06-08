<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">답글쓰기</h1>
	<form name="frmReply" method="post" action="${contextPath}/board/addReply.do" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td align="center">글쓴이:&nbsp; </td>
				<td><input type="text" size="5" value="lee" disabled="disabled"></td>
			</tr>
			<tr>
				<td align="center">글제목:&nbsp; </td>
				<td><input type="text" size="67" maxlength="100" name="title" disabled="disabled"></td>
			</tr>
			<tr>
				<td align="center">글내용:&nbsp; </td>
				<td><textarea name="content" rows="10" cols="65" maxlength="4000"></textarea></td>
			</tr>
			<tr>
				<td align="center">이미지파일 첨부: </td>
				<td><input type="file" name="imageFileName" onclick="readURL(this);"></td>
				<td><img id="preview" src="#" width="200" height="200"></td>
			</tr>
			<tr>
				<td align="center"></td>
				<td>
					<input type="submit" value="답글반영하기">
					<input type="button" value="취소" onclick="backToList(this.form)">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>