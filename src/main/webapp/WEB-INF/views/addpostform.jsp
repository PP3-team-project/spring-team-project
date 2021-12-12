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
							<input type="radio" id="cate_0" name="category" value=0>
							<label for="cate_0">과일</label><br> <input type="radio"
								id="cate_1" name="category" value=1> <label for="cate_1">채식</label><br>
							<input type="radio" id="cate_2" name="category" value=2>
							<label for="cate_2">유제품</label><br> <input type="radio"
								id="cate_3" name="category" value=3> <label for="cate_3">달걀</label><br>
							<input type="radio" id="cate_4" name="category" value=4>
							<label for="cate_4">해산물</label><br> <input type="radio"
								id="cate_5" name="category" value=5> <label for="cate_5">조류</label><br>
							<input type="radio" id="cate_6" name="category" value=6>
							<label for="cate_6">육류</label>
						</div>
						<div class="input-group">
							<label for="kcal" class="label">kcal (100g)</label> <input
								type="number" step="0.1" name="kcal" class="input-style"
								id="kcal">
						</div>
						<div class="input-group">
							<label for="photo" class="label">photo</label> <input
								type="file" step="0.1" name="photo" class="input-style"
								id="photo">
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