<%@page import="MODEL.Armario"%> 
<%@page import="DAO.ArmarioDAO"%> 
<%
    int matricula = request.getParameter("MatriculaUsuario").hashCode();
    String nome = request.getParameter("NomeUsuario");
    String dataInicio = request.getParameter("DataInicio");
    String dataFim = request.getParameter("DataFim");
    
    Armario armario = new Armario(matricula,nome,dataInicio, dataFim);
    ArmarioDAO armarioDao= new ArmarioDAO();
    armarioDao.salvar(armario);
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

