package org.thegreatinksociety.webPageControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.UsersRepository;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class VerifyEmailPageController {
    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping("/verifyEmail")
    public String getVerifyEmailPage(HttpSession session, HttpServletResponse response) throws IOException, MessagingException {
        System.out.println("mmmm");
        if (session.getAttribute("userId") == null) {
            return "/";
        } else {
            System.out.println("mmmm");
            Users user = usersRepository.findUsersById(Long.parseLong(session.getAttribute("userId").toString()));
            String toAddress = user.getEmail();
            String fromAddress = GlobalVariable.EMAIL_ADDRESS;
            String senderName = GlobalVariable.SITE_NAME;
            String subject = "Please verify your registration";
            String content = "Dear [[name]],<br>"
                    + "Here is you verification code:<br>"
                    + user.getEmailVerificationCode() + "<br>"
                    + "Thank you,<br>"
                    + GlobalVariable.SITE_NAME;

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message);

            helper.setFrom(fromAddress, senderName);
            helper.setTo(toAddress);
            helper.setSubject(subject);

            content = content.replace("[[name]]", user.getFullName());

            helper.setText(content, true);

            mailSender.send(message);
            return "/verifyEmail";
        }

    }
}
