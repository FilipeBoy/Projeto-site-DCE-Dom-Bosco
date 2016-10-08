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
    String emailUsuario = new String(request.getParameter("email"));
    String senhaUsurario = new String(request.getParameter("password"));
    String menssagem = new String("Falha na autenticação!");
    
    
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
            if(login.equals(emailUsuario) && senha.equals(senhaUsurario)) 
                {
                            
                            session.setAttribute("Nome", nome);
                            
                            request.getRequestDispatcher("DCE.jsp").forward(request, response);
                            session.setAttribute("Menssagem", null);
                }
                    else
                        {
                             session.setAttribute("Nome", null);
                             session.setAttribute("Menssagem", menssagem);
                            request.getRequestDispatcher("Login.jsp").forward(request, response);
                            
                        }
    ConexaoMySQL.FecharConexao();
   
%>


