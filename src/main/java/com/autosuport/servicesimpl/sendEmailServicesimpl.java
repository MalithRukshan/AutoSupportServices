//import com.autosuport.modle.Maildatailstocustomer;
//import com.autosuport.modle.Servicesprovider;
//import com.autosuport.services.sendEmailservices;
//import com.sun.mail.pop3.POP3Store;
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileNotFoundException;
//import java.io.IOException;
//import java.util.Properties;
//import javax.mail.BodyPart;
//import javax.mail.Flags;
//import javax.mail.Folder;
//import javax.mail.Message;
//import javax.mail.Multipart;
//import javax.mail.Session;
//import javax.mail.Store;
//import javax.mail.internet.AddressException;
//import javax.mail.internet.InternetAddress;
//import javax.ws.rs.core.Response;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.mail.MailSender;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.stereotype.Service;
//
///**
// *
// * @author malitha
// */
//@Service
//public class sendEmailServicesimpl implements sendEmailservices {
//    boolean isValid = false;
//
//    @Autowired
//    private MailSender crunchifymail;
//
//    public Response addcustermer(String to, String username, String password) {
//         sendEmailServicesimpl crunchifyCheck=new sendEmailServicesimpl();
//       isValid = crunchifyCheck.crunchifyEmailValidator(mail.getToaddress());
//         if(isValid){
//        SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
//        crunchifyMsg.setFrom("autoservicelimited@gmail.com");
//        crunchifyMsg.setTo(to);
//        crunchifyMsg.setSubject("This is password for login autosupport.lk");
//        crunchifyMsg.setText("This is password for login http://www.autosupport.lk/login.jsp");
//        crunchifymail.send(crunchifyMsg);
//
//////       }else{
//////           
//////       }
////      
//        Properties props = new Properties();
////        try {
////         //   props.load(new FileInputStream(new File("application.properties")));
////        } catch (FileNotFoundException e1) {
////            e1.printStackTrace();
////        } catch (IOException e1) {
////            e1.printStackTrace();
////        }
//        try {
//            Session session = Session.getDefaultInstance(props, null);
//
//            Store store = session.getStore("imaps");
//
//            store.connect("smtp.gmail.com", "autoservicelimited@gmail.com", "auto@pvt@ltd");
//            System.out.println(store);
//
//            Folder inbox = store.getFolder("inbox");
//            inbox.open(Folder.READ_ONLY); // Folder.READ_ONLY
//            int messageCount = inbox.getMessageCount();
//            System.out.println("Total Messages" + messageCount);
//            int startMessage = messageCount - 5;
//            int endMessage = messageCount;
//
//            if (messageCount < 5) {
//                startMessage = 0;
//            }
//
//            Message[] messages = inbox.getMessages(startMessage, endMessage);
//
//            for (Message message : messages) {
//                 System.out.println(message.getReceivedDate());
//                  System.out.println(message.getSubject());
//                 Multipart multipart= (Multipart) message.getContent();
//               for (int x = 0; x < multipart.getCount(); x++) {
//                  BodyPart bodyPart = multipart.getBodyPart(x);
//                   System.out.println(bodyPart.getContent());
//                   
//                   
//               }
//             
//            }
//
//            inbox.close(true);
//            System.out.println("Done....");
//            store.close();
//        } catch (Exception d) {
//
//            System.out.println(d);
//        }
//        return Response.ok("ok").build();
//    }
//
