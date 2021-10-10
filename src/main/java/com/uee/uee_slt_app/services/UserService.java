package com.uee.uee_slt_app.services;

import com.uee.uee_slt_app.models.UserModel;
import com.uee.uee_slt_app.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.config.ConfigDataResourceNotFoundException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;






    public UserModel saveUser(UserModel userModel){
        return userRepository.save(userModel);
    }
}
