package com.nucleus.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {

	@RequestMapping("/loginform")
	public String request1()
	{
		return "LoginForm";
	}
	
	@RequestMapping("/loginfailure")
	public String request2(ModelMap map)
	{
		map.addAttribute("error","Invalid credentials");
		return "LoginForm";
	}
	
	
	@RequestMapping("/noaccess")
	public String request3()
	{		
		return "accessdenied";
	}
	
	
	@RequestMapping("/logoutpage")
	public String request4()
	{		
		return "Logout";
	}
	
	
	@RequestMapping("/defaultpage")
	public String request5(HttpServletRequest request)
	{		
		String target="result";
		if(request.isUserInRole("ROLE_MAKER"))
			target="maker";
		else if(request.isUserInRole("ROLE_CHECKER"))
			target="checker";
		return target;
	}
	
	
	
}
