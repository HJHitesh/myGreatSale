package com.niit.controllers;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.dao.ProductDAO;
import com.niit.myGreatSale.dao.SupplierDAO;
import com.niit.myGreatSale.model.Category;
import com.niit.myGreatSale.model.Product;
import com.niit.myGreatSale.model.Supplier;
import com.niit.myGreatSale.util.FileUtil;
import com.niit.myGreatSale.util.Util;



@Controller
public class ProductController {
	
	//product.jsp -addproduct ,deleteproduct,showproductList,updateproduct,editproduct
	
	private static String UPLOAD_LOCATION="D:/Software/myGreatSale/images/";
	
	
	private static Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	private String path="D://Software//myGreatSale//src//main//webapp//resources//images";
	
	
	
	
	
	@RequestMapping(value = "/list_products", method = RequestMethod.GET)
	public ModelAndView listproducts() {
		
		log.debug(" Starting of the method listproducts");
		
		ModelAndView model = new ModelAndView ("/Admin/AdminHome");
	
		model.addObject("product", product);
		model.addObject("productList", productDAO.list());
		model.addObject("isAdminClickedproducts", true);
		log.debug(" End of the method listproducts");
		return model;
	}
	
	
	@RequestMapping(value = "/add_Product_Value" ,method = RequestMethod.POST)
	public ModelAndView Addproduct(@ModelAttribute("product") Product product,@RequestParam("image") MultipartFile file,@RequestParam String action)
	
	{
		log.debug("The Starting  of Add Method");
		
		ModelAndView mv =new ModelAndView("/Admin/AdminHome");
		
		if(action.equals("save"))
		{
		log.debug(" Starting of the method addproduct");
		
		Category category = categoryDAO.getCategoryByName(product.getCategory().getName());
		
		Supplier supplier = supplierDAO.getSupplierByName(product.getSupplier().getName());
		
		product.setCategory(category);
		
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		product.setId(product.getId());
		product.setName(product.getName());
		product.setDescription(product.getDescription());
		product.setPrice(product.getPrice());
		product.setId(Util.removeComman(product.getId()));
		if(productDAO.save(product)){
			mv.addObject("message", "Succesfully created");
		}
		else
		{
			mv.addObject("message", "Not able to create the product");
		}
		log.debug(" End of the method addProduct");
		}
		else if (action.equals("renew"))
		{
			Category category = categoryDAO.getCategoryByName(product.getCategory().getName());
			
			Supplier supplier = supplierDAO.getSupplierByName(product.getSupplier().getName());
			
			product.setCategory(category);
			
			product.setSupplier(supplier);
			
			product.setCategory_id(category.getId());
			product.setSupplier_id(supplier.getId());
			product.setId(product.getId());
			product.setName(product.getName());
			product.setDescription(product.getDescription());
			product.setPrice(product.getPrice());
			product.setId(Util.removeComman(product.getId()));
			
			if(productDAO.update(product))
			{
				
				mv.addObject("message", "Succesfully updated");
			}
			else
			{
				mv.addObject("message", "Not able to update the product");
			}
			log.debug(" End of the method updateProducts");
			
			
		}
		FileUtil.upload(path, file, product.getId()+".jpg");
		log.debug("The ENd of Add Method");
		
		mv.addObject("product", product);
		mv.addObject("productList", productDAO.list());
		mv.addObject("isAdminClickedproducts", true);
		mv.addObject("category", category);
		mv.addObject("categoryList", categoryDAO.list());
		
		
		
	return mv;
	}
	
	
	
	@RequestMapping(value = "manage_Product_delete/{id}")
	public ModelAndView deleteproduct(@PathVariable("id") String id, Model model)
	
	{
		log.debug(" Starting of the method deleteproduct");
		
		boolean flag = productDAO.delete(id);
		String msg ="Succesfully done Operation";
		
		if(flag==false){
			msg ="The delete operation could not be done";
		}
		model.addAttribute("msg", msg);
		ModelAndView mv = new ModelAndView("forward:/list_products");
		
		log.debug(" End of the method deleteProducts");
	return mv;
	
	}
	
	//Deleteing the Id from the table
	
	@RequestMapping("manage_Product_edit/{id}")
	public String editproduct(@PathVariable("id") String id, Model model) {
		 
		log.debug(" Starting of the method editproduct");

		product = productDAO.getProductByID(id);
	
		//model.addAttribute("product", product);
		log.debug(" End of the method editproduct");
		return "forward:/list_products";
	}	
	
	
	
	
}
