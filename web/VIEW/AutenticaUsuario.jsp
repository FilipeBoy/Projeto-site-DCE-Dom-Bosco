<%-- 
    Document   : AutenticaUsuario
    Created on : 04/10/2016, 21:44:46
    Author     : filip
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.ConexaoMySQL"%> 
<%@page import="MODEL.Usuario"%>

<%
    
    if(request.getParameter("email") == null || request.getParameter("password")==null || request.getParameter("email") == "" || request.getParameter("password")== ""){
        session.setAttribute("Mensagem", "usuario ou senha nao infomados");
        request.getRequestDispatcher("TelaLogin.jsp").forward(request, response);
    }else{    
        String emailUsuario = new String(request.getParameter("email"));
        String senhaUsurario = new String(request.getParameter("password"));
        String mensagem = new String("Falha na autenticação!");
    
        ConexaoMySQL.getConexaoMySQL();
        Statement comando = ConexaoMySQL.connection.createStatement();
        ResultSet rs = comando.executeQuery("select Email,Password,Nome from DCE_Usuario where Email='"+emailUsuario+"';");
        String login= new String("");
        String senha=new String("");
        String nome=new String("");
        while (rs.next()) {
            login= rs.getString("Email");
            senha= rs.getString("Password");
            nome=rs.getString("Nome");
        }
        if(login.equals(emailUsuario) && senha.equals(senhaUsurario)){
            session.setAttribute("Nome", nome);
            session.setAttribute("Mensagem", null);
            request.getRequestDispatcher("DCE.jsp").forward(request, response);
        }
        else{
            session.setAttribute("Nome", null);
            session.setAttribute("Mensagem", mensagem);
            request.getRequestDispatcher("TelaLogin.jsp").forward(request, response);
        }
        ConexaoMySQL.FecharConexao();}
    
   
%>


