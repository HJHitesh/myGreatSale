package com.niit.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.model.Category;

@Controller
public class AdminController {
	
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	private static Logger log = LoggerFactory.getLogger(AdminController.class);
	
	
	
	
	
	
	@RequestMapping("/manage_Categories")
	public ModelAndView manageCategories()
	
	{
		
		log.debug("This is in the manage category");
		
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		
		mv.addObject("isUserClickedCategories","true");
		
		//get the Category from database.
		List<Category> categoryList = categoryDAO.list();
		
		mv.addObject("categoryList", categoryList);
		
		mv.addObject("category", category);
		
		mv.addObject("isUserClickedCategory", true);
		
		log.debug("This is in the  out of manage category");
		
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
