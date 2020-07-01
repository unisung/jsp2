<%@page import="java.util.Enumeration"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html><html><head><meta charset="UTF-8">
<title>page내장객체 메소드</title></head>
<body>
<%  /* 내장객체에 객체 저장하기 setAttribute(이름,객체); 
       request,session, application, page */
	pageContext.setAttribute("message", "hello");
%>
<!-- 내장객체에 저장된 객체 출력 getAttribute(이름); -->
<%=pageContext.getAttribute("message") %>;
<% 
   /* Crtl+shift+ /  :  page객체에는 getAttributeNames()메소드가 없음*/
%>
<br>
<% /* 내장객체에 저장된 객체 제거 removeAttribute(이름) */
	pageContext.removeAttribute("message");
%>
<%=pageContext.getAttribute("message") %><br>
<%
	String message = "hello";
%>
<%=message %><br>
</body>
</html>