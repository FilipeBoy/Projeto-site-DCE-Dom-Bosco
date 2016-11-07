<%
    String mensagem=(String)session.getAttribute("Mensagem");
    String usuario=(String)session.getAttribute("Nome");
      String retorno=(String)session.getAttribute("Retorno");
%>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DCE Dom Bosco</title>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    </head><body>
        
        <div class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active">
                            <a href="DCE.jsp">Home</a>
                        </li>
                        <li class="active">
                            <a href="TelaSobre DCE.jsp">Sobre DCE<br></a>
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
                        <% if (usuario!=null && usuario.equals("admin")) {%>
                        <li class="active">
                            <a href="TelaRelatorios.jsp">Relatorios</a>
                        </li><%}%>
                    </ul>
                    <ul class="nav navbar-nav navbar-left">
                        <% if(usuario!=null){%>
                        <li class="active">
                            <a href="Logoff.jsp">Sign out</a>
                        </li>
                        
                        <li class="active">
                            <a href="CadastroUsuario.jsp"><%out.print(usuario);%></a>
                         </li><%}else{%>
                         <li class="active">
                            <a href="TelaLogin.jsp">Sign in</a>
                        </li>  <%}%>
                    </ul>
                </div>
            </div>
        </div><div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <img src="/Projeto_DCE/IMAGES/Sugestesereclamaes.jpg" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>
                            </h1><h1>Acompanhe ou deixe a sugestão ou reclamação!</h1>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <a><% if (mensagem!= null) {out.print(mensagem);}%></a>
                        <form role="form" action="ControllerSugestao.jsp" method="post">
                            <div class="form-group">
                                    <label for="busca" class="control-label"></label>
                                    <input type="number" class="form-control" name="busca" placeholder="Digite a ID da sugestao">
                            </div>
                            <div class="form-group">
                                    <button type="submit" class="btn btn-primary" name="BotaoComando" value="buscar">Buscar</button>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="ID_Sugestao">Número de Registro</label>
                                <input class="form-control" name="ID_Sugestao" type="number" placeholder="Nao � necessario preencher" <% if(retorno != null) {%> value=<%out.print(Integer.parseInt(session.getAttribute("campo1").toString()));%><%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="data">Data</label>
                                <input class="form-control" name="data" placeholder="__/__/__" type="text" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo2"));%>"<%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="status">Status</label>
                                <input class="form-control" name="status" placeholder="Enviado" type="text" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo3"));%>"<%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="assunto">Assunto</label>
                                <input class="form-control" name="assunto" type="text" placeholder="Escreva o assunto"<% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo4"));%>"<%}%>>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="descricao">Descrição</label>
                                <input class="form-control" name="descricao" type="text" placeholder="Escreva sua sugestão ou reclamação aqui" <% if (retorno != null) {%>value="<%out.print((String)session.getAttribute("campo5"));%>"<%}%>>
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
        
        <footer class="section section-primary">
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
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                            <div class="col-md-6">
                                <img class="img-responsive" src="/Projeto_DCE/IMAGES/logo completa.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    

</body></html>
<%session.setAttribute("Retorno", null);%>
<%session.setAttribute("Mensagem", null);%>