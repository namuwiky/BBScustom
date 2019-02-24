<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>list</title>
</head>
<body>
	<table style="width:500; cellpadding:0; cellspacing:0;" border="1">
		<tr>
			<td>��ȣ</td>
			<td>�̸�</td>
			<td>����</td>
			<td>��¥</td>
			<td>��Ʈ</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.idx}</td>
			<td>${dto.name}</td>
			<td>${dto.id}</td>
			<td>
				<c:forEach begin="1" end="${dto.indent}">-</c:forEach>
				<a href="content_view?id=${dto.id}">${dto.title}</a></td>
			<td>${dto.date}</td>
			<td>${dto.hit}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>