<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Perdido"%> 
<%@page import="DAO.PerdidoDAO"%> 

<%
    int Matricula_Usuario = Integer.parseInt(request.getParameter("Matricula_Usuario"));
    String NomeObjeto = request.getParameter("NomeObjeto");
    String LocalPerda = request.getParameter("LocalPerda");
    String Descricao = request.getParameter("Descricao");
    String botao= request.getParameter("BotaoComando");
   
   if(botao.equals("salvar")){
        
        Perdido perdido = new Perdido(Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.salvar(perdido);
            session.setAttribute("Menssagem", "Cadastrado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        int ID_Perdido = Integer.parseInt(request.getParameter("buscaID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.excluir(perdido);
            session.setAttribute("Menssagem", "Excluido com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int ID_Perdido = Integer.parseInt(request.getParameter("buscaID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.editar(perdido);
            session.setAttribute("Menssagem", "Atualizado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int ID_Perdido = Integer.parseInt(request.getParameter("buscaID_Perdido"));
        Perdido perdido = new Perdido(ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda, Descricao);
            PerdidoDAO perdidoDao= new PerdidoDAO();
                   
         //ResultSet temp = perdidoDao.consultarDados(perdido);
         //response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
         ///+"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
            
    
%>


