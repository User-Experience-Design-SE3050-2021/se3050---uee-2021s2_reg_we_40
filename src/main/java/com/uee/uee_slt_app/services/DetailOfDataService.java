package com.uee.uee_slt_app.services;

import com.uee.uee_slt_app.models.DataUsageModel;
import com.uee.uee_slt_app.models.DetailOfDataModel;
import com.uee.uee_slt_app.models.PromotionModel;
import com.uee.uee_slt_app.repositories.DetailOfDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailOfDataService {

    @Autowired
    private DetailOfDataRepository detailOfDataRepository;

    public List<DetailOfDataModel> getAllDetailOfData(){
        return detailOfDataRepository.findAll();
    }

    public DetailOfDataModel saveDetailOfData(DetailOfDataModel detailOfDataModel){
        return detailOfDataRepository.save(detailOfDataModel);
    }



}
