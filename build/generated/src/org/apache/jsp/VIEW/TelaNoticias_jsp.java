package org.apache.jsp.VIEW;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.NoticiaDAO;
import MODEL.Noticia;

public final class TelaNoticias_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

    String usuario=(String)session.getAttribute("Nome");
    //int busca = 1;
        //Noticia noticia= new Noticia();
       // noticia.setID_Noticia(busca);
       // NoticiaDAO noticiaDao= new NoticiaDAO();
       // noticia=noticiaDao.buscarPorID_Noticia(noticia);
        String autor= "";
        String data=  "";
        String titulo=  "";
        String texto=  "";
       // if( noticia!=null){
       //     autor= noticia.getAutor();
       //     data=  noticia.getData();
       //     titulo=  noticia.getTitulo();
       //     texto=  noticia.getTexto();
       // }

      out.write("\n");
      out.write("<html><head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>DCE Dom Bosco</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
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
      out.write("                            <a href=\"TelaSobre DCE.jsp\">Sobre DCE<br></a>\n");
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
 if (usuario!=null && usuario.equals("admin")) {
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"TelaRelatorios.jsp\">Relatorios</a>\n");
      out.write("                        </li>");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                        ");
 if(usuario!=null){
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Logoff.jsp\">Sign out</a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"CadastroUsuario.jsp\">");
out.print(usuario);
      out.write("</a>\n");
      out.write("                         </li>");
}else{
      out.write("\n");
      out.write("                         <li class=\"active\">\n");
      out.write("                            <a href=\"TelaLogin.jsp\">Sign in</a>\n");
      out.write("                        </li>  ");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/noticias (1).jpg\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/logo dce.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-11\">\n");
      out.write("                        <h3>");
out.print(titulo);
      out.write("</h3>\n");
      out.write("                        <p>Data: ");
out.print(data);
      out.write("</p>\n");
      out.write("                        <p>Autor: ");
out.print(autor);
      out.write("</p>\n");
      out.write("                        <p><p>Data: ");
out.print(texto);
      out.write("</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-11 text-right\">\n");
      out.write("                        <h3>Assembleia Estatuto</h3>\n");
      out.write("                        <p>Nova assembleia para discussÃ£o e aprovaÃ§Ã£o do estatuto ocorrerÃ¡ no dia\n");
      out.write("                            12 de dezembro de 2016. Ã importante a participaÃ§Ã£o de todos.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/logo dce.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/logo dce.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-11\">\n");
      out.write("                        <h3>AvaliaÃ§Ã£o Institucional</h3>\n");
      out.write("                        <p>JÃ¡ estÃ¡ disponÃ­vel no seu Portal Uniplac a AvaliaÃ§Ã£o Institucional. Um\n");
      out.write("                            professor mal avaliado terÃ¡ acompanhamento pedagÃ³gico. Se tiver conceito\n");
      out.write("                            insatisfatÃ³rio dois semestres seguidos, o professor nÃ£o darÃ¡ aula no semestre\n");
      out.write("                            seguinte. Ã importantÃ­ssimo a participaÃ§Ã£o de todos!</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-11 text-right\">\n");
      out.write("                        <h3>Comunicado Oficial FIES</h3>\n");
      out.write("                        <p>O DCE Uniplac durante os trÃªs Ãºltimos meses buscou uma soluÃ§Ã£o para que\n");
      out.write("                            os acadÃªmicos da Uniplac nÃ£o fossem atingidos com as novas regras do FIES.\n");
      out.write("                            Inicialmente,...</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/logo dce.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-1\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/logo dce.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-11\">\n");
      out.write("                        <h3>Esclarecimento: Para que serve o crÃ©dito pago pelo acadÃªmico?</h3>\n");
      out.write("                        <p>Todo inÃ­cio de um novo semestre acadÃªmico, os novos e antigos alunos da\n");
      out.write("                            Universidade do Planalto Catarinense sÃ£o cobrados junto a rematrÃ­cula,\n");
      out.write("                            a taxa de crÃ©dito destinada ao DCE....</p>\n");
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
