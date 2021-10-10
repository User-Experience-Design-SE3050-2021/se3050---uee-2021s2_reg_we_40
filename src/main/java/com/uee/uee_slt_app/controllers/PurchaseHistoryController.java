package com.uee.uee_slt_app.controllers;

import com.uee.uee_slt_app.models.PurchaseHistoryModel;
import com.uee.uee_slt_app.services.PurchaseHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@CrossOrigin("*")
@RestController
public class PurchaseHistoryController {

    @Autowired
    private PurchaseHistoryService purchaseHistoryService;

    @GetMapping("/get-purchase-history")
    public ResponseEntity<Object> getHistory(){
        List<PurchaseHistoryModel> purchaseHistoryList = purchaseHistoryService.getPurchaseHistory();

        return ResponseEntity.ok().body(purchaseHistoryList);
    }

    @PostMapping("/add-history")
    public  PurchaseHistoryModel savePurchaseHistory(@RequestBody PurchaseHistoryModel purchaseHistoryModel){
        return purchaseHistoryService.savePurchaseHistory(purchaseHistoryModel);
    }

    @GetMapping("/get-history-between-date")
    public ResponseEntity<Object> getPurchaseHistoryBetweenDateRange(@RequestParam (name = "startingDate")String startDate,@RequestParam(name = "endingDate")String endDate) throws ParseException {
        List<PurchaseHistoryModel> purchaseHistoryListBetweenDate = purchaseHistoryService.getPurchaseHistoryByDateRange(startDate,endDate);
        return ResponseEntity.ok().body(purchaseHistoryListBetweenDate);
    }

}
