<%
    String usuario = (String) session.getAttribute("Nome");
    String mensagem=(String)session.getAttribute("Mensagem");
    String retorno=(String)session.getAttribute("Retorno");
   
%>
<%@page import="DAO.ArmarioDAO"%> 
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
                  .form-control{
                      width: 70% !important;
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
                            <a href="TelaServicos.jsp">Servi�os</a>
                        </li>
                        <li class="active">
                            <a href="TelaNoticias.jsp">Not�cias</a>
                        </li>
                        <li class="active">
                            <a href="TelaAdministrativo.jsp">Administrativo</a>
                        </li>
                        <li class="active">
                            <a href="TelaContato.jsp">Contato</a>
                        </li>
                        <% if (usuario != null && usuario.equals("admin")) {%>
                        <li class="active">
                            <a href="TelaRelatorios.jsp">Relat�rios</a>
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
        <div class="section text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 text-center">
                        <img src="/Projeto_DCE/IMAGES/reserva.png" class="img-responsive"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <a><% if (mensagem!= null) {out.print(mensagem);}%></a>
                        <form role="form" action="ControllerArmario.jsp" method="post">
                            <div class="form-group">
                                    <label for="busca" class="control-label"></label>
                                    <input type="number" class="form-control" name="busca" placeholder="Digite o numero de registro">
                           </div>
                            <div class="form-group">
                                    <button type="submit" class="btn btn-primary" name="BotaoComando" value="buscar">Buscar</button>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="NroRegistro">N�mero de Registro</label>
                                <input class="form-control" name="NroRegistro" type="number" placeholder="Nao � necessario preencher" <% if(retorno != null) {%> value=<%out.print(Integer.parseInt(session.getAttribute("campo1").toString()));%><%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="MatriculaUsuario">Matr�cula</label>
                                <input class="form-control" name="MatriculaUsuario" placeholder="000000" type="number" <% if(retorno != null) {%> value=<%out.print(session.getAttribute("campo2"));%><%}%> >
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="NomeUsuario">Nome</label>
                                <input class="form-control" name="NomeUsuario" placeholder="Nome Completo" type="text" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo3"));%>"<%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="DataInicio">Data In�cio</label>
                                <input class="form-control" name="DataInicio" placeholder="__/__/__" type="text" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo4"));%>"<%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="DataFim">Data Fim</label>
                                <input class="form-control" name="DataFim" type="text" placeholder="__/__/__" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo5"));%>"<%}%>>
                            </div>
                            <div class="section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <button type="submit" class="btn btn-primary" name="BotaoComando" value="salvar">Enviar</button>
                                        </div>
                                        
                                       <% if (usuario != null && usuario.equals("admin")) {%>
                                        <div class="col-md-3">
                                            <button type="reset" class="btn btn-primary">Limpar</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary" name="BotaoComando" value="editar">Atualizar</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary" name="BotaoComando" value="excluir">Excluir</button>
                                        </div><%}%>
                                    </div>
                                </div>
                            </div>
                        </form>
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
<%session.setAttribute("Retorno", null);%>
<%session.setAttribute("Mensagem", null);%>