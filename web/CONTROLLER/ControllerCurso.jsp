<%@page import="MODEL.Curso"%> 
<%@page import="DAO.CursoDAO"%> 

<%
    String nome = request.getParameter("nome");
    String horario = request.getParameter("horario");
    String cargaHoraria = request.getParameter("cargaHoraria");
    String descricao = request.getParameter("descricao");
    
    Curso curso= new Curso(nome,horario,cargaHoraria,descricao);
    CursoDAO cursoDao= new CursoDAO();
    cursoDao.salvar(curso);
    session.setAttribute("Menssagem", "cadastrado com sucesso!");
    request.getRequestDispatcher("../VIEW/DCE.jsp").forward(request, response);
    
    
    
    /*String botao= request.getHeader("BotaoComando");
    
    switch (botao){
        case "salvar":
        cursoDao.salvar(curso);
        break;
        
        case "editar":
        cursoDao.editar(curso);
        break;
        
        case "excluir":
        cursoDao.editar(curso);
        break;
    }*/
        
   
%>
