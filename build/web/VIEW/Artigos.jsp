<%
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
                            <a href="Sobre DCE.jsp">Sobre DCE<br></a>
                        </li>
                        <li class="active">
                            <a href="Servicos.jsp">Serviços</a>
                        </li>
                        <li class="active">
                            <a href="Noticias.jsp">Notícias</a>
                        </li>
                        <li class="active">
                            <a href="Administrativo.jsp">Administrativo</a>
                        </li>
                        <li class="active">
                            <a href="Contato.jsp">Contato</a>
                        </li>
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
                            <a href="Login.jsp">Sign in</a>
                        </li>  <%}%>
                    </ul>
                </div>
            </div>
        </div><div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="/Projeto_DCE/IMAGES/artigos_uniespirito.jpg" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="inputEmail3" class="control-label"></label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Palavra chave">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <a class="btn btn-primary">Buscar<br></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form role="form" action="/Projeto_DCE/CONTROLLER/InsertArtigo.jsp" method="post">
                            <div class="form-group">
                                <label class="control-label" for="Autor">Autor</label>
                                <input class="form-control" name="Autor" placeholder="Nome do autor" type="text">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="Data">Data</label>
                                <input class="form-control" name="Data" type="text" placeholder="Data de publicação">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="Titulo">Título</label>
                                <input class="form-control" name="Titulo" type="text" placeholder="Título do Artigo">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="Texto">Texto</label>
                                <input class="form-control" name="Texto" type="text" placeholder="Dissertação">
                            </div>
                            <div class="section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <button type="submit" class="btn btn-primary">Salvar</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary">Novo</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary">Editar</button>
                                        </div>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary">Excluir</button
                                        </div>
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