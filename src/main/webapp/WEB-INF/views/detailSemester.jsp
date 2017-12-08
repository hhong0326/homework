<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강-상세 학기별 학점</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>
	<h1>
		<c:out value="${year}" />
		년
		<c:out value="${semester}" />
		학기 수강 내역
	</h1>
	<table class="tt">
		<thead>
			<tr>
				<th>교과코드</th>
				<th>교과목</th>
				<th>구분</th>
				<th>학점</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${detailSemeCourses}">
				<tr>
					<td><c:out value="${course.code}"></c:out></td>
					<td><c:out value="${course.title}"></c:out></td>
					<td><c:out value="${course.division}"></c:out></td>
					<td><c:out value="${course.grades}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="${pageContext.request.contextPath}/semester">뒤로가기</a>
</body>
</html>