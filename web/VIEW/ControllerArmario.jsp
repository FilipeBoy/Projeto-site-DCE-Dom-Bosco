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
    session.setAttribute("Mensagem", null);
    session.setAttribute("Mensagem2", null);
    
    if(botao.equals("salvar")){
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        Armario armario = new Armario(matricula,nome,dataInicio, dataFim);
            ArmarioDAO armarioDao= new ArmarioDAO();
           armario=armarioDao.salvar(armario);
           session.setAttribute("Mensagem", "Cadastrado com sucesso!");
           session.setAttribute("Mensagem2", "Anote seu numero de registro: "+armario.getNroRegistro());
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
           
    }else if(botao.equals("excluir")){
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        int NroRegistro = Integer.parseInt(request.getParameter("NroRegistro"));
        Armario armario = new Armario(NroRegistro,matricula,nome,dataInicio, dataFim);
        ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.excluir(armario);
            session.setAttribute("Mensagem", "Excluido com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("editar")){
        int NroRegistro = Integer.parseInt(request.getParameter("NroRegistro"));
        int matricula = Integer.parseInt(request.getParameter("MatriculaUsuario"));
        Armario armario = new Armario(NroRegistro,matricula,nome,dataInicio, dataFim);
        ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.editar(armario);
            session.setAttribute("Mensagem", "Atualizado com sucesso!");
            request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
    }
    else if(botao.equals("buscar")){
        int busca = Integer.parseInt(request.getParameter("busca"));
        Armario armario = new Armario();
        armario.setMatriculaUsuario(busca);
        ArmarioDAO armarioDao= new ArmarioDAO();
        armario = armarioDao.buscarPorNroRegistro(armario);
        if( armario!=null){
        session.setAttribute("Retorno", "sim");
        session.setAttribute("campo1", armario.getNroRegistro());
        session.setAttribute("campo2", armario.getMatriculaUsuario());
        session.setAttribute("campo3", armario.getNomeUsuario());
        session.setAttribute("campo4", armario.getDataInicio());
        session.setAttribute("campo5", armario.getDataFim()); 
       request.getRequestDispatcher("CadastroArmario.jsp").forward(request, response); 
        }else{
           session.setAttribute("Mensagem", "registro nao encontrado");
            request.getRequestDispatcher("CadastroArmario.jsp").forward(request, response); 
        }
         
   }       
    
%>

