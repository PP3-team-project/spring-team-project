<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Food List</title>
	<!-- link style.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<!-- link bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script>
		var arr = new Array();

		var cate_name = ["과일", "채소", "유제품", "달걀", "해산물", "조류", "육류"];
		var type = [
			[0, 1],
			[0, 1, 2],
			[0, 1, 3],
			[0, 1, 2, 3],
			[0, 1, 2, 3, 4],
			[0, 1, 2, 3, 4, 5],
			[0, 1, 2, 3, 4, 5, 6],
			[0, 1, 2, 3, 4, 5, 6]
		];
		function type_filter(type_n) {
			document.getElementById("inner_table").innerHTML = "";
			<c:forEach items="${list}" var="u">
				if (type[type_n].indexOf(${u.category}) > 0) {
					var cate = ${u.category};
				document.getElementById("inner_table").innerHTML += '<tr><td>${u.name}</td><td>${u.kcal} kcal</td><td>' + cate_name[cate] + '</td><td>${u.description}</td><td>${u.regdate}</td><td><a class="btn btn-primary" href="view/${u.id}">Info</a></td></tr>';
				}
			</c:forEach>
			for (var i = 0; i < 8; i++) {
				if (i == type_n)
					document.getElementById("type_button_" + i).className = "btn btn-success active";
				else
					document.getElementById("type_button_" + i).className = "btn btn-success";
			}
		}
		$(document).ready(function () {
			$("#myInput").on("keyup", function () {
				var value = $(this).val().toLowerCase();
				$("#inner_table tr").filter(function () {
					$(this).toggle($(this).text()
						.toLowerCase().indexOf(value) > -1)
				});
			});
		});
	</script>
</head>

<body>
	<div class="container">
		<div style="width: 100%; display: flex; justify-content: right">
			<button type="button" class="btn btn-info" style="margin-right: 10px;" onclick="location.href='add'">Add</button>
			<button type="button" class="btn btn-warning" style="margin-right: 10px;"
				onclick="location.href='../login/logout'">로그아웃</button>
		</div>
		<h1 class="title">Food List</h1>
		<br><br>
		<div style="display: flex; justify-content: center;">
			<div class="btn-group" role="group" aria-label="Basic example">
				<button id="type_button_7" type="button" class="btn btn-success active"
					onclick="type_filter(7);">전체</button>
				<button id="type_button_0" type="button" class="btn btn-success" onclick="type_filter(0);">비건</button>
				<button id="type_button_1" type="button" class="btn btn-success" onclick="type_filter(1);">락토
					베지테리언</button>
				<button id="type_button_2" type="button" class="btn btn-success" onclick="type_filter(2);">오보
					베지테리언</button>
				<button id="type_button_3" type="button" class="btn btn-success" onclick="type_filter(3);">락토 오보
					베지테리언</button>
				<button id="type_button_4" type="button" class="btn btn-success" onclick="type_filter(4);">페스코
					베지테리언</button>
				<button id="type_button_5" type="button" class="btn btn-success" onclick="type_filter(5);">폴로
					베지테리언</button>
				<button id="type_button_6" type="button" class="btn btn-success"
					onclick="type_filter(6);">플렉시테리언</button>
			</div>
		</div>
		<br>
		<div style="display: flex; justify-content: right; align-self: center;">
			<input type="text" class="form-control" style="width: 30%; margin-right: 10px;" onkeyup="searchFunction()" placeholder="이름 / 칼로리 / 종류 / 설명 검색"
				title="검색하기">
			<img src="../img/search.png" width="35px" height="35px">
		</div>
		<br>
		<table class="table" id=table width="90%">
			<thead>
				<tr>
					<th scope="col">음식이름</th>
					<th scope="col">칼로리 (100g 당)</th>
					<th scope="col">음식종류</th>
					<th scope="col">설명</th>
					<th scope="col">추가된 날짜</th>
					<th scope="col">더보기</th>
				</tr>
			</thead>
			<tbody id="inner_table">
				<c:forEach items="${list}" var="u">
					<script>
						var cate = ${ u.category };
						document.write('<tr><td>${u.name}</td><td>${u.kcal} kcal</td><td>' + cate_name[cate] + '</td><td>${u.description}</td><td>${u.regdate}</td><td><a class="btn btn-primary" href="view/${u.id}">Info</a></td></tr>');
					</script>
				</c:forEach>
			</tbody>
		</table>
		<br>
	</div>
</body>

</html>