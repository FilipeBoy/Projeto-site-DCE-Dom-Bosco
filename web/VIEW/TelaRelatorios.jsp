
<%@page import="DAO.ArmarioDAO"%>
<%@page import="DAO.SugestaoDAO"%>
<%@page import="DAO.PerdidoDAO"%>
<%@page import="DAO.CursoDAO"%>
<%@page import="DAO.NoticiaDAO"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="MODEL.Sugestao"%>
<%@page import="MODEL.Perdido"%>
<%@page import="MODEL.Curso"%>
<%@page import="MODEL.Noticia"%>
<%@page import="MODEL.Usuario"%>
<%@page import="MODEL.Armario"%>
<%@page import="java.util.List"%>
<%
    String usuario = (String) session.getAttribute("Nome");
    String opcao =request.getParameter("opcao");
    if((String) session.getAttribute("retorno")!=null){
        opcao = (String) session.getAttribute("retorno");
    }
    String campo1 = null, campo2 = null, campo3 = null, campo4 = null, campo5 = null;
    List<Armario> armarioLista = null;
    List<Usuario> usuarioLista = null;
    List<Noticia> noticiaLista = null;
    List<Curso>   cursoLista = null;
    List<Perdido> perdidoLista = null;
    List<Sugestao> sugestaoLista = null;

         
    if (opcao != null) {
        if (opcao.equalsIgnoreCase("Relatorio Usuarios")) {
            campo1 = "Matricula";
            campo2 = "Nome";
            campo3 = "Curso";
            campo4 = "Email";
            campo5 = "Senha";
            UsuarioDAO usuarioDao = new UsuarioDAO();
            usuarioLista = usuarioDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Armarios")) {
            campo1 = "Registro";
            campo2 = "Matricula";
            campo3 = "Nome";
            campo4 = "Data Inicio";
            campo5 = "DataFim";
            ArmarioDAO armarioDao = new ArmarioDAO();
            armarioLista = armarioDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Noticias")) {
            campo1 = "ID";
            campo2 = "Autor";
            campo3 = "Data";
            campo4 = "Titulo";
            campo5 = "Texto";
            NoticiaDAO noticiaDao = new NoticiaDAO();
            noticiaLista = noticiaDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Cursos")) {
            campo1 = "ID";
            campo2 = "Nome";
            campo3 = "Horario";
            campo4 = "Carga Horaria";
            campo5 = "Descrição";
            CursoDAO cursoDao = new CursoDAO();
            cursoLista = cursoDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Perdidos")) {
            campo1 = "ID";
            campo2 = "Matricula Usuario";
            campo3 = "Nome do Objeto";
            campo4 = "Local Perda";
            campo5 = "Descrição";
            PerdidoDAO perdidoDao = new PerdidoDAO();
            perdidoLista = perdidoDao.listar();
            
        } else if (opcao.equalsIgnoreCase("Relatorio Sugestoes")) {
            campo1 = "ID";
            campo2 = "Data";
            campo3 = "Status";
            campo4 = "Assunto";
            campo5 = "Descrição";
            SugestaoDAO sugestaoDao = new SugestaoDAO();
            sugestaoLista = sugestaoDao.listar();
        }
    }
 
%>

