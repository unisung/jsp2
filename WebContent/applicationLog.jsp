<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>로그 메세지 기록</title>
</head>
<body>
<%
	application.log("로그메세지 기록");
%>
로그 메세지를 기록합니다.
<%
	log("로그 메세지 기록2");
%>
로그 메세지를 기록합니다.
</body>
</html>
