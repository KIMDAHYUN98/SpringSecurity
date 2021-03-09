package com.company.test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordTest {
	public static void main(String[] args) {
		BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
		String pw = bcrypt.encode("1234"); // 암호화 된 스트링 값
		System.out.println(pw);
		// DB에 있는 패스워드와 비교
		System.out.println(bcrypt.matches("1234", pw));
	}
}
