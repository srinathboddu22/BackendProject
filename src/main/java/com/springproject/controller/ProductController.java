package com.springproject.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dao.CategoryDAO;
import com.springproject.dao.ProductDAO;
import com.springproject.dao.SupplierDAO;
import com.springproject.model.Category;
import com.springproject.model.Product;

import com.springproject.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;
	
	

	@RequestMapping(value="/productsave",method=RequestMethod.GET)
	public String getProductPage(@ModelAttribute("product") Product product,Model model)
	
	{
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		model.addAttribute("product",new Product());
		return "ProductSave";
		
	}
	
	
	
	@RequestMapping(value="/saveProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,Model model)
	{
		productDAO.saveProduct(product);
		return "redirect:/productsave";
	   }
	
	
	@Autowired
	private ProductService productService;
	
	   @RequestMapping(value="/productnew")
		public String setupForm(Map<String, Object> map,Model model)
		{
		   Product product = new Product();
			map.put("product", product);
			map.put("productList",productService.getAllProduct());
			model.addAttribute("categoryList", categoryDAO.list());
			model.addAttribute("supplierList", supplierDAO.list());
			return "Productnew";
		}
	
	
	@RequestMapping(value="/product.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Product product, BindingResult result, @RequestParam String action, Map<String, Object> map,Model model){
		Product productResult = new Product();
		 if (action.equals("Add"))
		 {
			 productService.add(product);
			 productResult = product;
			
		 }
		 if (action.equals("Edit"))
				 {
			 productService.edit(product);
			 productResult = product;
			
		 }
		 if (action.equals("Delete")){
			 productService.delete(product.getProductid());
			 productResult = new Product();
			
		 }
		 if (action.equals("Search")){
			 Product searchedProduct = productService.getProduct(product.getProductid());
			 productResult = searchedProduct!=null ? searchedProduct : new Product();
			
		}
		map.put("product", productResult);
		map.put("productList", productService.getAllProduct());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "Productnew";
	}
	
	
	}
	
	
	
	

