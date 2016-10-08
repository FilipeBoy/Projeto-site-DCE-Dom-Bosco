package org.apache.jsp.VIEW;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Servicos_jsp extends org.apache.jasper.runtime.HttpJspBase
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

 String usuario=null;
   //String caminho=" ";<%=//caminho
    if(request.getAttribute("Nome")!=null){
    usuario=request.getAttribute("Nome").toString();
    //caminho="../../Projeto_DCE/VIEW/";
}
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
      out.write("                        ");
 if(usuario!=null){
      out.write("\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"Logoff.jsp\">Sign out</a>\n");
      out.write("                        </li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a>");
out.print(usuario);
      out.write("</a>\n");
      out.write("                         </li>");
}else{
      out.write("\n");
      out.write("                         <li class=\"active\">\n");
      out.write("                            <a href=\"Login.jsp\">Sign in</a>\n");
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
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        <img src=\"/Projeto_DCE/IMAGES/servicos.png\" class=\"img-responsive\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1>CartÃ£o TRI&nbsp;</h1>\n");
      out.write("                        <p>Sistema de bilhetagem eletrÃ´nica de Porto Alegre que consiste na arrecadaÃ§Ã£o\n");
      out.write("                            automÃ¡tica da passagem de Ã´nibus, atravÃ©s da utilizaÃ§Ã£o de cartÃµes inteligentes\n");
      out.write("                            com crÃ©ditos eletrÃ´nicos. Os estudantes possuem 50% de desconto nas suas\n");
      out.write("                            viagens.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1>Alugue ArmÃ¡rio</h1>\n");
      out.write("                        <p>Agora vocÃª pode alugar armÃ¡rio para guardar seus pertences, basta procurar\n");
      out.write("                            a central do nosso DCE.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"Login.jsp\">Ler mais</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"Login.jsp\">Ler mais</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <h1>Carteira de Estudante</h1>\n");
      out.write("                        <p>I - A Carteira de IdentificaÃ§Ã£o Estudantil emitida pela UNE, proporciona\n");
      out.write("                            benefÃ­cios, descontos e vantagens especiais aos estudantes matriculados\n");
      out.write("                            nos estabelecimentos oficialmente reconhecidos pelo MinistÃ©rio da EducaÃ§Ã£o\n");
      out.write("                            â MEC.\n");
      out.write("                            <br>\n");
      out.write("                            <br>&nbsp; II â Quem pode solicitar?&nbsp;\n");
      out.write("                            <br>\n");
      out.write("                            <br>Podem solicitar a Carteira de identificaÃ§Ã£o Estudantil emitida pela UNE\n");
      out.write("                            os estudantes matriculados nos estabelecimentos oficialmente reconhecidos\n");
      out.write("                            de ensino&nbsp;superior (graduaÃ§Ã£o) e pÃ³s-graduaÃ§Ã£o (incluindo especializaÃ§Ã£o,\n");
      out.write("                            mestrado e doutorado) do Brasil.&nbsp;\n");
      out.write("                            <br>\n");
      out.write("                            <br>III â Quem nÃ£o pode solicitar?&nbsp;\n");
      out.write("                            <br>\n");
      out.write("                            <br>NÃ£o podem solicitar a Carteira de IdentificaÃ§Ã£o Estudantil aqueles que\n");
      out.write("                            sÃ£o estudantes apenas de cursos nÃ£o reconhecidos pelo MEC, como cursos\n");
      out.write("                            de&nbsp;informÃ¡tica, de idiomas, cursos de especializaÃ§Ã£o de curta duraÃ§Ã£o,\n");
      out.write("                            etc.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"Login.jsp\">Ler mais</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1>SugestÃµes e ReclamaÃ§Ãµes</h1>\n");
      out.write("                        <p>Deixe aqui sua sugestÃ§Ã£o ou reclamaÃ§Ã£o</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h1>Achados e Perdidos</h1>\n");
      out.write("                        <p>Aqui vocÃª encontra o que faz tempo que nÃ£o vÃª.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"Login.jsp\">Ler mais</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"Login.jsp\">Ler mais</a>\n");
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
