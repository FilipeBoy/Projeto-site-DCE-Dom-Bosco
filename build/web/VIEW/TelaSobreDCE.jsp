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
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>O QUE É UM DCE?</h1>
                        <p>No final da década de 30 surge no Brasil a UNE (União Nacional dos Estudantes)
                            e daí em diante o que podemos chamar de Movimento Estudantil organizado.
                            A partir de então e ao longo de sua história, o Movimento Estudantil atua
                            de forma marcante na luta pela modificação da realidade social como protagonista,
                            juntamente com os movimentos populares, nas decisões do contexto econômico,
                            político e social nacional.
                            <br>
                            <br>&nbsp; O DCE (Diretório Central dos Estudantes) é uma entidade entre as
                            muitas previstas na organização institucional do Movimento Estudantil.
                            A finalidade principal desta entidade é representar os estudantes dentro
                            de um espaço, onde todos os participam, propondo, discutindo e deliberando
                            sobre as diversas questões de caráter coletivo que vão de encontro aos
                            interesses da classe estudantil.
                            <br>
                            <br>&nbsp; As questões que entram na pauta de todos os DCE variam de acordo
                            com o que é deliberado pela gestão eleita em assembleia geral, juntamente
                            com seus associados nas assembleias e conselhos previstos no estatuto das
                            entidades. Contudo, essas disposições podem variar de DCE para DCE.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive" style="opacity: 0.5;">
                    </div>
                    <div class="col-md-6">
                        <h1>QUEM ?</h1>
                        <p>A Diretoria Central é composta pelos seguintes membros:&nbsp;
                            <br>
                            <br>PRESIDENTE: Paulo Vinício Santana - Ciências&nbsp;Contábeis.
                            <br>
                            <br>VICE-PRESIDENTE: Paola Morais - Administração.
                            <br>
                            <br>1° SECRETARIO: Thiarles Porta - Eng. Ambiental.
                            <br>
                            <br>2° SECRETARIO: Mariana Varela - Ciências Contábeis.
                            <br>
                            <br>1° TESOUREIRO : Marcos Belmonte - Ciências Contábeis.
                            <br>
                            <br>2° TESOUREIRO: Alexandre Leite - Direito.&nbsp;
                            <br>
                            <br>1° CONSELHEIRO: Mariana Silvello - Engenharia Ambiental e&nbsp;Sanitária.
                            <br>
                            <br>2° CONSELHEIRO - Jonathan Pereira - Sistemas de Informação.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>QUANDO?</h1>
                        <p>Segunda a Sexta-feira das Entrada 18h30 ás 19h10, Intervalo 20h30 ás 21h10
                            Sábado 09h40 ás 10h00.&nbsp;</p>
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