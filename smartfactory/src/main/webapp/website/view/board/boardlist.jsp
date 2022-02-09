<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>
	<%
	ArrayList<Board> boards = BoardDao.getboarddao().boardlist();
	%>
	<div style="text-align: center;">
		<h2>작업공정조회</h2>
		<table>
			<th width="14%">작업지시번호</th>
			<th width="10%">준비</th>
			<th width="10%">인쇄</th>
			<th width="10%">코팅</th>
			<th width="10%">합지</th>
			<th width="10%">접합</th>
			<th width="10%">포장</th>
			<th width="13%">최초공정일자</th>
			<th width="13%">최종공정시간</th>
			<%
			for (Board board : boards) {
			%>
			<tr style="text-align: center;">
				<td><%=board.getBworkno()%></td>
				<td><%=board.getBmaterial()%></td>
				<td><%=board.getBprint()%></td>
				<td><%=board.getBcoating()%></td>
				<td><%=board.getBpaper()%></td>
				<td><%=board.getBjoin()%></td>
				<td><%=board.getBpackaging()%></td>
				<td><%=board.getBdate()%></td>
				<td><%=board.getBtime()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="../footer.jsp"%>
</body>
</html>