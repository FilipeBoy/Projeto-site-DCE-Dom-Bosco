
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.net.Authenticator"%>
<%@page import="java.util.Properties"%>                                                                                                     
<%@page import="javax.mail.PasswordAuthentication"%>                                                                                                       
<%@page import="javax.mail.Session"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                                                                                                                                          
    Properties props = new Properties();
            /** Parâmetros de conexão com servidor Gmail */
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            Session ses = Session.getDefaultInstance(props,
                        new javax.mail.Authenticator() {
                             protected PasswordAuthentication getPasswordAuthentication() 
                             {
                                   return new PasswordAuthentication("filipe.batista.boy@gmail.com", "epilif13");
                             }
                        });
            /** Ativa Debug para sessão */
            ses.setDebug(true);
            try {

                  Message message = new MimeMessage(ses);
                  message.setFrom(new InternetAddress(request.getParameter("email"))); //Remetente

                  Address[] toUser = InternetAddress //Destinatário(s)
                             .parse("filipe.batista.boy@gmail.com, filipe_cbatista@hotmail.com");  
                  message.setRecipients(Message.RecipientType.TO, toUser);
                  message.setSubject(request.getParameter("Assunto")+"-"+request.getParameter("email"));//Assunto
                  message.setText(request.getParameter("texto"));
                  /**Método para enviar a mensagem criada*/
                  Transport.send(message);
                  
             } catch (MessagingException e) {
                  throw new RuntimeException(e);
            }
            session.setAttribute("Mensagem", "Enviado com sucesso!");
        request.getRequestDispatcher("TelaResposta.jsp").forward(request, response);
%>
<!DOCTYPE html>

