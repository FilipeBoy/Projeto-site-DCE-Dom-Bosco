<%
    String usuario = (String) session.getAttribute("Nome");
%>
<html><head>

        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DCE Dom Bosco</title>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="/Projeto_DCE/CSS/DCE.css" rel="stylesheet" type="text/css">
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
            #fullcarousel-example{
                width: 80%;
                margin: auto;
            }
        </style>
        <script type="text/javascript">
            function slide1() {
                document.getElementById('id').src = "/Projeto_DCE/IMAGES/banner4.jpg";
                setTimeout("slide2()", 2000)
            }

            function slide2() {
                document.getElementById('id').src = "/Projeto_DCE/IMAGES/banner2.jpg";
                setTimeout("slide3()", 2000)
            }

            function slide3() {
                document.getElementById('id').src = "/Projeto_DCE/IMAGES/banner3.jpg";
                setTimeout("slide1()", 2000)
            }
        </script>
    </head><body onLoad="slide1()">
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
                            <a class="teste" href="TelaSobreDCE.jsp">Sobre DCE<br></a>
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
        <div class="cover">
            <div class="cover-image" style="background-image : url('http://concursopn.sebrae-sc.com.br/wp-content/uploads/2014/11/sebrae_finalistas_concurso.jpg')"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1 class="text-primary-inicial">SEJA BEM VINDO AO DCE<br> DOM BOSCO!</h1>
                        <p class="text-primary-inicial">Representatividade é o que qualquer grupo organizado busca em uma sociedade. 
                            Esta, por sua vez, espera que o grupo sustente suas responsabilidades e funções perante a comunidade que 
                            ele se compromete. Assim, o Diretório Central de Estudantes (DCE) é o órgão máximo que representa os acadêmicos
                            da DOM BOSCO Porto Alegre.</p>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/jpY2edYGbDs" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-primary">Diretório Central de Estudantes</h1>
                        <p>Diretório Central dos Estudantes (DCE) é uma entidade estudantil que representa todos os estudantes 
                            (corpo discente) de uma instituição de ensino superior, sejam elas universidades, faculdades ou centros 
                            universitários. Tem o papel de organizar suas pautas. A eleição de seus membros é definida pelo 
                            Movimento Estudantil da instituição no qual está inserido e costuma se dar de forma direta. A composição 
                            da diretoria (ou coordenação) pode ser na forma majoritária ou na forma proporcional.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-primary">Vestibular Dom Bosco</h1>
                        <p>Em todos os momentos estamos fazendo escolhas! Das mais simples às mais importantes, elas definem o nosso
                            jeito de ser e de viver, e, sobretudo, definem o presente e o futuro de nossas vidas!<br>
                            Quando chega a hora de sonhar com a profissão, a carreira, o futuro, não é diferente! É preciso escolher
                            o curso e optar por uma instituição que alie ensino, tradição, qualidade e inovação!<br>
                            Na Faculdade Dom Bosco você encontra o lugar certo  para sonhar e realizar suas escolhas ampliando 
                            possibilidades! E acima de tudo, tornar-se uma pessoa de sucesso!</p>
                    </div>
                    <div class="col-md-6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/WdG0FgPUS_Q" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div> 
         <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <a href="http://faculdade.dombosco.net/"><img class="img-responsive"  src="/Projeto_DCE/IMAGES/logo-faculdade.png" ></a>
                    </div>
                    <div class="col-md-6"><br><br><br><br>
                        <a href="http://faculdade.dombosco.net/"><h1 class="text-primary" >Faculdade Dom Bosco Porto Alegre</h1></a>
                        <p>A Faculdade Dom Bosco de Porto Alegre visa cumprir a missão Salesiana,
                            acompanhando os jovens durante a etapa em que tomam decisões fundamentais para a carreira e para a vida.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel slide" id="fullcarousel-example" data-interval="false" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    <img id="id" src="/Projeto_DCE/IMAGES/banner4.jpg">
                </div>
                <div class="item">
                    <img src="/Projeto_DCE/IMAGES/banner2.jpg">
                </div>
                <div class="item">
                    <img src="/Projeto_DCE/IMAGES/banner3.jpg">
                </div>
            </div>
            <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
            <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
        </div><br><br><br>
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