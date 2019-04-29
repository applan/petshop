package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthInfo;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;
import com.spring.domain.UserVO;
import com.spring.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/login/*")
@SessionAttributes("info")
public class LoginController {

	
	@Autowired
	private UserService service;
	
	@GetMapping("/find")
	public void find() {
		
	}
	
	@GetMapping("/index")
	public void index() {
		log.info("index");
	}
	
	@GetMapping("/login1") 
	  public void login() { 
		  log.info("로그인 폼");
	  }
	
	
	@PostMapping("/login1")
	public String login(HttpSession session, LoginVO vo, Model model) {
		log.info("로그인 정보 가져오기 ....");
		//로그인 시도
		
		log.info("으아아아 " + vo.getUserid() +"dd" + vo.getCurrent_password());
		
		AuthInfo info=service.selectMember(vo);
		
		if(info==null) {
			//다시 로그인 페이지로 이동
			return "redirect:login1";
		}else {
			//로그인 성공 
			// HttpSession 객체 사용
			// @SessionAttributes("이름")
			model.addAttribute("info",info);
			//session.setAttribute("info", info);
			// 인덱스 이동
			return "redirect:EditPersonalInformation";
		}
	}
	
	@GetMapping("/SignUp")
	public void signup() {
		log.info("가입 요청.....");
	}
	//중복아이디 검사 
	//http://localhost:8083/login/checkId
	//userid / post방식
	@ResponseBody
	@PostMapping("/checkId")
	public String checkId(String userid) {
		log.info("중복 아이디 검사    "+userid);	
		UserVO dupId=service.selectById(userid);
		//dupId가 널이 아니면 이미 사용중인 아이디 
		if(dupId!=null)
			return "false";
		return "true";//널이면 사용할 수 있는 아이디		
	}	
	//회원가입
	@PostMapping("/SignUp")
	public String signUp(@ModelAttribute("vo")UserVO vo) {
		log.info("회원가입 요청...");
		
		log.info(vo.getUserid());
		log.info(vo.getPassword());
		log.info(vo.getUsername());
		log.info(vo.getAddr());
		log.info(vo.getEmail());
		
		boolean boo = vo.ConfirmPwd(vo.getPassword(), vo.getConfirm_password());
		
		//password와 confirm_password가 같으면
			//회원가입
			if(boo) {
				int result = service.registMember(vo);
				if(result>0) {
					return "redirect:login1";
				}
			}
			return "SignUp";
	}

	
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		log.info("로그아웃...");
		//세션해제
		//HttpSession : invalidate(), removeAttribute()
		//SessionStatus : setComplete()
		status.setComplete();
			
		return "redirect:/login1";
		//return "index";
			
	}

	//회원 탈퇴
	@GetMapping("/DeleteId")
	public String leave(@ModelAttribute("info")AuthInfo info, SessionStatus status, Model model) {
		//userid가 일치하는 회원 탈퇴
		
		log.info("회원 탈퇴.." +info.getUserid());
		service.deleteMember(info);
		
		model.addAttribute("info", info);
		
		log.info("탈퇴 :"+info.getUserid());
		
		status.setComplete();
		return "redirect:login1";
	}
	
	//LoginVO	
	@GetMapping("/EditPersonalInformation")
	public void EditPersonalInformation() {
		
		log.info("개인정보 수정...");
	}
	
	@PostMapping(value= "/EditPersonalInformation")
	public String EditPersonalInformation1(@ModelAttribute("info")AuthInfo info, ChangeVO vo,
			SessionStatus status, RedirectAttributes rttr, Model model) {
		log.info("개인정보수정....");
		//세션에서 userid 가져오기
		//changePwd 폼에서 넘어오는 데이터 가져오기
		//사용자가 비밀번호 변경 폼에서 입력한 현재 비밀번호와 userid를 넘겨
		//존재하는 사용자인지 확인하기
		LoginVO lvo = new LoginVO();
		lvo.setUserid(info.getUserid());
		lvo.setCurrent_password(vo.getCurrent_password());
		
		model.addAttribute("info", info);
		
		AuthInfo info2 = service.selectMember(lvo);
		//일치하는 사용자가 존재한다면 userid에 해당하는 사용자의 비밀번호 변경 해주기
		//비밀번호 변경이 성공하면 현재 세션은 해제한 후
		//메인 페이지로 이동하기
		
		if(info2!=null) {
			vo.setUserid(info.getUserid());
			int result = service.updateMember(vo);
			if(result>0) {
				if(!status.isComplete()) {
					status.setComplete();
				}
				return "redirect:login1";
			}
		}
		//현재 비밀번호가 틀려서 사용자가 존재하지 않는다면 비밀번호 변경 폼으로
		//돌려서 비밀번호를 확인하라는 메세지창 보여주기
		return "redirect:EditPersonalInformation";
}
	
	@GetMapping("/findfindfinduserid")
	public void findfinduserid() {
		log.info("떠라제발");
	}
	
	@GetMapping("/FindID")
	public void findid() {
		log.info("아이디 찾기...");
	}
	@PostMapping(value="/FindID")
	public String useridfind(String userid,
			Model model, RedirectAttributes rttr, UserVO vo, HttpSession session, SessionStatus status) {
		log.info("아이디 찾기dd");
		
		
		UserVO vo2 = service.useridfind(vo);
		if(vo2!=null) {
			rttr.addFlashAttribute("userid",vo2.getUserid());
		}


		return "redirect:findfindfinduserid";
		
	}
	


}