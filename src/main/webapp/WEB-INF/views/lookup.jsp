<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강-신청조회</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>
	<h1>2018년도 1학기 수강 신청 내역</h1>
		<table class="tt">
			<tr>
				<th>코드</th>
				<th>교과목</th>
				<th>구분</th>
				<th>학점</th>
				<th>수강 취소</th>
			</tr>
			<c:forEach var="course" items="${courses}">
				<tr>
					<td><c:out value="${course.code}" /></td>
					<td><c:out value="${course.title}" /></td>
					<td><c:out value="${course.division}" /></td>
					<td><c:out value="${course.grades}" /></td>
					<td><a href="${pageContext.request.contextPath}/dodelete?code=${course.code}" onClick="alert('${course.title} 이/가 취소 되었습니다.');">취소</a></td>
				</tr>
			</c:forEach>
		</table>
	<a href="${pageContext.request.contextPath}">돌아가기</a>
</body>
</html>