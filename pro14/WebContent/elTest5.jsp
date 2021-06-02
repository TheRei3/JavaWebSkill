<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*"%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page"/> 
<jsp:setProperty property="name" name="m1" value="이순신"/>
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어의 여러 가지 연산자들</title>
</head>
<body>
	empty 연산자
	<h2>
	\${empty m1 }:${empty m1 }<br>
	\${not empty m1 }:${not empty m1 }<br><br>
	
	\${empty m2 }:${empty m2 }<br>
	\${not empty m2 }:${not empty m2 }<br><br>
	
	\${empty "hello" }:${empty "hello" }<br>
	\${empty null }:${empty null }<br>
	\${empty "" }:${empty "" }<br>
	</h2>
</body>
</html>