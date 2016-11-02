<%-- 
    Document   : controllerRelatorios
    Created on : 02/11/2016, 17:11:03
    Author     : filip
--%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.SugestaoDAO"%>
<%@page import="MODEL.Sugestao"%>
<%@page import="DAO.PerdidoDAO"%>
<%@page import="MODEL.Perdido"%>
<%@page import="DAO.NoticiaDAO"%>
<%@page import="MODEL.Noticia"%>
<%@page import="DAO.CursoDAO"%>
<%@page import="MODEL.Curso"%>
<%@page import="DAO.ArmarioDAO"%>
<%@page import="MODEL.Armario"%>
<%
    String botao= request.getParameter("BotaoComando");
    String[] items = request.getParameterValues("item");   
    
    if(botao.equals("Relatorio Armarios")){
        for(String item : items)  
        {  
            Armario armario = new Armario();
            armario.setNroRegistro(Integer.parseInt(item));
            ArmarioDAO armarioDao= new ArmarioDAO();
            armarioDao.excluir(armario);
        } 
        session.setAttribute("retorno", botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
   }
    else if(botao.equals("Relatorio Cursos")){
        for(String item : items){
            Curso curso= new Curso();
            curso.setID_Curso(Integer.parseInt(item));
            CursoDAO cursoDao= new CursoDAO();
            cursoDao.excluir(curso);
        }
        session.setAttribute("retorno",  botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
    }
    else if(botao.equals("Relatorio Noticias")){
        for(String item : items){
            Noticia noticia= new Noticia();
            noticia.setID_Noticia(Integer.parseInt(item));
            NoticiaDAO noticiaDao= new NoticiaDAO();
            noticiaDao.excluir(noticia);
        }
        session.setAttribute("retorno",  botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
    }
    else if(botao.equals("Relatorio Perdidos")){
        for(String item : items){
            Perdido perdido = new Perdido();
            perdido.setID_Perdido(Integer.parseInt(item));
            PerdidoDAO perdidoDao= new PerdidoDAO();
            perdidoDao.excluir(perdido);
        }
        session.setAttribute("retorno",  botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
    }
    else if(botao.equals("Relatorio Sugestoes")){
        for(String item : items){
            Sugestao sugestao= new Sugestao();
            sugestao.setID_Sugestao(Integer.parseInt(item));
            SugestaoDAO sugestaoDao= new SugestaoDAO();
            sugestaoDao.excluir(sugestao);
        }
        session.setAttribute("retorno",  botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
    }
    else if(botao.equals("Relatorio Usuarios")){
        for(String item : items){
            Usuario usuario= new Usuario();
            usuario.setMatricula(Integer.parseInt(item));
            UsuarioDAO usuarioDao= new UsuarioDAO();
            usuarioDao.excluir(usuario);
        }
        session.setAttribute("retorno",  botao);
        request.getRequestDispatcher("TelaRelatorios.jsp").forward(request, response);
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

