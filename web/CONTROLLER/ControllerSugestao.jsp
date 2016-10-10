<%@page import="MODEL.Sugestao"%> 
<%@page import="DAO.SugestaoDAO"%> 

<%
    String data = request.getParameter("data");
    String status = request.getParameter("status");
    String assunto = request.getParameter("assunto");
    String texto = request.getParameter("texto");
    Sugestao sugestao= new Sugestao(data,status,assunto,texto);
    SugestaoDAO sugestaoDao= new SugestaoDAO();
    sugestaoDao.salvar(sugestao);
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