<html><head>
        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DCE Dom Bosco</title>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <style>
                .navbar
                {
                  background-color: #1c266d !important;
                  color: #fff;
                  border-color: #1c266d !important;
                 }

                  .navbar-default .navbar-nav > li > a 
                  {
                      color: #fff !important;
                      background-color: #1c266d !important;
                  }
                  .navbar-default .navbar-nav > li > a:hover
                  {
                      color: #fff !important;
                      background-color: #ac2925 !important;
                  }
                  .text-primary-inicial{
                      color:#1c266d !important;
                      background-color: rgba(181, 181, 181, 0.46);
                  }
                  .container-footer{
                      background-color: #1c266d !important;
                      color:#fff !important;
                  }
        </style>
    </head><body>
        <div class="navbar navbar-default">
            <div class="container-header">
                <div class="navbar-header">
                    <img class="img-responsive" src="/Projeto_DCE/IMAGES/logo dce.png" width="50" >
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active">
                            <a href="DCE.jsp">Home</a>
                        </li>
                        <li class="active">
                            <a href="TelaSobreDCE.jsp">Sobre DCE<br></a>
                        </li>
                        <li class="active">
                            <a href="TelaServicos.jsp">Serviços</a>
                        </li>
                        <li class="active">
                            <a href="TelaNoticias.jsp">Notícias</a>
                        </li>
                        <li class="active">
                            <a href="TelaAdministrativo.jsp">Administrativo</a>
                        </li>
                        <li class="active">
                            <a href="TelaContato.jsp">Contato</a>
                        </li>
                        <% if (usuario != null && usuario.equals("admin")) {%>
                        <li class="active">
                            <a href="TelaRelatorios.jsp">Relatórios</a>
                        </li><%}%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <% if (usuario != null) {%>
                        <li class="active">
                            <a href="Logoff.jsp">Sair</a>
                        </li>

                        <li class="active">
                            <a href="CadastroUsuario.jsp"><%out.print(usuario);%></a>
                        </li><%} else {%>
                        <li class="active">
                            <a href="TelaLogin.jsp">Entrar</a>
                        </li>  <%}%>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/administrador.png" class="img-responsive">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>Seja Bem vindo Administrador</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="btn-group btn-group-lg">
                            <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown">O que deseja ver?<br><i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Usuarios" >Relatório de Usuários</a>
                                </li>
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Armarios">Relatório de Armários</a>
                                </li>
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Noticias">Relatório de Notícias</a>
                                </li>
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Cursos">Relatório de Cursos</a>
                                </li>
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Perdidos">Relatório de Perdidos</a>
                                </li>
                                <li>
                                    <a href="TelaRelatorios.jsp?opcao=Relatorio Sugestoes">Relatório de Sugestões</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <%if (opcao != null) {%>
       <div><h2 class="col-md-12"><%out.print(opcao);%></h2></div>
         <form role="form" action="ControllerRelatorios.jsp" method="post">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th><%out.print(campo1);%></th>
                                    <th><%out.print(campo2);%></th>
                                    <th><%out.print(campo3);%></th>
                                    <th><%out.print(campo4);%></th>
                                    <th><%out.print(campo5);%></th>
                                    <th>Marcar</th>
                                </tr>
                            </thead>
                            <tbody>
                               
                               <% if (opcao.equalsIgnoreCase("Relatorio Usuarios")) {%>
                                    <%for (Usuario user : usuarioLista) {%>
                                        <tr>
                                            <td><%=user.getMatricula()%></td>
                                            <td><%=user.getNome()%></td>
                                            <td><%=user.getCurso()%></td>
                                            <td><%=user.getEmail()%></td>
                                            <td><%=user.getPassword()%></td>
                                           <td><input type="checkbox" value ='<%=user.getMatricula()%>' name="item"></td>
                                        </tr>
                                    <%}}%>
                                <%if(opcao.equalsIgnoreCase("Relatorio Armarios")){%>
                                    <%for (Armario arm : armarioLista) {%>   
                                        <tr>
                                            <td><%=arm.getNroRegistro()%></td>
                                            <td><%=arm.getMatriculaUsuario()%></td>
                                            <td><%=arm.getNomeUsuario()%></td>
                                            <td><%=arm.getDataInicio()%></td>
                                            <td><%=arm.getDataFim()%></td>
                                            <td><input type="checkbox" value ='<%=arm.getNroRegistro()%>' name="item"></td>
                                        </tr>
                                    <%}}%>
                                    <%if(opcao.equalsIgnoreCase("Relatorio Noticias")){%>
                                        <%for (Noticia noticia : noticiaLista) {%>   
                                            <tr>
                                                <td><%=noticia.getID_Noticia()%></td>
                                                <td><%=noticia.getAutor()%></td>
                                                <td><%=noticia.getData()%></td>
                                                <td><%=noticia.getTitulo()%></td>
                                                <td><%=noticia.getTexto().concat(" ")%></td>
                                                <td><input type="checkbox" value ='<%=noticia.getID_Noticia()%>' name="item"></td>
                                            </tr>
                                    <%}}%>
                                    <%if(opcao.equalsIgnoreCase("Relatorio Cursos")){%>
                                        <%for (Curso curso : cursoLista) {%>   
                                            <tr>
                                                <td><%=curso.getID_Curso()%></td>
                                                <td><%=curso.getNome_Curso()%></td>
                                                <td><%=curso.getHorario()%></td>
                                                <td><%=curso.getCargaHoraria()%></td>
                                                <td><%=curso.getDescricao().concat(" ")%></td>
                                                <td><input type="checkbox" value ='<%=curso.getID_Curso()%>' name="item"></td>
                                            </tr>
                                    <%}}%>
                                    <%if(opcao.equalsIgnoreCase("Relatorio Perdidos")){%>
                                        <%for (Perdido perdido : perdidoLista) {%>   
                                            <tr>
                                                <td><%=perdido.getID_Perdido()%></td>
                                                <td><%=perdido.getMatricula_Usuario()%></td>
                                                <td><%=perdido.getNomeObjeto()%></td>
                                                <td><%=perdido.getLocalPerda()%></td>
                                                <td><%=perdido.getDescricao().concat(" ")%></td>
                                                <td><input type="checkbox" value ='<%=perdido.getID_Perdido()%>' name="item"></td>
                                            </tr>
                                    <%}}%>
                                    <%if(opcao.equalsIgnoreCase("Relatorio Sugestoes")){%>
                                        <%for (Sugestao sugestao : sugestaoLista) {%>   
                                            <tr>
                                                <td><%=sugestao.getID_Sugestao()%></td>
                                                <td><%=sugestao.getData()%></td>
                                                <td><%=sugestao.getStatus()%></td>
                                                <td><%=sugestao.getAssunto()%></td>
                                                <td><%=sugestao.getDescricao().concat(" ")%></td>
                                                <td><input type="checkbox" value ='<%=sugestao.getID_Sugestao()%>' name="item"></td>
                                            </tr>
                                    <%}}%>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
                <a class="btn btn-primary" onclick="window.print();">Imprimir</a>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-primary" name="BotaoComando" value="<%=opcao%>">Excluir</button>
            </div>
        </form>
             <%}%>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <a class="btn btn-primary" href="CadastroUsuario.jsp">Editar Usuários</a>
                        <a class="btn btn-primary" href="CadastroArmario.jsp">Editar Armários</a>
                        <a class="btn btn-primary" href="CadastroNoticias.jsp">Editar Notícias</a>
                        <a class="btn btn-primary " href="CadastroCursos.jsp">Editar Cursos</a>
                        <a class="btn btn-primary" href="CadastroPerdidos.jsp">Editar Perdidos</a>
                        <a class="btn btn-primary" href="CadastroSugestoes.jsp">Editar Sugestões</a>
                    </div>
                </div>
            </div>
        </div>
        <footer class="container-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Contato</h1>
                        <p>Email: domboscodce@gmail.com&nbsp;
                            <br>
                            <br>Facebook: https://www.facebook.com/domboscodce&nbsp;
                            <br>
                            <br>Fone: (51) 3361-6700&nbsp;</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-info text-right">
                            <br>
                            <br>
                        </p>
                        <div class="row">
                            <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="https://www.facebook.com/domboscodce"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="https://www.facebook.com/domboscodce"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                            <div class="col-md-6">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
</body></html>
<%session.setAttribute("retorno",  null );%>
