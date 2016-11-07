<%@page import="java.sql.SQLException"%>
<%@page import="MODEL.Sugestao"%> 
<%@page import="DAO.SugestaoDAO"%> 

<%
    String data = request.getParameter("data");
    String status = request.getParameter("status");
    String assunto = request.getParameter("assunto");
    String descricao = request.getParameter("descricao");
    String botao = request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Mensagem", null);
    session.setAttribute("Mensagem2", null);

    if (botao.equals("salvar")) {
        Sugestao sugestao = new Sugestao(data, status, assunto, descricao);
        SugestaoDAO sugestaoDao = new SugestaoDAO();
        try {
            sugestao = sugestaoDao.salvar(sugestao);
            session.setAttribute("Mensagem", "Cadastrado com sucesso!");
            session.setAttribute("Mensagem2", "Anote seu numero de registro: " + sugestao.getID_Sugestao());
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao cadastrar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);

    } else if (botao.equals("excluir")) {
        int ID_Sugestao = Integer.parseInt(request.getParameter("ID_Sugestao"));
        Sugestao sugestao = new Sugestao(ID_Sugestao, status, data, assunto, descricao);
        SugestaoDAO sugestaoDao = new SugestaoDAO();
        try {
            sugestaoDao.excluir(sugestao);
            session.setAttribute("Mensagem", "Excluido com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao excluir!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("editar")) {
        int ID_Sugestao = Integer.parseInt(request.getParameter("ID_Sugestao"));
        Sugestao sugestao = new Sugestao(ID_Sugestao, status, data, assunto, descricao);
        SugestaoDAO sugestaoDao = new SugestaoDAO();
        try {
            sugestaoDao.editar(sugestao);
            session.setAttribute("Mensagem", "Atualizado com sucesso!");
        } catch (SQLException e) {
            session.setAttribute("Mensagem", "Falha ao alterar!");
        }
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    } else if (botao.equals("buscar")) {
        int busca = Integer.parseInt(request.getParameter("busca"));
        Sugestao sugestao = new Sugestao();
        sugestao.setID_Sugestao(busca);
        SugestaoDAO sugestaoDao = new SugestaoDAO();
        sugestao = sugestaoDao.buscarID_Sugestao(sugestao);
        if (sugestao != null) {
            session.setAttribute("Retorno", "sim");
            session.setAttribute("campo1", sugestao.getID_Sugestao());
            session.setAttribute("campo2", sugestao.getData());
            session.setAttribute("campo3", sugestao.getStatus());
            session.setAttribute("campo4", sugestao.getAssunto());
            session.setAttribute("campo5", sugestao.getDescricao());
            request.getRequestDispatcher("CadastroSugestoes.jsp").forward(request, response);
        } else {
            session.setAttribute("Mensagem", "Registro nao encontrado");
            request.getRequestDispatcher("CadastroSugestoes.jsp").forward(request, response);
        }
    }


%>
