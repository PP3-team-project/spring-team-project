<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event</title>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

</head>
<body>
	<div class="page_wrapper"
		style="padding-top: 130px; padding-bottom: 130px;">
		<div class="form_box">
			<div class="card">
				<div class="card_body">
					<h1 class="title">Add Event</h1>
					<form action="addok" method="post">
						<div class="input-group">
							<label for="name" class="label">name</label> <input type="text"
								name="name" class="input-style" id="name">
						</div>
						<div class="input-group">
							<label for="category" class="label">category</label> <input
								type="number" name="category" class="input-style" id="category">
						</div>
						<div class="input-group">
							<label for="kcal" class="label">kcal</label> <input
								type="number" name="kcal" class="input-style" id="kcal">
						</div>
						<div class="input-group">
							<label for="description" class="label">Description</label>
							<textarea class="input-style" id="description" rows="4"
								name="description"></textarea>
						</div>
						<div class="button-group">
							<button type="button" class="button-style"
								onclick="location.href='list'">Home</button>
							<button type="submit" class="button-style">Create</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>