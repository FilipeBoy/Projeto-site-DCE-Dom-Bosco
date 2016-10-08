<%-- 
    Document   : javamail
    Created on : 04/10/2016, 16:55:18
    Author     : filip
--%>
<%@page import="java.util.Properties"%>
<%@ page import = "java.util.Properties, javax.mail.*, javax.mail.internet.*, javax.activation.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%
try {
String to = request.getParameter("filipe.batista.boy@gmail.com");
String from = request.getParameter("email");
Properties props = new Properties();
props.put("mail.smtp.from", "filipe.batista@durrdental.com.br");
props.put("mail.smtp.host", "localhost");
 
Session sessao = Session.getInstance(props);
sessao.setDebug(true);
 
MimeMessage message = new MimeMessage(sessao);
message.setFrom(new InternetAddress(from));
 
Address toAddress = new InternetAddress(to);
message.addRecipient(Message.RecipientType.TO, toAddress);
message.setSubject(request.getParameter("assunto"));
 
BodyPart corpoPartes = new MimeBodyPart();
corpoPartes.setText(request.getParameter("texto"));
 
 
Multipart variasPartes = new MimeMultipart();
variasPartes.addBodyPart(corpoPartes);
 
message.setContent(variasPartes);
Transport.send(message);
out.println("E-mail enviado");
}
catch (MessagingException e) {
out.println("Email nao pode ser enviado! " + e.getMessage());
}
%>

