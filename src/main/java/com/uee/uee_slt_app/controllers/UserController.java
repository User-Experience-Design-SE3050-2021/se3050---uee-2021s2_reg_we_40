package com.uee.uee_slt_app.controllers;

import com.uee.uee_slt_app.models.PromotionModel;
import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import com.uee.uee_slt_app.models.UserModel;
import com.uee.uee_slt_app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/add-user")
    public UserModel saveUser(@RequestBody UserModel userModel){
        return userService.saveUser(userModel);
    }

    @GetMapping("/get-user/{id}")
    public ResponseEntity<Object> getUserById(@PathVariable(value = "id") String userId)
    {
        return  ResponseEntity.ok().body(userService.getUserFromId(userId));
    }

    @PutMapping("/change-contact-info/{id}")
    public ResponseEntity <Object> changeContactInfo(@PathVariable(value = "id") String userId,  @RequestBody UserModel userDetails) {

        return  ResponseEntity.ok().body(userService.changeContactIfo(userId, userDetails));
    }
    @PutMapping("/change-broadband/{id}")
    public ResponseEntity <Object> changeBroadbandPassword(@PathVariable(value = "id") String userId,  @RequestBody UserModel userDetails) {

        return  ResponseEntity.ok().body(userService.changeBroadbandPassword(userId, userDetails));
    }

}
