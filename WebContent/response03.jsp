<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>요청페이지 입니다.</h1>
<%
    /* 오류메세지를 강제로 전송 sendError(상태코드,메세지); */
	response.sendError(404, "요청페이지를 찾을수 없습니다");
%>
</body>
</html>