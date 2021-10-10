package com.uee.uee_slt_app.services;

import com.uee.uee_slt_app.models.DataUsageModel;
import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import com.uee.uee_slt_app.repositories.DataUsageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class DataUsageService {

    @Autowired
    private DataUsageRepository dataUsageRepository;


    public DataUsageModel saveDataUsage(DataUsageModel dataUsageModel){
        return dataUsageRepository.save(dataUsageModel);
    }

    public List<DataUsageModel> getDataUsageByDateRange(String startingDate, String endingDate) throws ParseException {
        Date startDate = new SimpleDateFormat("yyyy-MM-dd").parse(startingDate);
        Date endDate = new SimpleDateFormat("yyyy-MM-dd").parse(endingDate);
        return dataUsageRepository.findByDateBetween(startDate,endDate);
    }



}
