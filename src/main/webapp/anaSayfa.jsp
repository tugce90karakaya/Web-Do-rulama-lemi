<%-- 
    Document   : anaSayfa
    Created on : 31 Ağu 2022, 09:32:00
    Author     : ASUS PC
--%>
<% 
  String kullaniciAdi=(String)session.getAttribute("kullaniciAdi");
  if(kullaniciAdi == null){
    session.setAttribute("callback","anaSayfa.jsp");
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
    <h1>ANA SAYFA</h1>
    Hoşgeldin <%= kullaniciAdi%>!<br/><br/>
    <a href="cikis.jsp">Çıkış yap</a>
</body>
</html>
