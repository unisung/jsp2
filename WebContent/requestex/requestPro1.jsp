<%@page import="java.net.URLDecoder"%>
<%@page import="dto.Fruit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%
    /* request로 넘어온 파라미터문자셋을 현재페이지의 문자셋인 utf-8로 변환 */
      request.setCharacterEncoding("utf-8");

	String kind =request.getParameter("kind");
    String price=request.getParameter("price");

    int iPrice =Integer.parseInt(price);
    
    Fruit fruit=new Fruit();
    fruit.setKind(kind); fruit.setPrice(iPrice);
%>
<%=request.getMethod() %><br>
<%=request.getProtocol() %><br>
<%-- <%=URLDecoder.decode(request.getQueryString())%><br> --%>
<%=fruit.getKind()+","+fruit.getPrice()%><br>
</body>
</html>