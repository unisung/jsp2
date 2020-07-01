<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>내장객체 request</title></head>
<body>
서버명:<%=request.getServerName() %><br>
클라이언트주소:<%=request.getRemoteAddr() %><br>
클라이언트호스트:<%=request.getRemoteHost() %><br>
포트번호<%=request.getServerPort() %><br>
경로:<%=request.getServletPath() %><br>
컨텍스트정보:<%=request.getServletContext() %><br>
요청방식:<%=request.getMethod() %><br>
uri정보:<%=request.getRequestURI() %><br>
url정보:<%=request.getRequestURL() %><br>
application정보:<%=request.getContextPath() %><br>
포트번호:<%=request.getServerPort() %><br>
<%
	int index = request.getRequestURL().lastIndexOf("/");
%>
<%=index %><br>
<%
   String fileName = request.getRequestURL().substring(index+1);
%>
<%=fileName%><br>
<%=fileName.substring(0,fileName.indexOf(".")) %><br>
</body>
</html>