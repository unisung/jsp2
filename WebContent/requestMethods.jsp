<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>request내장객체 메소드</title></head>
<body>
<%  /* 내장객체에 객체 저장하기 setAttribute(이름,객체); 
       request,session, application, page */
	request.setAttribute("message", "hello");
%>
<!-- 내장객체에 저장된 객체 출력 getAttribute(이름); -->
<%=request.getAttribute("message") %>;
<%  /* 내장객체에 저장된 객체들의 이름 출력 getAttributeNames() */
	Enumeration<String> names=request.getAttributeNames();
    while(names.hasMoreElements()){
    	String name=names.nextElement();
    	out.print(name+"="+request.getAttribute(name)+"<br>");
    }
%>
<br>
<% /* 내장객체에 저장된 객체 제거 removeAttribute(이름) */
	request.removeAttribute("message");
%>
<%=request.getAttribute("message") %><br>
</body>
</html>