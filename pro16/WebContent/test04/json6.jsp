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
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json2",
				data : {jsonInfo: _jsonInfo},
				success:function (data,textStatus){
					var jsonInfo = JSON.parse(data);
					var memberInfo = "회원 정보<br>";
					memberInfo += "=======<br>";
					for(var i in jsonInfo.members){
						memberInfo += "이름: "+ jsonInfo[i].name+"<br>";
						memberInfo += "나이: "+ jsonInfo[i].age+"<br>";
						memberInfo += "성별: "+ jsonInfo[i].gender+"<br>";
						memberInfo += "별명: "+ jsonInfo[i].nickname+"<br><br><br>";
					}
					$('#output').html(memberInfo);
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