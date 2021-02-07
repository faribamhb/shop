package com.javainuse.controllers;

import com.javainuse.entity.Product;
import com.javainuse.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class TestController {

	private final ProductService productService;

	public TestController(ProductService productService) {
		this.productService = productService;
	}

	@RequestMapping("/")
	public String firstPage(Map<String, Object> model) {
		List<Product> products = productService.findAll();
		model.put("products",products);
		return "welcome";
	}

}
