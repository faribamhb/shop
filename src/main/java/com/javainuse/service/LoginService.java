package com.javainuse.service;

import com.javainuse.entity.User;
import com.javainuse.repository.LoginRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LoginService {
    private final LoginRepository loginRepository;

    public LoginService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    public boolean findUser(String userName, String password) {
        Optional<User> user =loginRepository.findByUserNameAndPassword(userName,password);
        if (user.isPresent()){
            return true;
        }
        return false;

    }
}
