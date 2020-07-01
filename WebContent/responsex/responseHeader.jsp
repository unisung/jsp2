<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>response header</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expire", 1l);

%>
아이디:<%=request.getAttribute("id") %><br>
파람아이디:<%=request.getParameter("id") %><br>

</body>
</html>