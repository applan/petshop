package com.spring.service;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.AuthInfo;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;
import com.spring.domain.UserVO;
import com.spring.domain.passwordVO;
import com.spring.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;

	
	@Override
	public UserVO selectById(String userid) {
		return mapper.selectById(userid);
	}

	@Override
	public int registMember(UserVO vo) {
		return mapper.registMember(vo);
	}

	@Override
	public int deleteMember(AuthInfo info) {
		return mapper.deleteMember(info);
	}

	@Override
	public int updateMember(ChangeVO vo) {
		return mapper.updateMember(vo);
	}

	@Override
	public int passwordfind(passwordVO vo) {
		return mapper.passwordfind(vo);
	}

	@Override
	public AuthInfo selectMember(LoginVO vo) {
		return mapper.selectMember(vo);
	}

	@Override
	public UserVO useridfind(UserVO vo) {
		return mapper.useridfind(vo);
	}



}