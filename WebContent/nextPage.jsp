<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>nextpage</h1>
<%
    request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
%>
<%=name %>

</body>
</html>