package com.uee.uee_slt_app.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.uee.uee_slt_app.models.DataAddOnsModel;
import com.uee.uee_slt_app.services.DataAddOnsService;


@CrossOrigin("*")
@RestController
public class DataAddOnsController {

	@Autowired
	private DataAddOnsService dataAddOnsService;
	
	@PostMapping("/add-data-add-ons")
	public ResponseEntity<DataAddOnsModel> saveDataAddOns(@RequestBody DataAddOnsModel dataAddOnsModel) {
		dataAddOnsService.addDataAddOns(dataAddOnsModel);			
		return ResponseEntity.ok().body(dataAddOnsModel);
	}
	
	@GetMapping("/get-all-data-add-ons")
	public List<DataAddOnsModel> getDataAddOns(){
		return dataAddOnsService.getDataAddOns();
	}
}
