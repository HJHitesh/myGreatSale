package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.dao.ProductDAO;
import com.niit.myGreatSale.dao.SupplierDAO;
import com.niit.myGreatSale.dao.UserDAO;
import com.niit.myGreatSale.dao.impl.UserDAOImpl;
import com.niit.myGreatSale.model.Category;
import com.niit.myGreatSale.model.Product;
import com.niit.myGreatSale.model.Supplier;
import com.niit.myGreatSale.model.User;


@Controller
public class HomeController {
	
	Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;


	@Autowired
	private HttpSession session;

	@RequestMapping("/")
	public ModelAndView landingPage() {
		
		log.debug("Starting of the method landingPage ");
		
		ModelAndView mv = new ModelAndView("/home");
		session.setAttribute("category", category); 
		session.setAttribute("product", product);
		session.setAttribute("supplier", supplier);	
		
		session.setAttribute("categoryList", categoryDAO.list());		
		session.setAttribute("supplierList", supplierDAO.list());		
		session.setAttribute("productList", productDAO.list());
		
		log.debug("Ending of the method landingPage");
		
		return mv;
	}

	@RequestMapping("/Login")
	public ModelAndView showloginpage() {

		System.out.println("Login  is Clicked");
		ModelAndView mv = new ModelAndView("/home");
		
		mv.addObject("isUserClickedLogin", true);
		mv.addObject("msg", "Welcome to the you Great Deal Website Login Page");
		return mv;
	}

	@RequestMapping("/Register")
	public ModelAndView showregisterpage() {
		System.out.println("Register is Clicked");
		ModelAndView mv = new ModelAndView("/home");

		mv.addObject("isUserClickedRegister", true);
		mv.addObject("msg", "Welcome to the you Great Deal Website Register Page");

		return mv;
	}

}
