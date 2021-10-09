package com.uee.uee_slt_app.services;

import com.uee.uee_slt_app.models.PromotionModel;
import com.uee.uee_slt_app.repositories.PromotionRepostotory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PromotionService {

    @Autowired
    private PromotionRepostotory promotionRepostotory;


    public List<PromotionModel> getAllPromotions(){
        return promotionRepostotory.findAll();
    }

    public PromotionModel savePromotion(PromotionModel promotionModel){
        return promotionRepostotory.save(promotionModel);
    }
}
