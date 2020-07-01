<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>request </title>
</head>
<body>
<!-- http://localhost:8080/jsp05/requestParam.jsp?id=hong&name=홍길동&hobby=등산&hobby=영화감상&hobby=트래킹  -->
<%
	String id=request.getParameter("id");
    String name=request.getParameter("name");
    //String hobby=request.getParameter("hobby");
    String[] hobbies=request.getParameterValues("hobby");
%>
id:<%=id %><br>
name:<%=name %><br>
hobby:<%=Arrays.toString(hobbies) %><br>

</body>
</html>