<%@page import="MODEL.Usuario"%> 
<%@page import="DAO.UsuarioDAO"%>

<%
   int matricula = request.getParameter("matricula").hashCode();
    String nome = request.getParameter("nome");
    String Nomecurso = request.getParameter("curso");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String botao= request.getParameter("BotaoComando");
    
    if(botao.equals("salvar")){
        Usuario usuario= new Usuario(matricula,nome,Nomecurso,email,senha);
        UsuarioDAO usuarioDao= new UsuarioDAO();
        usuarioDao.salvar(usuario);
        session.setAttribute("Menssagem", "Cadastrado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        Usuario usuario= new Usuario(matricula,nome,Nomecurso,email,senha);
        UsuarioDAO usuarioDao= new UsuarioDAO();
        usuarioDao.excluir(usuario);
        session.setAttribute("Menssagem", "Excluido com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        Usuario usuario= new Usuario(matricula,nome,Nomecurso,email,senha);
        UsuarioDAO usuarioDao= new UsuarioDAO();
        usuarioDao.editar(usuario);
        session.setAttribute("Menssagem", "Atualizado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        Usuario usuario= new Usuario(matricula,nome,Nomecurso,email,senha);
        UsuarioDAO usuarioDao= new UsuarioDAO();
        usuarioDao.salvar(usuario);
                   
         //ResultSet temp = armarioDao.consultarDados(armario);
         //response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
         //+"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
            
    
   
%>
