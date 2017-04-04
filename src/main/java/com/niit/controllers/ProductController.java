package com.niit.controllers;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;


import javax.servlet.http.HttpServletRequest;


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
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.myGreatSale.dao.CategoryDAO;
import com.niit.myGreatSale.dao.ProductDAO;
import com.niit.myGreatSale.dao.SupplierDAO;
import com.niit.myGreatSale.model.Category;
import com.niit.myGreatSale.model.Product;
import com.niit.myGreatSale.model.Supplier;


@Controller
public class ProductController {
	
	//product.jsp -addproduct ,deleteproduct,showproductList,updateproduct,editproduct
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
	

	@RequestMapping(value = "/list_products" ,method = RequestMethod.GET)
	public ModelAndView listproducts() {
		
		log.debug(" Starting of the method listproducts");
		
		ModelAndView model = new ModelAndView ("/Admin/AdminHome");
	
		model.addObject("product", product);
		model.addObject("productList", productDAO.list());
		model.addObject("category", category);
		model.addObject("categoryList", categoryDAO.list());
		model.addObject("supplier", supplier);
		model.addObject("supplierList", supplierDAO.list());
		model.addObject("isAdminClickedproducts", true);
		log.debug(" End of the method listproducts");
		return model;
	}
	
	
//	@RequestMapping(value = "/add_Product_Value",method = RequestMethod.POST )

	@RequestMapping(value = "/add_Product_Value" ,method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, BindingResult result,
			HttpServletRequest request,@RequestParam String action ,Model model)
	{
		log.debug("The Starting  of Add Method");
		log.info("the product id is"+product.getId());
		log.info("the product id is"+product.getName());
		log.info("the product id is"+product.getDescription());
		log.info("the product id is"+product.getCategory_id());
		log.info("the product id is"+product.getSupplier_id());
		log.info("the product id is"+product.getFile());
		
		
		if (result.hasErrors()) {
			model.addAttribute("product", product);
			model.addAttribute("products", productDAO.list());
			System.out.println("Found Errors in inputs");
			return "/admin";
		}
		
		if(action.equals("save")){
			
			log.debug(" Starting of the method addproduct");
			
			productDAO.save(product);
			
			MultipartFile file = product.getFile();
			String originalFile = file.getOriginalFilename();

			String filepath = request.getSession().getServletContext().getRealPath("resources/images/");
			System.out.println("File path is " + filepath);
			String filename = filepath + "\\" + product.getId() + ".jpg";
			System.out.println("File path is " + filepath);

			try {
				byte image[] = product.getFile().getBytes();
				BufferedOutputStream bof = new BufferedOutputStream(new FileOutputStream(filename));
				bof.write(image);
				bof.close();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}else {
			productDAO.update(product);
			
			MultipartFile file = product.getFile();
			String originalFile = file.getOriginalFilename();

			String filepath = request.getSession().getServletContext().getRealPath("resources/images/");
			System.out.println("File path is " + filepath);
			String filename = filepath + "\\" + product.getId() + ".jpg";
			System.out.println("File path is " + filepath);

			try {
				byte image[] = product.getFile().getBytes();
				BufferedOutputStream bof = new BufferedOutputStream(new FileOutputStream(filename));
				bof.write(image);
				bof.close();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}
		model.addAttribute("product", product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplier", supplier);
		model.addAttribute("supplierList", supplierDAO.list());
		model.addAttribute("isAdminClickedproducts", true);

		
////		if (result.hasErrors()) {
////			ModelAndView mv =new ModelAndView("/Admin/AdminHome");
////			mv.addObject("product", product);
////			System.out.println("Found Errors in inputs");
////			return mv;
////			
////		}
//		model.addAttribute("product", new  Product());
//	
//		if(action.equals("save"))
//		{
//		log.debug(" Starting of the method addproduct");
//		
//		Category category = categoryDAO.getCategoryByName(product.getCategory().getName());
//		
//		Supplier supplier = supplierDAO.getSupplierByName(product.getSupplier().getName());
//		
//		product.setCategory(category);
//		
//		product.setSupplier(supplier);
//		
//		product.setCategory_id(category.getId());
//		product.setSupplier_id(supplier.getId());
//		product.setId(product.getId());
//		product.setName(product.getName());
//		product.setDescription(product.getDescription());
//		product.setPrice(product.getPrice());
//		
//		product.setId(Util.removeComman(product.getId()));
//		
////		if(productDAO.save(product)){
////			mv.addObject("message", "Succesfully created");
////		}
////		else
////		{
////			mv.addObject("message", "Not able to create the product");
////		}
////		log.debug(" End of the method addProduct");
//		}
//		else if (action.equals("renew"))
//		{
//			Category category = categoryDAO.getCategoryByName(product.getCategory().getName());
//			
//			Supplier supplier = supplierDAO.getSupplierByName(product.getSupplier().getName());
//			
//			product.setCategory(category);
//			
//			product.setSupplier(supplier);
//			
//			product.setCategory_id(category.getId());
//			product.setSupplier_id(supplier.getId());
//			product.setId(product.getId());
//			product.setName(product.getName());
//			product.setDescription(product.getDescription());
//			product.setPrice(product.getPrice());
//			product.setId(Util.removeComman(product.getId()));
//			
//		}
//		FileUtil.upload(path, file , product.getId()+".jpg");
//		log.debug("The ENd of Add Method");
//		
//		model.addAttribute("product", new  Product());
//		model.addAttribute("productList", this.productDAO.list());
//		model.addAttribute("isAdminClickedproducts", true);
//		
//		return "/Admin/AdminHome";
//	}
		
		
	return "/Admin/AdminHome";
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
