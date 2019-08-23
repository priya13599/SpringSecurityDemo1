package com.nucleus.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import sun.applet.Main;

public class PasswordEncodingUtility {

	public static String encodePwd(String password)
	{
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		return encoder.encode(password);
		
	}
	
	public static void main(String[] args) {
		System.out.println(encodePwd("user02"));
		
	}
}
