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
<script type="text/javascript">
	function fn_enable(obj){
		document.getElementById("i_title").disabled = false;
		document.getElementById("i_content").disabled = false;
		document.getElementById("i_imageFileName").disabled = false;
		document.getElementById("tr_btn_modify").style = "block";
		document.getElementById("tr_btn").style.display = "none";
	}
	
	function fn_modify_article(obj) {
		obj.action = "${contextPath}/board/modArticle.do";
		obj.submit();
	}
	function fn_remove_article(url, articleNO){
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", url);
		var articleNOInput = document.createElement("input");
		articleNOInput.setAttribute("type", "hidden");
		articleNOInput.setAttribute("name", articleNO);
		articleNOInput.setAttribute("value", articleNO);
		form.appendChild(articleNOInput);
		document.body.appendChild(form);
		form.submit();
	}
	function fn_reply_form(url, parentNO){
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", url);
		var parentNOInput = document.createElement("input");
		articleNOInput.setAttribute("type", "hidden");
		articleNOInput.setAttribute("name", parentNO);
		articleNOInput.setAttribute("value", parentNO);
		form.appendChild(parentNOInput);
		document.body.appendChild(form);
		form.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">글번호</td>
			<td>
				<input type="text" value="${article.articleNO }" disabled="disabled">
				<input type="hidden" name="articleNO" value="${article.articleNO }">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">작성자 아이디</td>
			<td>
				<input type="text" value="${article.id }" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">제목</td>
			<td>
				<input type="text" value="${article.title }" disabled="disabled">
			</td>
		</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">내용</td>
			<td>
				<textarea rows="20" cols="60" disabled="disabled">${article.content }</textarea>
			</td>
		</tr>
		<c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933" rowspan="2">이미지</td>
			<td>
				<input type="hidden" name="originalFileName" value="${article.imageFileName }">
				<img id="preview" src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${articleNO}">
			</td>
		</tr>
		<tr>
			<td>
				<input type="file" name="imageFileName" id="i_imageFileName" disabled="disabled" onchange="readURL(this);">
			</td>
		</tr>
		</c:if>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">등록일자</td>
			<td>
				<input type="text" value="${article.writeDate }" disabled="disabled">
			</td>
		</tr>
		<tr id="tr_btn_modify">
			<td colspan="2" align="center">
				<input type="button" value="수정반영하기" onclick="fn_modify_article(frmArticle)">
				<input type="button" value="취소" onclick="backToList(frmArticle)">
			</td>
		</tr>
		<tr id="tr_btn">
			<td colspan="2" align="center">
				<input type="button" value="수정하기" onclick="fn_enable(this.form)">
				<input type="button" value="삭제하기" onclick="fn_remove_article('${contextPath}/board/removeArticle.do',${article.articleNO })">
				<input type="button" value="리시트로 돌아가기" onclick="backToList(this.form)"> 
				<input type="button" value="답글쓰기" onclick="fn_reply_form('${contextPath}/board/reply.do',${article.articleNO })">  	
			</td>
		</tr>
	</table>
</body>
</html>