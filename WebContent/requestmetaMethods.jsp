<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>request메타정보 메소드</title>
</head>
<body>
<%=request.getServerName() %><br>
<%=request.getServerPort() %><br>
<%=request.getServletPath() %><br><!-- /requestmetaMethods.jsp  -->
<%=request.getRemoteAddr() %><br>
<%=request.getRequestURL() %><br><!--  http://localhost:8080/jsp05/requestmetaMethods.jsp  -->
<%=request.getRequestURI() %><br><!-- /jsp05/requestmetaMethods.jsp -->
<%=request.getContextPath() %><br><!-- /jsp05 -->
<%
    int index = request.getServletPath().lastIndexOf('.');
	String commandName
	  =request.getServletPath().substring(1,index);
%><br>
<%=commandName %><br>
</body>
</html>