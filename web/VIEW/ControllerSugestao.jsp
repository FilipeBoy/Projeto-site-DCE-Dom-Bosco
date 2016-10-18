<%@page import="MODEL.Sugestao"%> 
<%@page import="DAO.SugestaoDAO"%> 

<%
    String data = request.getParameter("data");
    String status = request.getParameter("status");
    String assunto = request.getParameter("assunto");
    String descricao =request.getParameter("descricao");
    String botao= request.getParameter("BotaoComando");
    
    if(botao.equals("salvar")){
        Sugestao sugestao= new Sugestao(data,status,assunto,descricao);
        SugestaoDAO sugestaoDao= new SugestaoDAO();
        sugestaoDao.salvar(sugestao);
        session.setAttribute("Menssagem", "Cadastrado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        int ID_Sugestao = Integer.parseInt(request.getParameter("buscaID_Sugestao"));
        Sugestao sugestao= new Sugestao(ID_Sugestao,status,data,assunto,descricao);
        SugestaoDAO sugestaoDao= new SugestaoDAO();
        sugestaoDao.excluir(sugestao);
        session.setAttribute("Menssagem", "Excluido com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int ID_Sugestao = Integer.parseInt(request.getParameter("buscaID_Sugestao"));
        Sugestao sugestao= new Sugestao(ID_Sugestao,status,data,assunto,descricao);
        SugestaoDAO sugestaoDao= new SugestaoDAO();
        sugestaoDao.editar(sugestao);
        session.setAttribute("Menssagem", "Atualizado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int ID_Sugestao = Integer.parseInt(request.getParameter("buscaID_Sugestao"));
        Sugestao sugestao= new Sugestao(ID_Sugestao,status,data,assunto,descricao);
        SugestaoDAO sugestaoDao= new SugestaoDAO();
                   
        // ResultSet temp = armarioDao.consultarDados(armario);
         //response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
        /// +"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
            
    
   
%>
