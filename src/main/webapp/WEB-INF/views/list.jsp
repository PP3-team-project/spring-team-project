<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Foods</title>
</head>
<body>

	<div class="page_wrapper"
		style="padding-top: 130px; padding-bottom: 130px;">
		<div class="form_box" style="max-width: 700px">
			<div class="card">
				<div class="card_body">
					<h1 class="title">Foods</h1>
					<table id="list" width="90%">
						<tr>
							<th>음식이름</th>
							<th>칼로리</th>
							<th>음식종류</th>
							<th>추가된 날짜</th>
							<th>더보기</th>
						</tr>

						<c:forEach items="${list}" var="u">
							<tr>
								<td>${u.name}</td>
								<td>${u.kcal}</td>
								<td>${u.category}</td>
								<td>${u.regdate}</td>
								<td><a href="view/${u.id}">View</a></td>
							</tr>
						</c:forEach>
					</table>
					<br>
					<div class="button-group" style="margin-left: 0;">
						<button type="button" class="button-style"
							onclick="location.href='add'">Add</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>