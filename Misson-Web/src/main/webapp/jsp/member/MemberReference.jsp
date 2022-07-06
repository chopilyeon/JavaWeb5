<%@page import="kr.ac.kopo.board.vo.MemberVO"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="kr.ac.kopo.board.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/Misson-Web/resources/css/font.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/layout.css"> 

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>


</head>
<body>
<div align="center">
	  <a class="navbar-brand fs-1 m-3" href="/Misson-Web">Home</a>
	<hr>
	<h1 class="m-3">회원정보 조회</h1><br>
	<table style="width:80%" class="table table-striped-columns m-3">
			<tr>
				<th width="25%">이름</th>
				<td>${userVO.name}</td>
			</tr>
			<tr>
				<th width="25%">ID</th>
				<td>${userVO.id}</td>
			</tr>
			<tr>
				<th width="25%">비밀번호</th>
				<td>${userVO.password}</td>
				
			</tr>
			<tr>
				<th width="25%">회원타입</th>
				<td>${userVO.type}</td>
			</tr>
	</table>			
</div>			



</body>
</html>