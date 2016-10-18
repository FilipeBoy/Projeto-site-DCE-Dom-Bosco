<%@page import="MODEL.Noticia"%> 
<%@page import="DAO.NoticiaDAO"%> 
 
<%
    String autor = request.getParameter("Autor");
    String data = request.getParameter("Data");
    String titulo = request.getParameter("Titulo");
    String texto = request.getParameter("Texto");
     String botao= request.getParameter("BotaoComando");
    
    if(botao.equals("salvar")){
        Noticia noticia= new Noticia(autor,data,titulo,texto);
        NoticiaDAO noticiaDao= new NoticiaDAO();
        noticiaDao.salvar(noticia);
        session.setAttribute("Menssagem", "Cadastrado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
       
    }else if(botao.equals("excluir")){
        int ID_Noticia = Integer.parseInt(request.getParameter("buscaID_Noticia"));
        Noticia noticia= new Noticia(ID_Noticia,autor,data,titulo,texto);
        NoticiaDAO noticiaDao= new NoticiaDAO();
        noticiaDao.excluir(noticia);
        session.setAttribute("Menssagem", "Excluido com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int ID_Noticia = Integer.parseInt(request.getParameter("buscaID_Noticia"));
        Noticia noticia= new Noticia(ID_Noticia,autor,data,titulo,texto);
        NoticiaDAO noticiaDao= new NoticiaDAO();
        noticiaDao.editar(noticia);
        session.setAttribute("Menssagem", "Atualizado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int ID_Noticia = Integer.parseInt(request.getParameter("buscaID_Noticia"));
        Noticia noticia= new Noticia(ID_Noticia,autor,data,titulo,texto);
        NoticiaDAO noticiaDao= new NoticiaDAO();
                   
         //ResultSet temp = armarioDao.consultarDados(armario);
         //response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
         ///+"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
    
%>
