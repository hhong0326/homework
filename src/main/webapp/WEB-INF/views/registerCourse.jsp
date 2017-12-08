<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강-등록</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">

</head>
<body>
	<h1>수강 신청하기</h1>
	<div>
		<sf:form method="post"
			action="${pageContext.request.contextPath}/doregister"
			modelAttribute="course">
			<table class="tt">
				<thead>
					<tr>
						<th>구분</th>
						<th><input type="submit" value="수강 신청" /></th>
					</tr>
				</thead>
				<tr>
					<td class="label">코드 :</td>
					<td><sf:input class="control" type="text" path="code" /><br />
						<sf:errors path="code" class="error" /></td>
				</tr>
				<tr>
					<td class="label">교과목 :</td>
					<td><sf:input class="control" type="text" path="title" /><br />
						<sf:errors path="title" class="error" /></td>
				</tr>
				<tr>
					<td class="label">이수 구분 :</td>
					<td><sf:select class="control" name="select" path="division">
							<option value="" disabled selected>선택</option>
							<option value="교필">교필</option>
							<option value="핵교">핵교</option>
							<option value="일반">일반</option>
							<option value="전선">전선</option>
							<option value="전지">전지</option>
							<option value="전기">전기</option>
						</sf:select>
						<br/><sf:errors path="division" class="error" /></td></tr>
			</table>
		</sf:form>
	</div>
	<a href="${pageContext.request.contextPath}">돌아가기</a>
</body>
</html>