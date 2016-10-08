package org.apache.jsp.VIEW;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AministradorLogado_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html><head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>DCE Dom Bosco</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head><body>\n");
      out.write("        \n");
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
      out.write("                            <a href=\"Sobre DCE.jsp\">Sobre DCE<br></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Servicos.jsp\">ServiÃ§os</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Noticias.jsp\">NotÃ­cias</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Administrativo.jsp\">Administrativo</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Contato.jsp\">Contato</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Login.jsp\">Sign in</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/administrador.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <h1>Seja Bem vindo Administrador</h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"btn-group btn-group-lg\">\n");
      out.write("                            <a class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\">O que deseja ver?<br><i class=\"fa fa-caret-down\"></i></a>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Action</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Action</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Action</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\">Action</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <table class=\"table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>#</th>\n");
      out.write("                                    <th>First Name</th>\n");
      out.write("                                    <th>Last Name</th>\n");
      out.write("                                    <th>Username</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>1</td>\n");
      out.write("                                    <td>Mark</td>\n");
      out.write("                                    <td>Otto</td>\n");
      out.write("                                    <td>@mdo</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>2</td>\n");
      out.write("                                    <td>Jacob</td>\n");
      out.write("                                    <td>Thornton</td>\n");
      out.write("                                    <td>@fat</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>3</td>\n");
      out.write("                                    <td>Larry</td>\n");
      out.write("                                    <td>the Bird</td>\n");
      out.write("                                    <td>@twitter</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <ul class=\"pager\">\n");
      out.write("                            <li class=\"previous\">\n");
      out.write("                                <a href=\"#\">â  Prev</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"next\">\n");
      out.write("                                <a href=\"#\">Next  â</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <form class=\"form-horizontal\" role=\"form\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <div class=\"col-sm-2\">\n");
      out.write("                                    <label for=\"inputEmail3\" class=\"control-label\">CÃ³digo</label>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-sm-10\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"inputEmail3\" placeholder=\"0\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <a class=\"btn btn-primary\">Editar</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <a class=\"btn btn-primary\">Excluir</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <a class=\"btn btn-primary\">Imprimir<br></a>\n");
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
      out.write("    \n");
      out.write("\n");
      out.write("</body></html>");
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
