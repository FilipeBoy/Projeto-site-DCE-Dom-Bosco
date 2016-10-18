<%@page import="MODEL.Curso"%> 
<%@page import="DAO.CursoDAO"%> 

<%
    String nome = request.getParameter("nome");
    String horario = request.getParameter("horario");
    String cargaHoraria = request.getParameter("cargaHoraria");
    String descricao = request.getParameter("descricao");
    String botao= request.getParameter("BotaoComando");
    
    
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
        int matricula = Integer.parseInt(request.getParameter("buscaMatricula"));
        Curso curso= new Curso(nome,horario,cargaHoraria,descricao);
        CursoDAO cursoDao= new CursoDAO();
                   
         //ResultSet temp = armarioDao.consultarDados(armario);
         //response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
         ///+"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
        
   
%>
