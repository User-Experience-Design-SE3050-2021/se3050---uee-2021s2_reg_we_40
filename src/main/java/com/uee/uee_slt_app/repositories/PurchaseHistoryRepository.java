package com.uee.uee_slt_app.repositories;

import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface PurchaseHistoryRepository extends MongoRepository<PurchaseHistoryModel,String> {

    public List<PurchaseHistoryModel> findByDateBetween(Date from, Date to);
}
