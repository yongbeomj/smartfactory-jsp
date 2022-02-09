<%@page import="dao.BoardDao"%>
<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String bworkno = request.getParameter("bworkno");
	String bmaterial = request.getParameter("bmaterial");
	String bprint = request.getParameter("bprint");
	String bcoating = request.getParameter("bcoating");
	String bpaper = request.getParameter("bpaper");
	String bjoin = request.getParameter("bjoin");
	String bpackaging = request.getParameter("bpackaging");
	String bdate = request.getParameter("bdate");
	String btime = request.getParameter("btime");
	System.out.println("작업번호 : " + bworkno);

	Board board = new Board(bworkno, bmaterial, bprint, bcoating, bpaper, bjoin, bpackaging, bdate, btime);
	boolean result = BoardDao.getboarddao().boardwrite(board);
	if (result) {
		out.println("<script>alert('저장완료');</script>");
		response.sendRedirect("../view/board/boardlist.jsp");
	}
	
	
	%>
</body>
</html>