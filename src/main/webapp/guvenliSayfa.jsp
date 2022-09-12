<%-- 
    Document   : güvenliSayfa
    Created on : 31 Ağu 2022, 10:37:40
    Author     : ASUS PC
--%>
<% 
  String kullaniciAdi=(String)session.getAttribute("kullaniciAdi");
  if(kullaniciAdi == null){
    session.setAttribute("geriCagir","guvenliSayfa.jsp");
    response.sendRedirect("giris.jsp");
    return;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Güvenli</h1>
</body>
</html>

