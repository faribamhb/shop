package com.javainuse.controllers;

import com.javainuse.entity.Product;
import com.javainuse.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

	private final ProductService productService;

	public ProductController(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("/")
	public String firstPage(Map<String, Object> model) {
		List<Product> products = productService.findAll();
		model.put("products",products);
		return "welcome";
	}

	@RequestMapping(value = "/deleteProduct",method = RequestMethod.GET)
	public String  deleteProduct(@RequestParam("id") Long id,Map<String, Object> model) {
	 productService.deleteProduct(id);
//		List<Product> products = productService.findAll();
//		model.put("products",products);
		return "home";

	}


}
