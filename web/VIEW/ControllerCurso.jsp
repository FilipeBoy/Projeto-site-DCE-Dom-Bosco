<%@page import="MODEL.Curso"%> 
<%@page import="DAO.CursoDAO"%> 

<%
    String nome = request.getParameter("nome");
    String horario = request.getParameter("horario");
    String cargaHoraria = request.getParameter("cargaHoraria");
    String descricao = request.getParameter("descricao");
    String botao= request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Menssagem", null);
    
    if(botao.equals("salvar")){
        Curso curso= new Curso(nome,horario,cargaHoraria,descricao);
        CursoDAO cursoDao= new CursoDAO();
        cursoDao.salvar(curso);
        session.setAttribute("Menssagem", "Cadastrado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
      
    }else if(botao.equals("excluir")){
        int buscaID_Curso = Integer.parseInt(request.getParameter("buscaID_Curso"));
        Curso curso= new Curso(buscaID_Curso,nome,horario, cargaHoraria, descricao);
        CursoDAO cursoDao= new CursoDAO();
        cursoDao.excluir(curso);
        session.setAttribute("Menssagem", "Excluido com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    
    }
    else if(botao.equals("editar")){
        int buscaID_Curso = Integer.parseInt(request.getParameter("buscaID_Curso"));
        Curso curso= new Curso(buscaID_Curso,nome,horario, cargaHoraria, descricao);
        CursoDAO cursoDao= new CursoDAO();
        cursoDao.editar(curso);
        session.setAttribute("Menssagem", "Atualizado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    
    }
    else if(botao.equals("buscar")){
        String busca = request.getParameter("busca");
        Curso curso= new Curso();
        curso.setNome_Curso(busca);
        CursoDAO cursoDao= new CursoDAO();
        curso=cursoDao.buscarPorNomeCurso(curso); 
        if( curso!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", curso.getNome_Curso());
        session.setAttribute("campo2", curso.getHorario());
        session.setAttribute("campo3", curso.getCargaHoraria());
        session.setAttribute("campo4", curso.getDescricao());
         
       request.getRequestDispatcher("CadastroCursos.jsp").forward(request, response); 
        }else{
           session.setAttribute("Menssagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroCursos.jsp").forward(request, response); 
        }           
      
    }
        
   
%>
