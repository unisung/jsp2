<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setAttribute("id","hong");
	//response.sendRedirect("https://www.google.com/");
	//get방식 전송
    response.sendRedirect("responseHeader.jsp?id=hong");
%>

</body>
</html>