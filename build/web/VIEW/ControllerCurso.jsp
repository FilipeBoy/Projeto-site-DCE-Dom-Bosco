<%@page import="java.sql.SQLException"%>
<%@page import="MODEL.Curso"%> 
<%@page import="DAO.CursoDAO"%> 

<%
    String nome = request.getParameter("nome");
    String horario = request.getParameter("horario");
    String cargaHoraria = request.getParameter("cargaHoraria");
    String descricao = request.getParameter("descricao");
    String botao = request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Mensagem", null);

    if (botao.equals("salvar")) {
        Curso curso = new Curso(nome, horario, cargaHoraria, descricao);
        CursoDAO cursoDao = new CursoDAO();
        try {
            cursoDao.salvar(curso);
            session.setAttribute("Mensagem", "Cadastrado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao cadastrar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("excluir")) {
        int busca = Integer.parseInt(request.getParameter("busca").toString());
        Curso curso = new Curso();
        curso.setID_Curso(busca);
        CursoDAO cursoDao = new CursoDAO();
        try {
            cursoDao.excluir(curso);
            session.setAttribute("Mensagem", "Excluido com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao excluir!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("editar")) {
        int busca = Integer.parseInt(request.getParameter("busca").toString());
        Curso curso = new Curso(busca,nome, horario, cargaHoraria, descricao);
        CursoDAO cursoDao = new CursoDAO();
        try {
            cursoDao.editar(curso);
            session.setAttribute("Mensagem", "Atualizado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao alterar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("buscar")) {
        int busca = Integer.parseInt(request.getParameter("busca").toString());
        Curso curso = new Curso();
        curso.setID_Curso(busca);
        CursoDAO cursoDao = new CursoDAO();
        curso = cursoDao.buscarPorID_Curso(curso);
        if (curso != null) {
            session.setAttribute("Retorno", "sim");
            session.setAttribute("campo1", curso.getNome_Curso());
            session.setAttribute("campo2", curso.getHorario());
            session.setAttribute("campo3", curso.getCargaHoraria());
            session.setAttribute("campo4", curso.getDescricao());
            session.setAttribute("campo5", curso.getID_Curso());

            request.getRequestDispatcher("CadastroCursos.jsp").forward(request, response);
        } else {
            session.setAttribute("Mensagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroCursos.jsp").forward(request, response);
        }

    }


%>
