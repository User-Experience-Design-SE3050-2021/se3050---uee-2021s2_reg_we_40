package com.uee.uee_slt_app.repositories;

import com.uee.uee_slt_app.models.PromotionModel;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionRepostotory extends MongoRepository <PromotionModel, String>{

}
