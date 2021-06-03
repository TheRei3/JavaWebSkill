<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function() {
		$("#checkJson").click(function() {
			var _jsonInfo = '{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}';
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json",
				data : {jsonInfo: _jsonInfo},
				success:function (data,textStatus){
					
				},
				error:function (data,textStatus){
					alert("에러가 발생했습니다.");
				},
				complete:function (data,textStatus){
					
				}
			});  // end ajax
		});
	});
</script>
</head>
<body>

</body>
</html>