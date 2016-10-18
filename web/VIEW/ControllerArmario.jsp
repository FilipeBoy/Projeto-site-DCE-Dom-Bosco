<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Armario"%> 
<%@page import="DAO.ArmarioDAO"%> 

<%
    String nome = request.getParameter("NomeUsuario");
    String dataInicio = request.getParameter("DataInicio");
    String dataFim = request.getParameter("DataFim");
    String botao= request.getParameter("BotaoComando");
   
   if(botao.equals("salvar")){
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        Armario armario = new Armario(matricula,nome,dataInicio, dataFim);
            ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.salvar(armario);
            session.setAttribute("Menssagem", "Cadastrado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        int NroRegistro = Integer.parseInt(request.getParameter("NroRegistro"));
        Armario armario = new Armario(NroRegistro,matricula,nome,dataInicio, dataFim);
        ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.excluir(armario);
            session.setAttribute("Menssagem", "Excluido com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int NroRegistro = Integer.parseInt(request.getParameter("NroRegistro"));
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        Armario armario = new Armario(NroRegistro,matricula,nome,dataInicio, dataFim);
        ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.editar(armario);
            session.setAttribute("Menssagem", "Atualizado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int matricula = Integer.parseInt(request.getParameter("buscaMatricula"));
        Armario armario = new Armario(matricula);
        ArmarioDAO armarioDao= new ArmarioDAO();
                   
         ResultSet temp = armarioDao.consultarDados(armario);
         response.sendRedirect("CadastroArmario.jsp&NroRegistro="+ temp.getString("NroRegistro")+"&MatriculaUsuario="+temp.getString("MatriculaUsuario")+"&NomeUsuario="+temp.getString("NomeUsuario")
         +"&DataInicio="+temp.getString("DataInicio")+"&DataFim="+temp.getString("DataFim"));  
      }
            
    
%>

