<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어에서 사용되는 데이터들</title>
</head>
<body>
	<h2>여러 가지 산술 연산자</h2>
	<h3>
	\${10=10 }:${10=10 }<br>
	\${10 eq 10 }:${10 eq 10 }<br>
	\${"hello" == "hello" }:${"hello" == "hello" }<br>
	\${"hello" eq "hello" }:${"hello" eq "hello" }<br><br>
	
	\${20!=10 }:${20!=10 }<br>
	\${20 eq 10 }:${20 eq 10 }<br>
	
	\${"hello" != "apple" }:${"hello" != "apple" }<br>
	\${"hello" ne "apple" }:${"hello" ne "apple" }<br>
	
	\${10 < 10 }:${10 < 10 }<br>
	\${10 lt 10 }:${10 lt 10 }<br>
	
	\${10 > 10 }:${10 > 10 }<br>
	\${10 gt 10 }:${10 gt 10 }<br>
	
	\${100 <= 10 }:${10 <= 10 }<br>
	\${100 le 10 }:${10 le 10 }<br>
	
	\${10 >= 10 }:${10 >= 10 }<br>
	\${10 ge 10 }:${10 ge 10 }<br>
	</h3>  
</body>
</html>