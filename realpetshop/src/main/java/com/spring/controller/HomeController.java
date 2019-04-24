package com.spring.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.domain.EmailVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class HomeController {
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	
	@GetMapping("/view")
	public void view() {
		
		log.info("main page 호출...");
	}
	
	@GetMapping("email")
	public String emailPage() {
		log.info("email");
		return "management/email";
	}
	
	@PostMapping("/sendEmail")
	public void sendEmail(EmailVO vo) {
		log.info("Host : "+vo.getHost()+"\nUser : "+vo.getTo());
		
	}
	
}
