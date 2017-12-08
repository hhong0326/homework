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
<script>
	function delete_click(c, t) {
		alert(t + "이/가 취소 되었습니다.");
		document.from.action = ${pageContext.request.contextPath}+ "/dodelete?code="+c;
		document.formName.submit();
		document.location.href = "${pageContext.request.contextPath}/lookup";
		
	}
</script>
</head>
<body>
	<h1>2018년도 1학기 수강 신청 내역</h1>
	<sf:form method="POST"
		modelAttribute="course">
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
					<td><button id="delete"
							onClick="delete_click('${course.code}', '${course.title}');">취소</button></td>
				</tr>
			</c:forEach>
		</table>
	</sf:form>
	<a href="${pageContext.request.contextPath}">돌아가기</a>
</body>
</html>