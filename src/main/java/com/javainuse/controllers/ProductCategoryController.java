package com.javainuse.controllers;

import com.javainuse.entity.ProductCategory;
import com.javainuse.service.ProductCategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class ProductCategoryController {
    private final ProductCategoryService productCategoryService;

    public ProductCategoryController(ProductCategoryService productCategoryService) {
        this.productCategoryService = productCategoryService;
    }
    @RequestMapping(value = "/showCategory",method = RequestMethod.GET)
    public String  showCategory( Map<String, Object> model) {
        List<ProductCategory> productCategories =productCategoryService.findAll();
		model.put("productCategories",productCategories);
        return "home";

    }
}
