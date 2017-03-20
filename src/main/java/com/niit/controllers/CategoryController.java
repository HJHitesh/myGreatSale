package com.niit.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.model.Category;

@Controller
public class CategoryController {
	
	//Category.jsp -addCategory ,deleteCategory,showCategoryList,updateCategory,editCategory
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	
	@RequestMapping(value = "/add_Category_Value" ,method=RequestMethod.POST)
	public ModelAndView AddCategory(@RequestParam("id") String id,@RequestParam("name") String name,
			@RequestParam("description") String description)
	
	{
		System.out.println("INside the Create methoD" + id + name);
		
		category.setId(id);
		category.setName(name);
		category.setDescription(description);
		
		ModelAndView mv =new ModelAndView("/Admin/AdminHome");
		
		if(categoryDAO.save(category)){
			mv.addObject("message", "Succesfully created");
		}
		else
		{
			mv.addObject("message", "Not able to create the Category");
		}
	
	return mv;
	}
	
	
	
	
	
	
}
