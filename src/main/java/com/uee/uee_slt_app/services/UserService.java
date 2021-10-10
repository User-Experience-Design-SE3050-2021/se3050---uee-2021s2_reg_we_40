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

    public ResponseEntity<UserModel> getUserFromId(String timeTableId)  {
        UserModel timeTable = userRepository.findById(timeTableId).orElseThrow();

        return ResponseEntity.ok().body(timeTable);
    }

    public ResponseEntity < UserModel > changeContactIfo(String userId, UserModel userDetails) {

        UserModel userModel = userRepository.findById(userId).orElseThrow();

        userModel.setName(userDetails.getName());
        userModel.setEmail(userDetails.getEmail());
        userModel.setContactNo(userDetails.getContactNo());

        final UserModel changeContactInfo = userRepository.save(userModel);
        return ResponseEntity.ok(changeContactInfo);
    }

    public ResponseEntity < UserModel > changeBroadbandPassword(String userId, UserModel userDetails) {

        UserModel userModel = userRepository.findById(userId).orElseThrow();

        userModel.setBraodbandPassword(userDetails.getBraodbandPassword());


        final UserModel changeBroadbandPassword = userRepository.save(userModel);
        return ResponseEntity.ok(changeBroadbandPassword);
    }
}
