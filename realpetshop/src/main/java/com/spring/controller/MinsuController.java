package com.spring.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.EmailVO;
import com.spring.service.EmailService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MinsuController {

	@GetMapping("email")
	public String emailPage() {
		log.info("email");
		return "management/email";
	}
	
	@PostMapping("/sendEmail")
	public void sendEmail(EmailVO vo) {
		log.info("Host : "+vo.getHost()+"\nUser : "+vo.getTo()+"\nText : "+vo.getText());
		
		EmailService service = new EmailService();
		try {
			service.sendImage(vo);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		};
		
	}
}
