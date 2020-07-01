<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>초기화 파라미터값 읽어오기</title>
</head>
<body>
초기화 파라미터 목록:
<ul>
  <%
     /* 초기화 파라미터 이름 목록 저장 
       getInitParameterNames()
     */
  	 Enumeration<String> initParamEnum 
  	     = application.getInitParameterNames();
    while(initParamEnum.hasMoreElements()){
    	String initParamName = initParamEnum.nextElement();
    	/* 파라미터 이름으로 값 얻기 getInitParameter(이름) */
    	String intiParamValue = application.getInitParameter(initParamName);
    	%>
    	<li><%=initParamName%>=<%=intiParamValue%></li>
    <%} %>
    
    <br>
    <h3>서버정보 출력</h3>
   서버정보:<%=application.getServerInfo() %><br>
  서블릿 규약 메이저 버전:<%=application.getMajorVersion() %><br>
 서블릿 규약 마이너 버전:<%=application.getMinorVersion() %><br>
    
</ul>
</body>
</html>