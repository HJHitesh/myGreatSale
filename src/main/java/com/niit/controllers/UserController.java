package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.dao.ProductDAO;
import com.niit.myGreatSale.dao.SupplierDAO;
import com.niit.myGreatSale.dao.UserDAO;
import com.niit.myGreatSale.model.Category;
import com.niit.myGreatSale.model.Product;
import com.niit.myGreatSale.model.Supplier;
import com.niit.myGreatSale.model.User;

@Controller
public class UserController {
	
	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserDAO userDAO;
	

	@Autowired
	private User user;

//	@Autowired
//	private CartDAO cartDAO;
//
//	@Autowired
//	private MyCart myCart;

	
	@Autowired
	private HttpSession session;
	
//	@RequestMapping(value = "/validaters")
//	public ModelAndView showvalidate(@RequestParam("username") String id, @RequestParam("password") String pwd) {
//
//		System.out.println("Mthod Called " + id + pwd);
//		ModelAndView mv = new ModelAndView("/home");
//		if (userDAO.validate(id, pwd) == true)
//		{
//			user = userDAO.getUser(id);
//			if (user.getRole().equals("Admin")) 
//			{
//				mv.addObject("isAdmin", "true");
//				session.setAttribute("AdminLoggedIn","true");
//			} else 
//			{
//				mv.addObject("isAdmin", "false");
//			}
//			mv.addObject("successMessage", "Valid Credentials ");
//			session.setAttribute("loginMessage", "Welcome :" + id);
//		}
//		else {
//			mv.addObject("errorMessage", "Invalid login Credentials");
//		}
//		return mv;
//		}	
	
	@RequestMapping(value = "validate", method = RequestMethod.GET)
	public ModelAndView validate(HttpServletRequest request ,HttpServletRequest response) throws Exception
	{
		log.debug("Starting of the method validate");
		ModelAndView mv = new ModelAndView("/home");
		
		Authentication auth= SecurityContextHolder.getContext().getAuthentication();
		
		String userID = auth.getName();
		log.info( userID );
		session.setAttribute("loggedInUser", userID );
		
		if(request.isUserInRole("ROLE_ADMIN"))
		{
			log.debug("Logged in as Admin");
			session.setAttribute("isAdmin", "true");
			session.setAttribute("AdminLoggedIn","true");
		}
		else{
			log.debug("Logged in as User");
			session.setAttribute("isAdmin", "false");
//			List<MyCart> cartList = cartDAO.list(name);
//			mv.addObject("cartList"	, cartList);
//			mv.addObject("cartSize", cartList.size());
//			mv.addObject("totalAmount",cartDAO.getTotalAmount(userID));
			
		}
		mv.addObject("successMessage", "Valid Credentials ");
	    session.setAttribute("loginMessage", "Welcome :" + userID);
	    
	    session.setAttribute("loggedInUser", userID );
	    
		log.debug("Ending of the method validate");
		return mv;
	}
	
	//authentication-failure-forward-url="/loginError"
		@RequestMapping(value = "/loginError", method = RequestMethod.GET)
		public String loginError(Model model) {
			log.debug("Starting of the method loginError");
			model.addAttribute("errorMessage", "Invalid Credentials.  Please try again.");
			log.debug("Ending of the method loginError");
			return "home";

		}
	//<security:access-denied-handler error-page="/accessDenied" />
		@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
		public String accessDenied(Model model) {
			log.debug("Starting of the method accessDenied");
			model.addAttribute("errorMessage", "You are not authorized to access this page");
			log.debug("Ending of the method accessDenied");
			return "home";

		}
		
		@RequestMapping("/Logout")
		public ModelAndView showLogoutpage() {

			ModelAndView mv = new ModelAndView("/home");
			session.invalidate();
			return mv;
		}


}
