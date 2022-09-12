<%-- 
    Document   : giris
    Created on : 31 Ağu 2022, 09:29:24
    Author     : ASUS PC
--%>
<%
    String giris=request.getParameter("Giris");
    String mesaj="Lütfen giriş yapınız.";
    if(giris!=null){
      String kullaniciAdi=request.getParameter("kullaniciAdi");
      String sifre=request.getParameter("sifre");
      String yoneticiKullaniciAdi= config.getServletContext().getInitParameter("kullanici_adi");
      String yoneticiSifre =config.getServletContext().getInitParameter("sifre1");
      if(kullaniciAdi.equals(yoneticiKullaniciAdi)){
         if(sifre.equals(yoneticiSifre)){
           session.setAttribute("kullaniciAdi",kullaniciAdi);
           String geriCagir=(String)session.getAttribute("geriCagir");
           if(geriCagir==null){
            geriCagir="anaSayfa.jsp";
           }
           response.sendRedirect(geriCagir);
           return;
         }else{
            mesaj="Şifre yanlış.";
         }
      }else{
      mesaj="Kullanıcı tanımlı değil. ";
      }
      
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
    <h1>GİRİŞ</h1>
    <%=mesaj%>
    <form action="giris.jsp" method="POST">
        <table>
                <tr><td>Kullanıcı Adı</td> <td><input type="text" name="kullaniciAdi" /></td></tr> 
                <tr><td>Şifre</td> <td><input type="password" name="sifre" /></td></tr> 
                <tr><td></td> <td><input type="submit" value="Gir" name="Giris"/></td></tr> 
            
        </table>
        <br/>
    </form>
</body>
</html>
