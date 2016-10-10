<%@page import="MODEL.Usuario"%> 
<%@page import="DAO.UsuarioDAO"%>

<%
   int matricula = request.getParameter("matricula").hashCode();
    String nome = request.getParameter("nome");
    String Nomecurso = request.getParameter("curso");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
     
    Usuario usuario= new Usuario(matricula,nome,Nomecurso,email,senha);
    UsuarioDAO usuarioDao= new UsuarioDAO();
    usuarioDao.salvar(usuario);
    session.setAttribute("Menssagem", "cadastrado com sucesso!");
    request.getRequestDispatcher("../VIEW/DCE.jsp").forward(request, response);
    
   /*String botao= request.getParameterValues("BotaoComando").toString();
    
    switch (botao){
        case "salvar":
        
        break;
        
        case "editar":
        
        break;
        
        case "excluir":
        
        break;
    }*/
    
   
%>
