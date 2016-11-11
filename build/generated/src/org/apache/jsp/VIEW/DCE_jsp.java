package org.apache.jsp.VIEW;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class DCE_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");


    String usuario = (String) session.getAttribute("Nome");

      out.write("\n");
      out.write("<html><head>\n");
      out.write("\n");
      out.write("        <meta charset=\"windows-1252\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>DCE Dom Bosco</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"/Projeto_DCE/CSS/DCE.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <style>\n");
      out.write("            .navbar\n");
      out.write("            {\n");
      out.write("                background-color: #1c266d !important;\n");
      out.write("                color: #fff;\n");
      out.write("                border-color: #1c266d !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar-default .navbar-nav > li > a \n");
      out.write("            {\n");
      out.write("                color: #fff !important;\n");
      out.write("                background-color: #1c266d !important;\n");
      out.write("            }\n");
      out.write("            .navbar-default .navbar-nav > li > a:hover\n");
      out.write("            {\n");
      out.write("                color: #fff !important;\n");
      out.write("                background-color: #ac2925 !important;\n");
      out.write("            }\n");
      out.write("            .text-primary-inicial{\n");
      out.write("                color:#1c266d !important;\n");
      out.write("                background-color: rgba(181, 181, 181, 0.46);\n");
      out.write("            }\n");
      out.write("            .container-footer{\n");
      out.write("                background-color: #1c266d !important;\n");
      out.write("                color:#fff !important;\n");
      out.write("            }\n");
      out.write("            #fullcarousel-example{\n");
      out.write("                width: 80%;\n");
      out.write("                margin: auto;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function slide1() {\n");
      out.write("                document.getElementById('id').src = \"/Projeto_DCE/IMAGES/banner4.jpg\";\n");
      out.write("                setTimeout(\"slide2()\", 2000)\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function slide2() {\n");
      out.write("                document.getElementById('id').src = \"/Projeto_DCE/IMAGES/banner2.jpg\";\n");
      out.write("                setTimeout(\"slide3()\", 2000)\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function slide3() {\n");
      out.write("                document.getElementById('id').src = \"/Projeto_DCE/IMAGES/banner3.jpg\";\n");
      out.write("                setTimeout(\"slide1()\", 2000)\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head><body onLoad=\"slide1()\">\n");
      out.write("        <div class=\"navbar navbar-default\">\n");
      out.write("            <div class=\"container-header\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <img class=\"img-responsive\" src=\"/Projeto_DCE/IMAGES/logo dce.png\" width=\"50\" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navbar-ex-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbar-ex-collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"DCE.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a class=\"teste\" href=\"TelaSobreDCE.jsp\">Sobre DCE<br></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaServicos.jsp\">Serviços</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaNoticias.jsp\">Notícias</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaAdministrativo.jsp\">Administrativo</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaContato.jsp\">Contato</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 if (usuario != null && usuario.equals("admin")) {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaRelatorios.jsp\">Relatórios</a>\n");
      out.write("                        </li>");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        ");
 if (usuario != null) {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Logoff.jsp\">Sair</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"CadastroUsuario.jsp\">");
out.print(usuario);
      out.write("</a>\n");
      out.write("                        </li>");
} else {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaLogin.jsp\">Entrar</a>\n");
      out.write("                        </li>  ");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"cover\">\n");
      out.write("            <div class=\"cover-image\" style=\"background-image : url('http://concursopn.sebrae-sc.com.br/wp-content/uploads/2014/11/sebrae_finalistas_concurso.jpg')\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12 text-center\">\n");
      out.write("                        <h1 class=\"text-primary-inicial\">SEJA BEM VINDO AO DCE<br> DOM BOSCO!</h1>\n");
      out.write("                        <p class=\"text-primary-inicial\">Representatividade é o que qualquer grupo organizado busca em uma sociedade. \n");
      out.write("                            Esta, por sua vez, espera que o grupo sustente suas responsabilidades e funções perante a comunidade que \n");
      out.write("                            ele se compromete. Assim, o Diretório Central de Estudantes (DCE) é o órgão máximo que representa os acadêmicos\n");
      out.write("                            da DOM BOSCO Porto Alegre.</p>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jpY2edYGbDs\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1 class=\"text-primary\">Diretório Central de Estudantes</h1>\n");
      out.write("                        <p>Diretório Central dos Estudantes (DCE) é uma entidade estudantil que representa todos os estudantes \n");
      out.write("                            (corpo discente) de uma instituição de ensino superior, sejam elas universidades, faculdades ou centros \n");
      out.write("                            universitários. Tem o papel de organizar suas pautas. A eleição de seus membros é definida pelo \n");
      out.write("                            Movimento Estudantil da instituição no qual está inserido e costuma se dar de forma direta. A composição \n");
      out.write("                            da diretoria (ou coordenação) pode ser na forma majoritária ou na forma proporcional.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1 class=\"text-primary\">Vestibular Dom Bosco</h1>\n");
      out.write("                        <p>Em todos os momentos estamos fazendo escolhas! Das mais simples às mais importantes, elas definem o nosso\n");
      out.write("                            jeito de ser e de viver, e, sobretudo, definem o presente e o futuro de nossas vidas!<br>\n");
      out.write("                            Quando chega a hora de sonhar com a profissão, a carreira, o futuro, não é diferente! É preciso escolher\n");
      out.write("                            o curso e optar por uma instituição que alie ensino, tradição, qualidade e inovação!<br>\n");
      out.write("                            Na Faculdade Dom Bosco você encontra o lugar certo  para sonhar e realizar suas escolhas ampliando \n");
      out.write("                            possibilidades! E acima de tudo, tornar-se uma pessoa de sucesso!</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WdG0FgPUS_Q\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
      out.write("        <div class=\"carousel slide\" id=\"fullcarousel-example\" data-interval=\"false\" data-ride=\"carousel\">\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <img id=\"id\" src=\"/Projeto_DCE/IMAGES/banner4.jpg\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"/Projeto_DCE/IMAGES/banner2.jpg\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"/Projeto_DCE/IMAGES/banner3.jpg\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <a class=\"left carousel-control\" href=\"#fullcarousel-example\" data-slide=\"prev\"><i class=\"icon-prev fa fa-angle-left\"></i></a>\n");
      out.write("            <a class=\"right carousel-control\" href=\"#fullcarousel-example\" data-slide=\"next\"><i class=\"icon-next fa fa-angle-right\"></i></a>\n");
      out.write("        </div><br><br><br>\n");
      out.write("        <footer class=\"container-footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <h1>Contato</h1>\n");
      out.write("                        <p>Email: domboscodce@gmail.com&nbsp;\n");
      out.write("                            <br>\n");
      out.write("                            <br>Facebook: https://www.facebook.com/domboscodce&nbsp;\n");
      out.write("                            <br>\n");
      out.write("                            <br>Fone: (51) 3361-6700&nbsp;</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <p class=\"text-info text-right\">\n");
      out.write("                            <br>\n");
      out.write("                            <br>\n");
      out.write("                        </p>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-12 hidden-lg hidden-md hidden-sm text-left\">\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-instagram text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-twitter text-inverse\"></i></a>\n");
      out.write("                                <a href=\"https://www.facebook.com/domboscodce\"><i class=\"fa fa-3x fa-fw fa-facebook text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-github text-inverse\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-6 hidden-xs text-right\">\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-instagram text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-twitter text-inverse\"></i></a>\n");
      out.write("                                <a href=\"https://www.facebook.com/domboscodce\"><i class=\"fa fa-3x fa-fw fa-facebook text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-github text-inverse\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
