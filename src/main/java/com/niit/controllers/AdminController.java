package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//@Controller
public class AdminController {
	
	
	@RequestMapping("/manage_Categories")
	public ModelAndView manageCategories()
	{
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		
		mv.addObject("isUserClickedCategories",true);
		
		//get the Category from database.
		
		return mv;
	}
	
	@RequestMapping("/manage_Products")
	public ModelAndView manageProduct()
	{
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		
		mv.addObject("isUserClickedProduct",true);
		
		//get the Category from database.
		
		return mv;
	}
	
	
	@RequestMapping("/manage_Suppliers")
	public ModelAndView manageSupliers()
	{
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		
		mv.addObject("isUserClickedSupplier",true);
		
		//get the Category from database.
		
		return mv;
	}
	

}
