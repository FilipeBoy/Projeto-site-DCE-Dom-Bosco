<%-- 
    Document   : InsertArmario
    Created on : 04/10/2016, 10:56:23
    Author     : filip
--%>
 
<%@page import="java.sql.*"%>  
<%@page import="MODEL.ConexaoMySQL"%> 
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String data = request.getParameter("data");
    String status = request.getParameter("status");
    String assunto = request.getParameter("assunto");
    String texto = request.getParameter("texto");
    
    ConexaoMySQL.getConexaoMySQL();
    String sqlStr;
    sqlStr = "INSERT INTO DCE_Sugestao(Data,Status,Assunto,Descricao) values('"+data+"', '"+status+"', '"+assunto+"', '"+texto+"')";
    ConexaoMySQL.stmt.executeUpdate(sqlStr);
    ConexaoMySQL.FecharConexao();
    
   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            <a href="DCE.JSP">Home</a>
                        </li>
                        <li class="active">
                            <a href="Sobre DCE.JSP">Sobre DCE<br></a>
                        </li>
                        <li class="active">
                            <a href="Serviços.JSP">Serviços</a>
                        </li>
                        <li class="active">
                            <a href="Noticias.JSP">Notícias</a>
                        </li>
                        <li class="active">
                            <a href="Administrativo.JSP">Administrativo</a>
                        </li>
                        <li class="active">
                            <a href="Contato.JSP">Contato</a>
                        </li>
                    </ul>
                    <a class="btn btn-default navbar-btn navbar-left" data-toggle="modal" href="Login.jsp">Sign out</a>
                    <a class="btn btn-default navbar-btn navbar-left" data-toggle="modal" href="Login.jsp">Editar Cadastro<br></a>
                </div>
            </div>
        </div>
        
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center">Parabéns, cadastrado com sucesso!</h1>
                        <p class="text-center">Obrigado!</p>
                    </div>
                </div>
            </div>
        </div><div class="section"></div>
        
        <div class="section"><div class="container"></div></div><footer class="section section-primary">
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
