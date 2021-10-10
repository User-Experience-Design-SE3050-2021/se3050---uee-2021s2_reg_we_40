package com.uee.uee_slt_app.repositories;

import com.uee.uee_slt_app.models.DataUsageModel;
import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface DataUsageRepository extends MongoRepository<DataUsageModel,String> {
    public List<DataUsageModel> findByDateBetween(Date from, Date to);
}
