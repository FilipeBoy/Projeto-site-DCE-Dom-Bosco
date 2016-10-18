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
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>DCE Dom Bosco</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"/Projeto_DCE/CONTROLLER/DCE.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    </head><body>\n");
      out.write("        <div class=\"navbar navbar-default\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navbar-ex-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbar-ex-collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"DCE.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaSobreDCE.jsp\">Sobre DCE<br></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaServicos.jsp\">ServiÃ§os</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaNoticias.jsp\">NotÃ­cias</a>\n");
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
      out.write("                            <a href=\"TelaRelatorios.jsp\">Relatorios</a>\n");
      out.write("                        </li>");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                        ");
 if (usuario != null) {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Logoff.jsp\">Sign out</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a>");
out.print(usuario);
      out.write("</a>\n");
      out.write("                        </li>");
} else {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaLogin.jsp\">Sign in</a>\n");
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
      out.write("                        <h1 class=\"text-primary\">SEJA BEM VINDO AO DCE DOM BOSCO!</h1>\n");
      out.write("                        <p class=\"text-primary\">Representatividade Ã© o que qualquer grupo organizado busca em uma sociedade.\n");
      out.write("                            Esta, por sua vez, espera que o grupo sustente suas responsabilidades e\n");
      out.write("                            funÃ§Ãµes perante a comunidade que ele se compromete. Assim, o DiretÃ³rio\n");
      out.write("                            Central de Estudantes (DCE) Ã© o Ã³rgÃ£o mÃ¡ximo que representa os acadÃªmicos\n");
      out.write("                            da DOM BOSCO Porto Alegre.</p>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"carousel slide\" id=\"fullcarousel-example\" data-interval=\"false\" data-ride=\"carousel\">\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"item active\">\n");
      out.write("                    <img src=\"/Projeto_DCE/IMAGES/banner1.jpg\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h2>Title</h2>\n");
      out.write("                        <p>Description</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"/Projeto_DCE/IMAGES/banner2.jpg\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h2>Title</h2>\n");
      out.write("                        <p>Description</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"item\">\n");
      out.write("                    <img src=\"/Projeto_DCE/IMAGES/banner3.jpg\">\n");
      out.write("                    <div class=\"carousel-caption\">\n");
      out.write("                        <h2>Title</h2>\n");
      out.write("                        <p>Description</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <a class=\"left carousel-control\" href=\"#fullcarousel-example\" data-slide=\"prev\"><i class=\"icon-prev fa fa-angle-left\"></i></a>\n");
      out.write("            <a class=\"right carousel-control\" href=\"#fullcarousel-example\" data-slide=\"next\"><i class=\"icon-next fa fa-angle-right\"></i></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/news.jpg\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <h1>ÃLTIMAS NOTÃCIAS</h1>\n");
      out.write("                            <h3>02 Mar 2016</h3>\n");
      out.write("                            <p>Membros da diretoria realizam doaÃ§Ã£o de alimentos.</p>\n");
      out.write("                            <h3>19 Jan 2016</h3>\n");
      out.write("                            <p>Membros da diretoria do DCE fazem doaÃ§Ãµes de alimentos.</p>\n");
      out.write("                            <h3>12 Jan 2016</h3>\n");
      out.write("                            <p>A indÃºstria beneficia dos diplomados das universidades. Por isso, tambÃ©m\n");
      out.write("                                deve pagar.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <footer class=\"section section-primary\">\n");
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
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-facebook text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-github text-inverse\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-6 hidden-xs text-right\">\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-instagram text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-twitter text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-facebook text-inverse\"></i></a>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-3x fa-fw fa-github text-inverse\"></i></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <img class=\"img-responsive\" src=\"/Projeto_DCE/IMAGES/logo completa.png\">\n");
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
