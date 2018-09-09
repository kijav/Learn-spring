package com.example.web.controller;

import com.example.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginMessage(ModelMap model){
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginMessage(@RequestParam String name,@RequestParam String password, ModelMap model){

        boolean validateUser = service.validateUser(name, password);

        if(!validateUser) {
            model.put("errorMessage", "Invalid Credentials");
            return "login";
        } else {
            model.put("name", name);
            return "welcome";
        }
    }
}