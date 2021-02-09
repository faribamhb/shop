package com.javainuse.controllers;

import com.javainuse.entity.Product;
import com.javainuse.service.LoginService;
import com.javainuse.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class LoginController {
    private final LoginService loginService;
    private final ProductService productService;

    public LoginController(LoginService loginService, ProductService productService) {
        this.loginService = loginService;
        this.productService = productService;
    }

    @RequestMapping("/login")
    public String firstPage() {
        return "login";
    }

    @RequestMapping("/loginUser")
    public String login(@RequestParam("username") String username,@RequestParam("password") String password,Map<String, Object> model){

        boolean exitUser = loginService.findUser(username, password);
        if(exitUser){
            List<Product> products = productService.findAll();
            model.put("products",products);
            return "home";
        }
        else
        {
            return "login";
        }
    }
}


