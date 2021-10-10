package com.uee.uee_slt_app.services;

import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import com.uee.uee_slt_app.repositories.PurchaseHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class PurchaseHistoryService {
    @Autowired
    private PurchaseHistoryRepository purchaseHistoryRepository;

    public List<PurchaseHistoryModel> getPurchaseHistory(){
        return purchaseHistoryRepository.findAll();
    }
    public PurchaseHistoryModel savePurchaseHistory(PurchaseHistoryModel purchaseHistoryModel){
        return  purchaseHistoryRepository.save(purchaseHistoryModel);
    }

    public List<PurchaseHistoryModel> getPurchaseHistoryByDateRange(String startingDate, String endingDate) throws ParseException {
        Date startDate = new SimpleDateFormat("yyyy-MM-dd").parse(startingDate);
        Date endDate = new SimpleDateFormat("yyyy-MM-dd").parse(endingDate);
        return purchaseHistoryRepository.findByDateBetween(startDate,endDate);

    }


}
