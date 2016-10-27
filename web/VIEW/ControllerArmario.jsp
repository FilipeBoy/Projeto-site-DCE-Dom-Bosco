<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Armario"%> 
<%@page import="DAO.ArmarioDAO"%> 

<%
    String nome = request.getParameter("NomeUsuario");
    String dataInicio = request.getParameter("DataInicio");
    String dataFim = request.getParameter("DataFim");
    String botao= request.getParameter("BotaoComando");
    session.setAttribute("Retorno", null);
    session.setAttribute("Menssagem", null);
    
    if(botao.equals("salvar")){
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        Armario armario = new Armario(matricula,nome,dataInicio, dataFim);
            ArmarioDAO armarioDao= new ArmarioDAO();
           armarioDao.salvar(armario);
           session.setAttribute("Menssagem", "Cadastrado com sucesso!\n Seu numero de registro: ");
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
        //List<Armario> armarioLista;
        int busca = Integer.parseInt(request.getParameter("busca"));
        Armario armario = new Armario();
        armario.setMatriculaUsuario(busca);
        ArmarioDAO armarioDao= new ArmarioDAO();
        armario = armarioDao.buscarPorMatricula(armario);
        if( armario!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", armario.getNroRegistro());
        session.setAttribute("campo2", armario.getMatriculaUsuario());
        session.setAttribute("campo3", armario.getNomeUsuario());
        session.setAttribute("campo4", armario.getDataInicio());
        session.setAttribute("campo5", armario.getDataFim()); 
       request.getRequestDispatcher("CadastroArmario.jsp").forward(request, response); 
        }else{
           session.setAttribute("Menssagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroArmario.jsp").forward(request, response); 
        }
         
   }       
    
%>

