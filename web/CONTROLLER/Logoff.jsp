<%-- 
    Document   : Logoff
    Created on : 06/10/2016, 17:41:51
    Author     : filip
--%>
<%
   
    request.setAttribute("Nome", null);
    request.getRequestDispatcher("../VIEW/DCE.jsp").forward(request, response);
    %>

