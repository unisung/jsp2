<%@page import="java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%><%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration<String> paramNames=request.getParameterNames();
%>
<%
	while(paramNames.hasMoreElements()){
		String parmaName=paramNames.nextElement();
	}
%>
<%
	Map<String,String[]> paramMap
	   =(Map<String,String[]>)request.getParameterMap();
%>
<%
    /* 반복자 */
	Set<String> keySet=paramMap.keySet();
    Iterator<String> itor = keySet.iterator();
%>
<%
	while(itor.hasNext()){
		String name=itor.next();
		String[] values=paramMap.get(name);
		out.print(name+":"+Arrays.toString(values)+"<br>");
	}
%>
<br><br>
<h3>파라미터 정보</h3>
이름:<%=request.getParameter("myname")%><br>
아이디:<%=request.getParameter("idname") %><br>
비번:<%=request.getParameter("pw") %><br>
전화번호:<%=request.getParameter("phone1")%>
       -<%=request.getParameter("phone2")%>
       -<%=request.getParameter("phone3") %><br>
성별:<%=request.getParameter("gender").equals("yes")?"남성":"여성" %><br>
취미:<%
/* 동일 파라미터name으로 여러개의 값이 전달되면 getParameterValues()로 받음
   리턴타입은 String[]
*/
     String[] hobbies=request.getParameterValues("hobby");
     int cont=0;
     int length = hobbies.length;
     for(String h:hobbies){
    	 out.print(h+(cont==(length-1)?"":","));
    	 cont++;
     }
     %><br>
비고:<%=request.getParameter("comment") %><br>









       
</body>
</html>