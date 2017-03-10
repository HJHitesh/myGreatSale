package com.niit.controllers;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.UserDAO;
import com.niit.myGreatSale.dao.impl.UserDAOImpl;
import com.niit.myGreatSale.model.User;


@Controller
public class HomeController {

	@Autowired
	private static UserDAO userDAO;
	
	@Autowired
	private static User user;


	@Autowired
	private HttpSession session;

	@RequestMapping("/")
	public ModelAndView ShowHomePage() {
		ModelAndView mv = new ModelAndView("/home");

		mv.addObject("message", "Welcome to the you Great Deal Website");
		return mv;
	}

	@RequestMapping("/Login")
	public ModelAndView showloginpage() {

		System.out.println("Login  is Clicked");
		ModelAndView mv = new ModelAndView("/home");
		
		mv.addObject("isUserClickedLogin", true);
		mv.addObject("mess", "Welcome to the you Great Deal Website Login Page");
		return mv;
	}

	@RequestMapping("/Register")
	public ModelAndView showregisterpage() {
		System.out.println("Register is Clicked");
		ModelAndView mv = new ModelAndView("/home");

		mv.addObject("isUserClickedRegister", true);
		mv.addObject("message1", "Welcome to the you Great Deal Website Register Page");

		return mv;
	}

	@RequestMapping(value = "/validaters")
	public ModelAndView showvalidate(@RequestParam("userid") String id, @RequestParam("password") String pwd) {

		System.out.println("Mthod Called " + id + pwd);
		ModelAndView mv = new ModelAndView("/home");

		
		
		if (userDAO.validate(id, pwd) == true)
		{
			user = userDAO.getUser(id);

			if (user.getRole().equals("Admin")) 
			{
				mv.addObject("role", "AdminRole");
				
			} else 
			{
				mv.addObject("role", "Customer");
			}

			mv.addObject("msg", "Valid Credentials ");

			session.setAttribute("loginMessage", "Welcome :" + id);
		}

		else {

			mv.addObject("msg", "Invalid login Credentials");
		}

		return mv;
	}

	@RequestMapping("/Logout")
	public ModelAndView showLogoutpage() {

		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		return mv;
	}

}
