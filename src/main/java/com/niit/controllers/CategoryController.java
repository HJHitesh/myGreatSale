package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.model.Category;

//@Controller
public class CategoryController {
	
	//Category.jsp -addCategory ,deleteCategory,showCategoryList,updateCategory,editCategory


	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	
	
	
	public ModelAndView getAllCategory()
	{
		
	ModelAndView mv =new ModelAndView("/AdminHome");
	List<Category> categoryList = categoryDAO.list();
	mv.addObject("categoryList", categoryList);
	mv.addObject("isUserClickedCategory", true);
	
	return mv;
	}
	
	
	
}
