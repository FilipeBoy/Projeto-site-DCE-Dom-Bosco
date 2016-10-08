<% String usuario=null;
   //String caminho=" ";<%=//caminho
    if(request.getAttribute("Nome")!=null){
    usuario=request.getAttribute("Nome").toString();
    //caminho="../../Projeto_DCE/VIEW/";
}%>
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
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <img src="/Projeto_DCE/IMAGES/noticias (1).jpg" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive">
                    </div>
                    <div class="col-md-11">
                        <h3>Eleição</h3>
                        <p>Abre-se edital de eleição do DCE Uniplac - http://dceuniplac.net/img-pagina/pagina-documentos/dce-uniplac-edital-de-eleicao.pdf</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 text-right">
                        <h3>Assembleia Estatuto</h3>
                        <p>Nova assembleia para discussão e aprovação do estatuto ocorrerá no dia
                            12 de dezembro de 2016. É importante a participação de todos.</p>
                    </div>
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive">
                    </div>
                    <div class="col-md-11">
                        <h3>Avaliação Institucional</h3>
                        <p>Já está disponível no seu Portal Uniplac a Avaliação Institucional. Um
                            professor mal avaliado terá acompanhamento pedagógico. Se tiver conceito
                            insatisfatório dois semestres seguidos, o professor não dará aula no semestre
                            seguinte. É importantíssimo a participação de todos!</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 text-right">
                        <h3>Comunicado Oficial FIES</h3>
                        <p>O DCE Uniplac durante os três últimos meses buscou uma solução para que
                            os acadêmicos da Uniplac não fossem atingidos com as novas regras do FIES.
                            Inicialmente,...</p>
                    </div>
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive">
                    </div>
                    <div class="col-md-11">
                        <h3>Esclarecimento: Para que serve o crédito pago pelo acadêmico?</h3>
                        <p>Todo início de um novo semestre acadêmico, os novos e antigos alunos da
                            Universidade do Planalto Catarinense são cobrados junto a rematrícula,
                            a taxa de crédito destinada ao DCE....</p>
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