<%@page import="MODEL.Noticia"%> 
<%@page import="DAO.NoticiaDAO"%> 
 
<%
    String autor = request.getParameter("Autor");
    String data = request.getParameter("Data");
    String titulo = request.getParameter("Titulo");
    String texto = request.getParameter("Texto");
    
    Noticia noticia= new Noticia(autor,data,titulo,texto);
    NoticiaDAO cursoDao= new NoticiaDAO();
    cursoDao.salvar(noticia);
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
