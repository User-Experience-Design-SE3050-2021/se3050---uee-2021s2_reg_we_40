package com.uee.uee_slt_app.controllers;

import com.uee.uee_slt_app.models.DataUsageModel;
import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import com.uee.uee_slt_app.services.DataUsageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.List;

@CrossOrigin("*")
@RestController
public class DataUsageController {
    @Autowired
    private DataUsageService dataUsageService;

    @PostMapping("/add-data-usage")
    public DataUsageModel saveDataUsage(@RequestBody DataUsageModel dataUsageModel){
        return dataUsageService.saveDataUsage(dataUsageModel);
    }
    @GetMapping("/get-data-between-date")
    public ResponseEntity<Object> getDataBetweenDateRange(@RequestParam(name = "startingDate")String startDate, @RequestParam(name = "endingDate")String endDate) throws ParseException {
        List<DataUsageModel> dataListBetweenDate = dataUsageService.getDataUsageByDateRange(startDate,endDate);
        return ResponseEntity.ok().body(dataListBetweenDate);
    }



}
