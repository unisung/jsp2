<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    //현재 페이지 전체 버퍼크기
    out.println(out.getBufferSize()+"<br>");
	out.println("Hello!!!!");
	out.newLine();
    out.println("Java Server Pages 입니다.");
    //출력후 남은 버퍼크기
    out.println("<br>"+out.getRemaining());
    //버퍼자동 비우기 여부 true/false
    out.println("<br>"+out.isAutoFlush());
%>
</body>
</html>