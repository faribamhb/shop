package com.javainuse.controllers;

import com.javainuse.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    private final LoginService loginService;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @RequestMapping("/login")
    public String firstPage() {
        return "login";
    }

    @RequestMapping("/loginUser")
    public String login(@RequestParam("userName") String userName,@RequestParam("password") String password){

        boolean exitUser = loginService.findUser(userName, password);
        if(exitUser){
            return "home";
        }
        else
        {
            return "login";
        }
    }
}
