package com.example.web.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {
    public boolean validateUser(String userid, String pass){
        return userid.equalsIgnoreCase("lolol") && pass.equalsIgnoreCase("mimin");
    }
}
