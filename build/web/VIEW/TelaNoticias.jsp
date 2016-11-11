<%@page import="java.util.List"%>
<%@page import="DAO.NoticiaDAO"%>
<%@page import="MODEL.Noticia"%>
<%
    String usuario=(String)session.getAttribute("Nome");
    List<Noticia> noticiaLista = null;
    NoticiaDAO noticiaDao = new NoticiaDAO();
    noticiaLista = noticiaDao.listar();
    
%>
<html><head>
        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>DCE Dom Bosco</title>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css" >
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
                    <div class="col-md-12">
                        <img src="/Projeto_DCE/IMAGES/noticias (1).jpg" class="img-responsive" width="450" height="150">
                    </div>
                </div>
            </div>
        </div>
         <%for (Noticia noticia : noticiaLista) {%>           
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        <img src="/Projeto_DCE/IMAGES/logo dce.png" class="img-responsive logo"  style="margin-top: 25px;">
                    </div>
                    <div class="col-md-11">
                        <h3><%out.print(noticia.getTitulo());%></h3>
                        <p>Data: <%out.print(noticia.getData());%></p>
                        <p>Autor: <%out.print(noticia.getAutor());%></p>
                        <p><%out.print(noticia.getTexto());%></p>
                    </div>
                </div>
            </div>
        </div><%}%>
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