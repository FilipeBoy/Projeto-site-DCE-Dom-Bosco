<%@page import="java.sql.SQLException"%>
<%@page import="MODEL.Usuario"%> 
<%@page import="DAO.UsuarioDAO"%>

<%
    int matricula = Integer.parseInt(request.getParameter("matricula"));
    String nome = request.getParameter("nome");
    String Nomecurso = request.getParameter("curso");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String botao = request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Mensagem", null);

    if (botao.equals("salvar")) {
        Usuario usuario = new Usuario(matricula, nome, Nomecurso, email, senha);
        UsuarioDAO usuarioDao = new UsuarioDAO();
        try {
            usuario =usuarioDao.salvar(usuario);
            if ((String) session.getAttribute("Nome") == null) {
                session.setAttribute("Nome", usuario.getNome());
                session.setAttribute("Conta", usuario.getMatricula());
            }
            session.setAttribute("Mensagem", "Cadastrado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao cadastrar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("excluir")) {
        Usuario usuario = new Usuario(matricula, nome, Nomecurso, email, senha);
        UsuarioDAO usuarioDao = new UsuarioDAO();
        try {
            usuarioDao.excluir(usuario);
            session.setAttribute("Mensagem", "Excluido com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao excluir!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("editar")) {
        Usuario usuario = new Usuario(matricula, nome, Nomecurso, email, senha);
        UsuarioDAO usuarioDao = new UsuarioDAO();
        try {
            usuarioDao.editar(usuario);
            session.setAttribute("Mensagem", "Atualizado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao alterar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("buscar")) {
        Usuario usuario = new Usuario(matricula);
        UsuarioDAO usuarioDao = new UsuarioDAO();
        usuario = usuarioDao.buscarPorMatricula(usuario);
        if (usuario != null) {
            session.setAttribute("Retorno", "sim");
            session.setAttribute("campo1", usuario.getMatricula());
            session.setAttribute("campo2", usuario.getNome());
            session.setAttribute("campo3", usuario.getCurso());
            session.setAttribute("campo4", usuario.getEmail());
            session.setAttribute("campo5", usuario.getPassword());
            request.getRequestDispatcher("CadastroUsuario.jsp").forward(request, response);
        } else {
            session.setAttribute("Mensagem", "Registro nao encontrado");
            request.getRequestDispatcher("CadastroUsuario.jsp").forward(request, response);
        }
    }


%>
