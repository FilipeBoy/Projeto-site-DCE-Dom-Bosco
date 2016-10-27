<%@page import="MODEL.Usuario"%> 
<%@page import="DAO.UsuarioDAO"%>

<%
   int matricula =Integer.parseInt(request.getParameter("matricula"));
    String nome = request.getParameter("nome");
    String Nomecurso = request.getParameter("curso");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String botao= request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Menssagem", null);
    
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
        Usuario usuario= new Usuario(matricula);
        UsuarioDAO usuarioDao= new UsuarioDAO();
        usuario=usuarioDao.buscarPorMatricula(usuario);
        
        if( usuario!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", usuario.getMatricula());
        session.setAttribute("campo2", usuario.getNome());
        session.setAttribute("campo3", usuario.getCurso());
        session.setAttribute("campo4", usuario.getEmail());
        session.setAttribute("campo5", usuario.getPassword()); 
       request.getRequestDispatcher("CadastroUsuario.jsp").forward(request, response); 
        }else{
           session.setAttribute("Menssagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroUsuario.jsp").forward(request, response); 
        }
      }
            
    
   
%>
