<%-- 
    Document   : AutenticaUsuario
    Created on : 04/10/2016, 21:44:46
    Author     : filip
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.ConexaoMySQL"%> 
<%@page import="MODEL.Usuario"%>
<%
    String emailUsuario = request.getParameter("email");
    String senhaUsurario = request.getParameter("password");
    Usuario user= new Usuario();
    

    ConexaoMySQL.getConexaoMySQL();
     ResultSet rs = ConexaoMySQL.stmt.executeQuery("select Email,Password,Nome from DCE_Pessoa where email='"+emailUsuario+"';");
            String login="";
            String senha="";
            String nome="";
           while (rs.next()) {
                login= rs.getString("email");
                senha= rs.getString("Password");
                nome=rs.getString("Nome");
                
            }
            if(login.equals(emailUsuario) && senha.equals(senhaUsurario)) 
                {
                            user.setNome(nome);
                            request.setAttribute("Nome", nome);
                            request.getRequestDispatcher("../VIEW/DCE.jsp").forward(request, response);
                            
                }
                    else
                        {
                            //out.print("não conectado");
                            //request.setAttribute("Falha", "Erro de Autenticação");
                            request.getRequestDispatcher("Projeto_DCE/Login.jsp").forward(request, response);
                        }
    ConexaoMySQL.FecharConexao();
   
%>


