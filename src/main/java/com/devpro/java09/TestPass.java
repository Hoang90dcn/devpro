package com.devpro.java09;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class TestPass {
	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(16);
		String result = encoder.encode("123456");
		System.out.println(result);
	}
}
