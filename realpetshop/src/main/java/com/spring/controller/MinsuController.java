package com.spring.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.EmailVO;
import com.spring.service.EmailService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MinsuController {

	
	
	@GetMapping("/email")
	public String emailPage() {
		log.info("email...");
		return "management/email";
	}

	@GetMapping("emailresult")
	public String emailResult(String result) {
		return "management/emailresult";
	}
	
	@PostMapping("/sendEmail")
	public String sendEmail(EmailVO vo,Model model) {
		log.info("sendEmail...");
		
		EmailService service = new EmailService();
		try {
			service.sendImage(vo);
		
		} catch (MessagingException e) {
			e.printStackTrace();
			model.addAttribute("result","false");
			return "management/emailresult";
		};
		model.addAttribute("result","true");
		return "management/emailresult";
	}
	
	@GetMapping("adminChoicePage")
	public String adminChoicePage() {
		log.info("adminChoicePage...");
		
		return "management/adminChoicePage";
	}
}
