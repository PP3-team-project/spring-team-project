<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Edit Event</title>
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
					<h1 class="title">Edit Event</h1>
					<form:form commandName="u" method="POST" action="../editok">
						<form:hidden path="id" />
						<div class="row">
							<div class="input-group">
								<label for="name" class="label">name</label>
								<form:input path="name" class="input-style" />
							</div>
						</div>
						<div class="row">
							<div class="input-group">
								<label for="kcal" class="label">kcal</label>
								<form:input path="kcal" class="input-style" />
							</div>
						</div>
						<div class="row">
							<div class="input-group">
								<label for="category" class="label">category</label>
								<form:input path="category" class="input-style" />
							</div>
						</div>
						<div class="row">
							<div class="input-group">
								<label for="description" class="label">Description</label>
								<form:textarea rows="4" path="description" class="input-style"
									style="width: 100%;" />
							</div>
						</div>
						<div class="button-group" style="margin-left: 50px;">
							<button type="button" value="Cancel" class="button-style"
								onclick="history.back()">Back</button>
							<button type="submit" value="Submit" class="button-style">Save</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>