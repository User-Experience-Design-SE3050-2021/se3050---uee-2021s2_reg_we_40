package com.uee.uee_slt_app.controllers;

import com.uee.uee_slt_app.models.PromotionModel;
import com.uee.uee_slt_app.services.PromotionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class PromotionController {

    @Autowired
    private PromotionService promotionService;

    @GetMapping("/get-all-promotions")
    public ResponseEntity<Object> getAllPromotions(){
        List<PromotionModel> promotionList = promotionService.getAllPromotions();

        return  ResponseEntity.ok().body(promotionList);
    }

    @PostMapping("/add-promotions")
    public PromotionModel savePromotion(@RequestBody PromotionModel promotionModel){
        return promotionService.savePromotion(promotionModel);
    }
}
