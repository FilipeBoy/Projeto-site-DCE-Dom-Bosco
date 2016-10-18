<%
    String usuario = (String) session.getAttribute("Nome");
%>
<html><head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DCE Dom Bosco</title>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="/Projeto_DCE/CONTROLLER/DCE.css" rel="stylesheet" type="text/css">

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
                            <a href="TelaRelatorios.jsp">Relatorios</a>
                        </li><%}%>
                    </ul>
                    <ul class="nav navbar-nav navbar-left">
                        <% if (usuario != null) {%>
                        <li class="active">
                            <a href="Logoff.jsp">Sign out</a>
                        </li>

                        <li class="active">
                            <a><%out.print(usuario);%></a>
                        </li><%} else {%>
                        <li class="active">
                            <a href="TelaLogin.jsp">Sign in</a>
                        </li>  <%}%>
                    </ul>
                </div>
            </div>
        </div>
        <div class="cover">
            <div class="cover-image" style="background-image : url('http://concursopn.sebrae-sc.com.br/wp-content/uploads/2014/11/sebrae_finalistas_concurso.jpg')"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1 class="text-primary">SEJA BEM VINDO AO DCE DOM BOSCO!</h1>
                        <p class="text-primary">Representatividade é o que qualquer grupo organizado busca em uma sociedade.
                            Esta, por sua vez, espera que o grupo sustente suas responsabilidades e
                            funções perante a comunidade que ele se compromete. Assim, o Diretório
                            Central de Estudantes (DCE) é o órgão máximo que representa os acadêmicos
                            da DOM BOSCO Porto Alegre.</p>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel slide" id="fullcarousel-example" data-interval="false" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/Projeto_DCE/IMAGES/banner1.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="/Projeto_DCE/IMAGES/banner2.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="/Projeto_DCE/IMAGES/banner3.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
            <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="/Projeto_DCE/IMAGES/news.jpg" class="img-responsive">
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <h1>ÚLTIMAS NOTÍCIAS</h1>
                            <h3>02 Mar 2016</h3>
                            <p>Membros da diretoria realizam doação de alimentos.</p>
                            <h3>19 Jan 2016</h3>
                            <p>Membros da diretoria do DCE fazem doações de alimentos.</p>
                            <h3>12 Jan 2016</h3>
                            <p>A indústria beneficia dos diplomados das universidades. Por isso, também
                                deve pagar.</p>
                        </div>
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