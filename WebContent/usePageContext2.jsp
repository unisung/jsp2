<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%
	/* PageContext pageContext = new PageContext(); */
	String info =pageContext.getServletContext().getServerInfo();
%>
<%=info %><br>
<%
	String url=
	   pageContext.getServletContext().getInitParameter("url");
%>
<%=url %><br>
<!-- 내장객체인 application과 getServletContext()로 얻어진 객체가 동일한가? -->
<%=application==pageContext.getServletContext() %><br>
<%=application.getInitParameter("url") %>

</body>
</html>