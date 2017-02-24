package com.niit.controllers;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@Autowired
	private HttpSession session;
	
	
	
	@RequestMapping("/")
	public ModelAndView Home()
	{
		ModelAndView mv = new ModelAndView("/home");
		
		mv.addObject("message", "Welcome to the you Great Deal Website");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView showloginpage()
	{
		
		System.out.println("Login  is Clicked");
		ModelAndView mv = new ModelAndView("/Login");
		
		mv.addObject("isUserClickedLogin",true);
		mv.addObject("mess", "Welcome to the you Great Deal Website Login Page");
		return mv;
	}
	
	@RequestMapping("/Register")
	public ModelAndView showregisterpage()
	{
		System.out.println("Register is Clicked");
		ModelAndView mv = new ModelAndView("/home");
		
		mv.addObject("isUserClickedRegister",true);
		mv.addObject("message1", "Welcome to the you Great Deal Website Register Page");
		
		return mv;
	}
	
	@RequestMapping("/validaters")
	public ModelAndView showvalidate(@RequestParam("userId") String id,@RequestParam("password") String pwd)
	{
		
		
		ModelAndView mv = new ModelAndView("/home");
		
		if((id.equals("hitesh") &&  pwd.equals("hitesh@123")))
		{
			
			mv.addObject("msg", "Valid Credentials ");
			
			session.setAttribute("loginMessage", "Welcome :"+id);
		}
	
		else{
			
			mv.addObject("msg", "Invalid login Credentials");
		}
		
		return mv;
	}
	
	@RequestMapping("/Logout")
	public ModelAndView showLogoutpage()
	{
		
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		return mv;
	}
	
	
	
	
	
}
