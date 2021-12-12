<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event View</title>
</head>
<body>
	<div class="page_wrapper"
		style="padding-top: 130px; padding-bottom: 130px;">
		<div class="form_box" style="max-width: 520px">
			<div class="card">
				<div class="card_body">
					<h1 class="title">Event View</h1>
					<form:form commandName="u" method="POST" action="../view">
						<form:hidden path="id" />
						<div class="row">
							<div class="col-2">
								<div class="input-group">
									<label for="title" class="label">Name</label>
									<p>${u.name}</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-2">
								<div class="input-group">
									<label for="duedate" class="label">Date</label>
									<p>${u.regdate}</p>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label for="description" class="label">Description</label>
									<p>${u.description}</p>
								</div>
							</div>
						</div>
						<div class="button-group" style="margin-left: 0;">
							<button type="button" class="button-style"
								onclick="history.back()">Home</button>
							<button type="button" class="button-style"
								onclick="location.href='../editform/${id}'">Edit</button>
							<button type="button" class="button-style"
								onclick="javascript:delete_ok('${id}')">Delete</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<script>
		function delete_ok(id) {
			var a = confirm("정말로 삭제하겠습니까?");
			if (a)
				location.href = '../deleteok/' + id;
		}
	</script>
</body>
</html>