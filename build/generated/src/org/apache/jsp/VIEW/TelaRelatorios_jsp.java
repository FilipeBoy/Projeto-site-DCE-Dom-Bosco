package org.apache.jsp.VIEW;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.ArmarioDAO;
import DAO.SugestaoDAO;
import DAO.PerdidoDAO;
import DAO.CursoDAO;
import DAO.NoticiaDAO;
import DAO.UsuarioDAO;
import MODEL.Sugestao;
import MODEL.Perdido;
import MODEL.Curso;
import MODEL.Noticia;
import MODEL.Usuario;
import MODEL.Armario;
import java.util.List;

public final class TelaRelatorios_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String usuario = (String) session.getAttribute("Nome");
    String opcao = request.getParameter("opcao");
    String campo1 = null, campo2 = null, campo3 = null, campo4 = null, campo5 = null;
    List<Armario> armarioLista = null;
    List<Usuario> usuarioLista = null;
    List<Noticia> noticiaLista = null;
    List<Curso>   cursoLista = null;
    List<Perdido> perdidoLista = null;
    List<Sugestao> sugestaoLista = null;

    if (opcao != null) {
        if (opcao.equalsIgnoreCase("Relatorio Usuarios")) {
            campo1 = "Matricula";
            campo2 = "Nome";
            campo3 = "Curso";
            campo4 = "Email";
            campo5 = "Senha";
            UsuarioDAO usuarioDao = new UsuarioDAO();
            usuarioLista = usuarioDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Armarios")) {
            campo1 = "Registro";
            campo2 = "Matricula";
            campo3 = "Nome";
            campo4 = "Data Inicio";
            campo5 = "DataFim";
            ArmarioDAO armarioDao = new ArmarioDAO();
            armarioLista = armarioDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Noticias")) {
            campo1 = "ID";
            campo2 = "Autor";
            campo3 = "Data";
            campo4 = "Titulo";
            campo5 = "Inicio";
            NoticiaDAO noticiaDao = new NoticiaDAO();
            noticiaLista = noticiaDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Cursos")) {
            campo1 = "ID";
            campo2 = "Nome";
            campo3 = "Horario";
            campo4 = "Carga Horaria";
            campo5 = "Inicio";
            CursoDAO cursoDao = new CursoDAO();
            cursoLista = cursoDao.listar();

        } else if (opcao.equalsIgnoreCase("Relatorio Perdidos")) {
            campo1 = "ID";
            campo2 = "Matricula Usuario";
            campo3 = "Nome do Objeto";
            campo4 = "Local Perda";
            campo5 = "Inicio";
            PerdidoDAO perdidoDao = new PerdidoDAO();
            perdidoLista = perdidoDao.listar();
            
        } else if (opcao.equalsIgnoreCase("Relatorio Sugestoes")) {
            campo1 = "ID";
            campo2 = "Data";
            campo3 = "Status";
            campo4 = "Assunto";
            campo5 = "Inicio";
            SugestaoDAO sugestaoDao = new SugestaoDAO();
            sugestaoLista = sugestaoDao.listar();
        }
    }

      out.write("\n");
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
      out.write("\n");
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
      out.write("                            <a href=\"CadastroUsuario.jsp\">");
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
      out.write("        <div class=\"section\">\n");
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
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Usuarios\" >Relatorio de Usuarios</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Armarios\">Relatorio de Armarios</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Noticias\">Relatorio de Noticias</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Cursos\">Relatorio de Cursos</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Perdidos\">Relatorio de Perdidos</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"TelaRelatorios.jsp?opcao=Relatorio Sugestoes\">Relatorio de Sugestoes</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       ");
if (opcao != null) {
      out.write("\n");
      out.write("       <div><h2 class=\"col-md-12\">");
out.print(opcao);
      out.write("</h2></div>\n");
      out.write("         <form role=\"form\" action=\"ControllerRelatorios.jsp\" method=\"post\">\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <table class=\"table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>");
out.print(campo1);
      out.write("</th>\n");
      out.write("                                    <th>");
out.print(campo2);
      out.write("</th>\n");
      out.write("                                    <th>");
out.print(campo3);
      out.write("</th>\n");
      out.write("                                    <th>");
out.print(campo4);
      out.write("</th>\n");
      out.write("                                    <th>");
out.print(campo5);
      out.write("</th>\n");
      out.write("                                    <th>Marcar</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                               \n");
      out.write("                               ");
 if (opcao.equalsIgnoreCase("Relatorio Usuarios")) {
      out.write("\n");
      out.write("                                    ");
for (Usuario user : usuarioLista) {
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(user.getMatricula());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(user.getNome());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(user.getCurso());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(user.getEmail());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(user.getPassword());
      out.write("</td>\n");
      out.write("                                            <td><input type=\"checkbox\" value ='");
      out.print(user.getMatricula());
      out.write("' name=\"item\"></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                                ");
if(opcao.equalsIgnoreCase("Relatorio Armarios")){
      out.write("\n");
      out.write("                                    ");
for (Armario arm : armarioLista) {
      out.write("   \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(arm.getNroRegistro());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(arm.getMatriculaUsuario());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(arm.getNomeUsuario());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(arm.getDataInicio());
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(arm.getDataFim());
      out.write("</td>\n");
      out.write("                                            <td><input type=\"checkbox\" value ='");
      out.print(arm.getNroRegistro());
      out.write("' name=\"item\"></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                                    ");
if(opcao.equalsIgnoreCase("Relatorio Noticias")){
      out.write("\n");
      out.write("                                        ");
for (Noticia noticia : noticiaLista) {
      out.write("   \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(noticia.getID_Noticia());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(noticia.getAutor());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(noticia.getData());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(noticia.getTitulo());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(noticia.getTexto().concat(" "));
      out.write("</td>\n");
      out.write("                                                <td><input type=\"checkbox\" value ='");
      out.print(noticia.getID_Noticia());
      out.write("' name=\"item\"></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                                    ");
if(opcao.equalsIgnoreCase("Relatorio Cursos")){
      out.write("\n");
      out.write("                                        ");
for (Curso curso : cursoLista) {
      out.write("   \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(curso.getID_Curso());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(curso.getNome_Curso());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(curso.getHorario());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(curso.getCargaHoraria());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(curso.getDescricao().concat(" "));
      out.write("</td>\n");
      out.write("                                                <td><input type=\"checkbox\" value ='");
      out.print(curso.getID_Curso());
      out.write("' name=\"item\"></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                                    ");
if(opcao.equalsIgnoreCase("Relatorio Perdidos")){
      out.write("\n");
      out.write("                                        ");
for (Perdido perdido : perdidoLista) {
      out.write("   \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(perdido.getID_Perdido());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(perdido.getMatricula_Usuario());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(perdido.getNomeObjeto());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(perdido.getLocalPerda());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(perdido.getDescricao().concat(" "));
      out.write("</td>\n");
      out.write("                                                <td><input type=\"checkbox\" value ='");
      out.print(perdido.getID_Perdido());
      out.write("' name=\"item\"></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                                    ");
if(opcao.equalsIgnoreCase("Relatorio Sugestoes")){
      out.write("\n");
      out.write("                                        ");
for (Sugestao sugestao : sugestaoLista) {
      out.write("   \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(sugestao.getID_Sugestao());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(sugestao.getData());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(sugestao.getStatus());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(sugestao.getAssunto());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(sugestao.getDescricao().concat(" "));
      out.write("</td>\n");
      out.write("                                                <td><input type=\"checkbox\" value ='");
      out.print(sugestao.getID_Sugestao());
      out.write("' name=\"item\"></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                    ");
}}
      out.write("\n");
      out.write("                               \n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("                <a class=\"btn btn-primary\" onclick=\"window.print();\">Imprimir</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" name=\"BotaoComando\" value=\"");
      out.print(opcao);
      out.write("\">Excluir</button>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("             ");
}
      out.write("\n");
      out.write("        <div class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"CadastroUsuario.jsp\">Editar Usuario</a>\n");
      out.write("                        <a class=\"btn btn-primary \" href=\"CadastroCursos.jsp\">Editar Curso</a>\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"CadastroNoticias.jsp\">Editar Noticias</a>\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"CadastroArmario.jsp\">Editar Armario</a>\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"CadastroPerdidos.jsp\">Editar Perdidos</a>\n");
      out.write("                        <a class=\"btn btn-primary\" href=\"CadastroSugestoes.jsp\">Editar Sugestoes</a>\n");
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
      out.write("</body></html>\n");
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
