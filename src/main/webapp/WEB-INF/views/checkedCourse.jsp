<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강-신청확인</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>
	<h2>${course.title } 이/가 수강 신청되었습니다. </h2><br/>
	
	<a href = "${pageContext.request.contextPath}/lookup"> 신청한 교과목 보러 가기 </a>
	<br/><br/>
	<a href="${pageContext.request.contextPath}">돌아가기</a>

</body>
</html>