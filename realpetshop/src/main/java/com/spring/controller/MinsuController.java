package com.spring.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.EmailVO;
import com.spring.domain.GoodsVO;
import com.spring.domain.TA_UserVO;
import com.spring.service.EmailService;
import com.spring.service.MinsuService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MinsuController {

	@Inject
	private MinsuService minService;
	
	@GetMapping("/email") 
	public String emailPage() {
		// 이메일 페이지  호출
		log.info("email...");
		return "management/email";
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
	// admin 페이지 호출
	public String adminChoicePage(Model model) {
		log.info("adminChoicePage...");
		
		model.addAttribute("result_money", 200);  // 매출 목표치 표시를 위해 가져감 
		return "management/adminChoicePage_main";
	}
	
	@GetMapping("adminChoicePage_member")
	public String adminChoicePage_memeber(Model model) {
		// admin_회원관리 페이지 호출
		log.info("adminChoicePage_member...");
		List<TA_UserVO> list = minService.getList_member();
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getUsercheck().equals("1")) {
				list.get(i).setCheckResult(true);
				log.info("으아아아아"+list.get(i).isCheckResult()+"dmdjdjdjdj"+list.get(i).getUsercheck());
			}else {
				list.get(i).setCheckResult(false);
				log.info("으아아아아"+list.get(i).isCheckResult()+"dmdjdjdjdj"+list.get(i).getUsercheck());
			}
		}
		model.addAttribute("member_list", list);
		return "management/adminChoicePage_member";
	}
	@GetMapping("adminChoicePage_delete")
	public String adminChoicePage_delete(Model model) {
		// admin_상품관리 페이지 호출
		log.info("adminChoicePage_goodsPage...");
		List<GoodsVO> list = minService.getList_delete();
		for(int i=0; i<list.size(); i++) {
			list.get(i).setGoodsPriceFormat(String.format("%,d", list.get(i).getGoodsPrice()));
		}
		
		model.addAttribute("delete_list", list);
		return "management/adminChoicePage_delete";
	}
	@GetMapping("adminChoicePage_enrollment")
	public String adminChoicePage_enrollment(Model model) {
		// admin_상품등록 페이지 호출
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format ( currentTime );
		log.info("adminChoicePage_enrollment...");
		model.addAttribute("toDay",mTime);
		return "management/adminChoicePage_enrollment";
	}
	@PostMapping("adminChoicePage_enrollment")
	public String adminChoicePage_enrollment(GoodsVO vo,RedirectAttributes red) {
		log.info("adminChoicePage_enrollment_insert...");
		log.info(vo.toString());
		int result = minService.insert(vo);
		
		if(result >0) {
			red.addAttribute("result_en","true");
		}else {
			red.addAttribute("result_en","false");
			return "redirect:adminChoicePage_enrollment";
		}
		return "redirect:adminChoicePage_delete";
	}
	
	
    @GetMapping("delete_goods")
    public String delete_goods(int goodsNum,Model model) {
    	log.info("adminChoicePage_delete_goods...");
    	int result = minService.delete_goods(goodsNum);
    	if(result >0) {
    		model.addAttribute("result_delete","true");
    	}else {
    		model.addAttribute("result_delete", "false");
    	}
    	return "management/adminChoicePage_delete_result";
    }
}
