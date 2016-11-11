<%
    String usuario=(String)session.getAttribute("Nome");
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
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>O QUE � UM DCE?</h1>
                        <p>No final da d�cada de 30 surge no Brasil a UNE (Uni�o Nacional dos Estudantes)
                            e da� em diante o que podemos chamar de Movimento Estudantil organizado.
                            A partir de ent�o e ao longo de sua hist�ria, o Movimento Estudantil atua
                            de forma marcante na luta pela modifica��o da realidade social como protagonista,
                            juntamente com os movimentos populares, nas decis�es do contexto econ�mico,
                            pol�tico e social nacional.
                            <br>
                            <br>&nbsp; O DCE (Diret�rio Central dos Estudantes) � uma entidade entre as
                            muitas previstas na organiza��o institucional do Movimento Estudantil.
                            A finalidade principal desta entidade � representar os estudantes dentro
                            de um espa�o, onde todos os participam, propondo, discutindo e deliberando
                            sobre as diversas quest�es de carater coletivo que v�o de encontro aos
                            interesses da classe estudantil.
                            <br>
                            <br>&nbsp; As quest�es que entram na pauta de todos os DCE variam de acordo
                            com o que � deliberado pela gest�o eleita em assembleia geral, juntamente
                            com seus associados nas assembl�ias e conselhos previstos no estatuto das
                            entidades. Contudo, essas disposi��es podem variar de DCE para DCE.</p>
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
                        <p>A Diretoria Central � composta pelos seguintes membros:&nbsp;
                            <br>
                            <br>PRESIDENTE: Paulo Vin�cio Santana - Ci�ncias Cont�beis.
                            <br>
                            <br>VICE-PRESIDENTE: Paola Morais - Administra��o.
                            <br>
                            <br>1� SECRETARIO: Thiarles Porta - Eng. Ambiental.
                            <br>
                            <br>2� SECRETARIO: Mariana Varela - Ci�ncias Cont�beis.
                            <br>
                            <br>1� TESOUREIRO : Marcos Belmonte - Ci�ncias Cont�beis.
                            <br>
                            <br>2� TESOUREIRO: Alexandre Leite - Direito.
                            <br>
                            <br>1� CONSELHEIRO: Mariana Silvello - Engenharia Ambiental e Sanit�ria.
                            <br>
                            <br>2� CONSELHEIRO - Jonathan Pereira - Sistemas de Informa��o.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>QUANDO?</h1>
                        <p>Segunda a Sexta-feira das Entrada 18h30 �s 19h10, Intervalo 20h30 �s 21h10
                            S�bado 09h40 �s 10h00.</p>
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