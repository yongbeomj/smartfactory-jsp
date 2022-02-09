<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int workno = BoardDao.getboarddao().getbworkno();
	if( workno == -1 ){
		workno = 1 ;
	}else{
		workno++;
	}
		
	%>
	

	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>
	<div style="text-align: center;">
		<h2>작업공정등록</h2>
		<form id="signupform" action="../../controller/boardwritecontroller.jsp" method="post" >
			작업지시번호 <input type="text" name="bworkno" value="<%=workno%>"> <span>예)20190001</span> 
			<br>재료준비 <input type="radio" id="bmaterial1" name="bmaterial" value="완료"> <label for="drone1">완료</label>
			<input type="radio" id="bmaterial2" name="bmaterial" value="작업중"> <label for="drone1">작업중</label>
			<br>인쇄공정 <input type="radio" id="bprint1" name="bprint" value="완료"> <label for="drone1">완료</label> 
			<input type="radio" id="bprint2" name="bprint" value="작업중"> <label for="drone1">작업중</label>
			<br>코팅공정 <input type="radio" id="bcoating1" name="bcoating" value="완료"> <label for="drone1">완료</label> 
			<input type="radio" id="bcoating2" name="bcoating" value="작업중"> <label for="drone1">작업중</label>
			<br>합지공정 <input type="radio" id="bpaper1" name="bpaper" value="완료"> <label for="drone1">완료</label> 
			<input type="radio" id="bpaper2" name="bpaper"	value="작업중"> <label for="drone1">작업중</label>
			<br>접합공정 <input type="radio" id="bjoin1" name="bjoin" value="완료"> <label for="drone1">완료</label> 
			<input type="radio" id="bjoin2" name="bjoin" value="작업중"> <label for="drone1">작업중</label> 
			<br>포장공정 <input type="radio" id="bpackaging1" name="bpackaging" value="완료"> <label for="drone1">완료</label> 
			<input type="radio" id="bpackaging2" name="bpackaging" value="작업중"> <label for="drone1">작업중</label>
			<br>최종작업일자 <input type="text" name="bdate"> <span>예)20190101</span>
			<br>최종작업시간 <input type="text" name="btime"> <span>예)1300</span>
			<div>
				<span id="result"></span>
			</div>
			
			<br> <input type="submit" value="공정등록">
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="../footer.jsp"%>
</body>
</html>