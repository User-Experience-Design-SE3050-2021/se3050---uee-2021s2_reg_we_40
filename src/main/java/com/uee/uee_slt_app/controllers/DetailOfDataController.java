package com.uee.uee_slt_app.controllers;

import com.uee.uee_slt_app.models.DetailOfDataModel;
import com.uee.uee_slt_app.models.PromotionModel;
import com.uee.uee_slt_app.services.DetailOfDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class DetailOfDataController {
    @Autowired
    private DetailOfDataService detailOfDataService;

    @GetMapping("/get-all-detail-of-data")
    public ResponseEntity<Object> getAllDetailOfData(){
        List<DetailOfDataModel> detailDataList = detailOfDataService.getAllDetailOfData();

        return  ResponseEntity.ok().body(detailDataList);
    }

    @PostMapping("/add-detail-data")
    public DetailOfDataModel saveDetailData(@RequestBody DetailOfDataModel detailOfDataModel){
        return detailOfDataService.saveDetailOfData(detailOfDataModel);
    }

}
