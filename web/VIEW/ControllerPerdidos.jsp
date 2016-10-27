<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Perdido"%> 
<%@page import="DAO.PerdidoDAO"%> 

<%
    
    String NomeObjeto = request.getParameter("NomeObjeto");
    String LocalPerda = request.getParameter("LocalPerda");
    String Descricao = request.getParameter("Descricao");
    String botao= request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Menssagem", null);
    
   if(botao.equals("salvar")){
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        Perdido perdido = new Perdido(Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.salvar(perdido);
            session.setAttribute("Menssagem", "Cadastrado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        int ID_Perdido = Integer.parseInt(request.getParameter("ID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.excluir(perdido);
            session.setAttribute("Menssagem", "Excluido com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
        int ID_Perdido = Integer.parseInt(request.getParameter("ID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.editar(perdido);
            session.setAttribute("Menssagem", "Atualizado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int busca = Integer.parseInt(request.getParameter("busca"));
        Perdido perdido = new Perdido();
        perdido.setMatricula_Usuario(busca);
        PerdidoDAO perdidoDao= new PerdidoDAO();
        perdido=perdidoDao.buscarPorID_Perdido(perdido);
        if( perdido!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", perdido.getID_Perdido());
        session.setAttribute("campo2", perdido.getMatricula_Usuario());
        session.setAttribute("campo3", perdido.getNomeObjeto());
        session.setAttribute("campo4", perdido.getLocalPerda());
        session.setAttribute("campo5", perdido.getDescricao());
         
       request.getRequestDispatcher("CadastroPerdidos.jsp").forward(request, response); 
        }else{
           session.setAttribute("Menssagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroPerdidos.jsp").forward(request, response); 
        }
      }
            
    
%>


