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
                    <div class="col-md-4">
                        <img src="/Projeto_DCE/IMAGES/servicos.png" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Cartão TRI&nbsp;</h1>
                        <p>Sistema de bilhetagem eletrônica de Porto Alegre que consiste na arrecadação
                            automática da passagem de ônibus, através da utilização de cartões inteligentes
                            com créditos eletrônicos. Os estudantes possuem 50% de desconto nas suas
                            viagens.</p>
                    </div>
                    <div class="col-md-6">
                        <h1>Alugue Armário</h1>
                        <p>Agora você pode alugar armário para guardar seus pertences, basta procurar
                            a central do nosso DCE ou fazer reserva online.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                       <% if(usuario!=null){%>
                         <a class="btn btn-primary" href="/Projeto_DCE/Downloads/CartaoTri.pdf"  download>Baixar Formulário</a>
                         <%}else{%>
                        <a class="btn btn-primary" href="TelaLogin.jsp">Ler mais</a>
                         <%}%>
                    </div>
                    
                    <div class="col-md-6">
                        <% if(usuario!=null){%>
                        <a class="btn btn-primary" href="CadastroArmario.jsp">Formulário</a>
                        <%}else{%>
                        <a class="btn btn-primary" href="TelaLogin.jsp">Ler mais</a>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Carteira de Estudante</h1>
                        <p>I - A Carteira de Identificação Estudantil emitida pela UNE, proporciona
                            benefícios, descontos e vantagens especiais aos estudantes matriculados
                            nos estabelecimentos oficialmente reconhecidos pelo Ministério da Educação.
                            <br>
                            <br>&nbsp; II â€“ Quem pode solicitar?&nbsp;
                            <br>
                            <br>Podem solicitar a Carteira de identificação Estudantil emitida pela UNE
                            os estudantes matriculados nos estabelecimentos oficialmente reconhecidos
                            de ensino superior (graduação) e pós graduação (incluindo especialização,
                            mestrado e doutorado) do Brasil.&nbsp;
                            <br>
                            <br>III â€“ Quem não pode solicitar?&nbsp;
                            <br>
                            <br>Não podem solicitar a Carteira de Identificação Estudantil aqueles que
                            são estudantes apenas de cursos não reconhecidos pelo MEC, como cursos
                            de informática, de idiomas, cursos de especialização de curta duração,
                            etc.</p>
                        <p>Para adquerir sua carteira de estudante basta imprimir o formulário e
                            leva-lo à  nossa central com os seguintes documentos:&nbsp;
                            <br>
                            <br>Uma foto 3x4 para (documento recente);&nbsp;
                            <br>
                            <br>Cópia da identidade e&nbsp;CPF;&nbsp;
                            <br>
                            <br>Cópia do comprovante de matrícula;&nbsp;
                            <br>
                            <br>Valores:&nbsp;
                            <br>
                            <br>1ª via R$ 15,00&nbsp;
                            <br>
                            <br>2ª via R$ 13,00&nbsp;
                            <br>
                            <br>Meia Entrada R$ 20,00</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <% if(usuario!=null){%>
                         <a class="btn btn-primary" href="/Projeto_DCE/Downloads/CarteiraEstudante.pdf"   download>Baixar Formulário</a>
                         <%}else{%>
                        <a class="btn btn-primary" href="TelaLogin.jsp">Ler mais</a>
                         <%}%>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Sugestões e Reclamações</h1>
                        <p>Deixe aqui sua sugestão ou reclamação</p>
                    </div>
                    <div class="col-md-6">
                        <h1>Achados e Perdidos</h1>
                        <p>Aqui você encontra o que faz tempo que não vê.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                         <% if(usuario!=null){%>
                          <a class="btn btn-primary" href="CadastroSugestoes.jsp">Formulário</a>
                          <%}else{%>
                        <a class="btn btn-primary" href="TelaLogin.jsp">Ler mais</a>
                       <%}%>
                    </div>
                    <div class="col-md-6">
                        <% if(usuario!=null){%>
                         <a class="btn btn-primary" href="CadastroPerdidos.jsp">Formulário</a>
                         <%}else{%>
                        <a class="btn btn-primary" href="TelaLogin.jsp">Ler mais</a>
                         <%}%>
                    </div>
            </div>
        </div>
       </div>
          <% if(usuario!=null && usuario.equals("admin")){%>          
          <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Cadastro de Cursos</h1>
                        <p>Aqui você pode cadastrar, editar e excluir os cursos.</p>
                    </div>
                    <div class="col-md-6">
                        <h1>Cadastro de Noticias</h1>
                        <p>Aqui você pode cadastrar, editar e excluir as notícias do site.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                         <a class="btn btn-primary" href="CadastroCursos.jsp">Formulário</a>
                    </div>
                    <div class="col-md-6">
                        <a class="btn btn-primary" href="CadastroNoticias.jsp">Formulário</a>
                    </div>
            </div>
        </div>
       </div> <%}%>
        <br><br><br>
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