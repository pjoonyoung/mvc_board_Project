<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글 목록</title>
</head>
<body>
	<h2>자유게시판</h2>
	<hr>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>번호</td>
			<td>글쓴이</td>
			<td>글제목</td>
			<td>게시일</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bid}</td>
			<td>${dto.bname}</td>
			<td><a href="content_view.do?bid=${dto.bid}">${dto.btitle}</a></td>
			<td>${dto.bdate}</td>
			<td>${dto.bhit}</td>		
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align="right"><a href="write_view.do">글쓰기</a></td>
		</tr>	
	
	</table>
</body>
</html>