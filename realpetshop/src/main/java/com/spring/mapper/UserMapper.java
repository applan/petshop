package com.spring.mapper;


import com.spring.domain.AuthInfo;
import com.spring.domain.ChangeVO;
import com.spring.domain.FindIDVO;
import com.spring.domain.LoginVO;
import com.spring.domain.PwdInfo;
import com.spring.domain.UserVO;

public interface UserMapper {
	//중복아이디 찾기
	public UserVO selectById(String userid);
	//회원가입
	public int registMember(UserVO vo);
	//로그인
	public AuthInfo selectMember(LoginVO vo);
	//회원 탈퇴
	public int deleteMember(AuthInfo info);
	//비밀번호 변경
	public int updateMember(ChangeVO vo);
	//아이디 찾기
	public UserVO useridfind(UserVO vo);
	//비밀번호 찾기
	public String findPwd(PwdInfo info);

}