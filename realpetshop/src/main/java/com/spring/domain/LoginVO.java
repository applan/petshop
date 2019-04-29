package com.spring.domain;

import lombok.Data;

@Data
public class LoginVO {
	//SignUp.jsp 폼과 연동
	private String userid;
	private String current_password;


}
