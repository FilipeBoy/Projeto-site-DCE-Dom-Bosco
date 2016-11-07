<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Perdido"%> 
<%@page import="DAO.PerdidoDAO"%> 

<%

    String NomeObjeto = request.getParameter("NomeObjeto");
    String LocalPerda = request.getParameter("LocalPerda");
    String Descricao = request.getParameter("Descricao");
    String botao = request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Mensagem", null);
    session.setAttribute("Mensagem2", null);

    if (botao.equals("salvar")) {
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        Perdido perdido = new Perdido(Matricula_Usuario, NomeObjeto, LocalPerda, Descricao);
        PerdidoDAO perdidoDao = new PerdidoDAO();
        try {
            perdido = perdidoDao.salvar(perdido);
            session.setAttribute("Mensagem", "Cadastrado com sucesso!");
            session.setAttribute("Mensagem2", "Anote seu numero de registro: " + perdido.getID_Perdido());
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao cadastrar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("excluir")) {
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        int ID_Perdido = Integer.parseInt(request.getParameter("ID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido, Matricula_Usuario, NomeObjeto, LocalPerda, Descricao);
        PerdidoDAO perdidoDao = new PerdidoDAO();
        try {
            perdidoDao.excluir(perdido);
            session.setAttribute("Mensagem", "Excluido com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao excluir!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("editar")) {
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        int ID_Perdido = Integer.parseInt(request.getParameter("ID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido, Matricula_Usuario, NomeObjeto, LocalPerda, Descricao);
        PerdidoDAO perdidoDao = new PerdidoDAO();
        try {
            perdidoDao.editar(perdido);
            session.setAttribute("Mensagem", "Atualizado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao alterar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("buscar")) {
        int busca = Integer.parseInt(request.getParameter("busca"));
        Perdido perdido = new Perdido();
        perdido.setMatricula_Usuario(busca);
        PerdidoDAO perdidoDao = new PerdidoDAO();
        perdido = perdidoDao.buscarPorID_Perdido(perdido);
        if (perdido != null) {
            session.setAttribute("Retorno", "sim");
            session.setAttribute("campo1", perdido.getID_Perdido());
            session.setAttribute("campo2", perdido.getMatricula_Usuario());
            session.setAttribute("campo3", perdido.getNomeObjeto());
            session.setAttribute("campo4", perdido.getLocalPerda());
            session.setAttribute("campo5", perdido.getDescricao());

            request.getRequestDispatcher("CadastroPerdidos.jsp").forward(request, response);
        } else {
            session.setAttribute("Mensagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroPerdidos.jsp").forward(request, response);
        }
    }


%>


