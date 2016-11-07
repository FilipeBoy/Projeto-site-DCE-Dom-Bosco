<%-- 
    Document   : Logoff
    Created on : 06/10/2016, 17:41:51
    Author     : filip
--%>
<%
   
    session.setAttribute("Nome", null);
    request.getRequestDispatcher("DCE.jsp").forward(request, response);
    %>

