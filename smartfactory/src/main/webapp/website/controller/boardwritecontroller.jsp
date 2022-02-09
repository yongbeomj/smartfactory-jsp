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
	
	
	
	// 유효성검사
	if (bworkno == null || bmaterial == null || bprint == null || bcoating == null || bpaper == null || bjoin == null || bpackaging == null || bdate.equals("") || btime.equals("")) {
		out.print("<script>alert('입력이 안된 사항이 있습니다.');</script>");
		out.println("<script>location.href='../view/board/boardwrite.jsp';</script>");
	}
	if (bmaterial != null && bmaterial.equals("작업중")){
		bmaterial = "-";
	} 
	if (bprint != null && bprint.equals("작업중")){
		bprint = "-";
	} 
	if (bcoating != null && bcoating.equals("작업중")){
		bcoating = "-";
	} 
	if (bpaper != null && bpaper.equals("작업중")){
		bpaper = "-";
	} 
	if (bjoin != null && bjoin.equals("작업중")){
		bjoin = "-";
	} 
	if (bpackaging != null && bpackaging.equals("작업중")){
		bpackaging = "-";
	}
	

	Board board = new Board(bworkno, bmaterial, bprint, bcoating, bpaper, bjoin, bpackaging, bdate, btime);
	boolean result = BoardDao.getboarddao().boardwrite(board);
	if (result) {
		out.println("<script>alert('제품 등록후 공정이 등록되었습니다');</script>");
		out.println("<script>location.href='../view/board/boardlist.jsp';</script>");
	}
	%>
</body>
</html>