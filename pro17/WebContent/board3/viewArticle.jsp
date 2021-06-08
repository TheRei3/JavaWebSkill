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
	<table border="1">
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">글번호</td>
			<td>
				<input type="text" value="${article.articleNO }">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">작성자 아이디</td>
			<td>
				<input type="text" value="${article.id }">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">제목</td>
			<td>
				<input type="text" value="${article.title }">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">내용</td>
			<td>
				<textarea rows="20" cols="60">${article.content }</textarea>
			</td>
		</tr>
		<c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">이미지</td>
			<td>
				<img id="preview" src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${articleNO}">
			</td>
		</tr>
		</c:if>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">등록일자</td>
			<td>
				<input type="text" value="${article.writeDate }">
			</td>
		</tr>
	</table>
</body>
</html>