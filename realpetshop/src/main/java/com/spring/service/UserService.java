package com.spring.service;

import com.spring.domain.AuthInfo;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;
import com.spring.domain.PwdInfo;
import com.spring.domain.UserVO;

public interface UserService {
	public UserVO selectById(String userid);
	public int registMember(UserVO vo);
	public AuthInfo selectMember(LoginVO vo);
	public int deleteMember(AuthInfo info);
	public int updateMember(ChangeVO vo);
	public UserVO useridfind(UserVO vo);
	public String findPwd(PwdInfo info);

}

