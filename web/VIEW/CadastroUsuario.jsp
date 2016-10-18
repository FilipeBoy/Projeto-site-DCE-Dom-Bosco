<%
    String menssagem=(String)session.getAttribute("Menssagem");
    String usuario=(String)session.getAttribute("Nome");
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
                            <a><%out.print(usuario);%></a>
                         </li><%}else{%>
                         <li class="active">
                            <a href="TelaLogin.jsp">Sign in</a>
                        </li>  <%}%>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section"><div class="container"><div class="row"><div class="col-md-12"><img src="/Projeto_DCE/IMAGES/cadastre-se-agora.png" class="img-responsive"></div></div></div></div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form role="form" action="ControllerUsuario.jsp" method="post">
                            <div class="form-group">
                                <label class="control-label" for="matricula">Matrícula</label>
                                <input class="form-control" name="matricula" placeholder="00000000" type="text">
                            </div>
                            <% if (usuario!=null && usuario.equals("admin")) {%>
                            <div class="form-group">
                                    <button type="submit" class="btn btn-primary" name="BotaoComando" value="buscar">Buscar</button>
                            </div>
                            <%}%>
                            <div class="form-group">
                                <label class="control-label" for="nome">Nome</label>
                                <input class="form-control" name="nome" placeholder="Primeiro Nome" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="curso">Curso</label>
                                <input class="form-control" name="curso" placeholder="Curso" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="email">Email</label>
                                <input class="form-control" name="email" placeholder="Enter email" type="email">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="senha">Password</label>
                                <input class="form-control" name="senha" placeholder="Password" type="password">
                            </div>
                            <div class="section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <button type="submit" class="btn btn-primary"  name="BotaoComando" value="salvar">Enviar</button>
                                        </div>
                                        <% if (usuario!=null && usuario.equals("admin")) {%>
                                        <div class="col-md-3">
                                            <button type="reset" class="btn btn-primary">Novo</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary" name="BotaoComando" value="editar">Editar</button>
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
        </footer></body></html>