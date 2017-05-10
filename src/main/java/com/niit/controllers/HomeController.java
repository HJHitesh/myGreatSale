package com.niit.controllers;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CartDAO;
import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.dao.ProductDAO;
import com.niit.myGreatSale.dao.SupplierDAO;
import com.niit.myGreatSale.dao.UserDAO;
import com.niit.myGreatSale.dao.impl.UserDAOImpl;
import com.niit.myGreatSale.model.Category;
import com.niit.myGreatSale.model.MyCart;
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
	private CartDAO cartDAO;

	@Autowired
	private MyCart myCart;
	
	
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

		log.debug("Starting of the method **LOGIN** PAGE");
		
		ModelAndView mv = new ModelAndView("/home");
		
		mv.addObject("isUserClickedLogin", true);
		mv.addObject("msg", "Welcome to the you Great Deal Website Login Page");
		
		log.debug("ENDING of the method ***LOGIN METH** ");
		return mv;
	}

//	@RequestMapping("/Register")
//	public ModelAndView showregisterpage() {
//		System.out.println("Register is Clicked");
//		ModelAndView mv = new ModelAndView("/home");
//
//		mv.addObject("isUserClickedRegister", true);
//		mv.addObject("msg", "Welcome to the you Great Deal Website Register Page");
//
//		return mv;
//	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String addUser(@ModelAttribute User user, Model model) {
		  user.setRole("ROLE_USER");
		if (userDAO.save(user) == true) {

			model.addAttribute("msg", "Successfully registred");
			model.addAttribute("registred", "true");
		} else {
			model.addAttribute("msg", "not able register");
		}
		return "/home";

	}
	
	@RequestMapping("/lastPage")
	public ModelAndView showlastPage()
	{

		log.debug("This is ***************lastPage");
		
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		
		log.info("the logged in ********USER ID***********"+ loggedInUserid );
		
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid = auth.getName();
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)   auth.getAuthorities();
			authorities.contains("ROLE_USER");
			
		}
		
		log.info("the logged in ********USER ID***********"+ loggedInUserid );
		
		List<MyCart> cartlist = cartDAO.list(loggedInUserid);
		
		int catsize = cartDAO.list(loggedInUserid).size();
		
		log.info("the ****SIZE IS******"+catsize);
	
		for(MyCart listall : cartlist)
		{
			
			myCart.setId(listall.getId());;
			
			cartDAO.delete(myCart);
			
			log.info("****THE CATSIZE**** "+catsize);
		}
		
		ModelAndView mv = new ModelAndView("lastPage");
		
		log.debug("This is end ************of lastpage");
		return mv;
	}

	
	@RequestMapping("/CheckoutPage")
	public ModelAndView showCheckoutPage() {

		log.debug("**Starting OF ***************CHECK****OUT PAGE");
		ModelAndView mv = new ModelAndView("/CheckoutPage");
		log.debug("**Ending  OF ***************CHECK****OUT PAGE");
		return mv;
	}
	
	
}
