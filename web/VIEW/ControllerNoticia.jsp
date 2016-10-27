<%@page import="MODEL.Noticia"%> 
<%@page import="DAO.NoticiaDAO"%> 
 
<%
    String autor = request.getParameter("Autor");
    String data = request.getParameter("Data");
    String titulo = request.getParameter("Titulo");
    String texto = request.getParameter("Texto");
     String botao= request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Menssagem", null);
     
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
        int busca = Integer.parseInt(request.getParameter("busca"));
        Noticia noticia= new Noticia();
        noticia.setID_Noticia(busca);
        NoticiaDAO noticiaDao= new NoticiaDAO();
        noticia=noticiaDao.buscarPorID_Noticia(noticia);
        if( noticia!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", noticia.getAutor());
        session.setAttribute("campo2", noticia.getData());
        session.setAttribute("campo3", noticia.getTitulo());
        session.setAttribute("campo4", noticia.getTexto());
        request.getRequestDispatcher("CadastroNoticias.jsp").forward(request, response); 
        }else{
           session.setAttribute("Menssagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroNoticias.jsp").forward(request, response); 
        }           
      }
    
%>
