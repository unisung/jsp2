<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>pageContext기본객체</title>
</head>
<body>
<%
	HttpServletRequest httpServletRequest
	  = (HttpServletRequest)pageContext.getRequest();
%>
request 기본 객체와 pageContext.getRequest()로 얻은 객체의 동일성 여부
<%=request==httpServletRequest%>
<br>

pageContext.getOut()메소드를 이용한 데이터 출력:
<%
	pageContext.getOut().print("안녕하세요!!");
%>
<%  out.print("저도 안녕합니다.") ;%>
</body>
</html>