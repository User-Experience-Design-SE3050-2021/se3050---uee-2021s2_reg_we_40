package com.uee.uee_slt_app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.uee.uee_slt_app.models.ExtraGB;
import com.uee.uee_slt_app.services.ExtraGBService;

@RestController
public class ExtraGBController {
	
	@Autowired 
	private  ExtraGBService extraGBService;
	
	@PostMapping("/add-gb")
	public String addGb(@RequestBody ExtraGB extraGB) {
		return extraGBService.addGB(extraGB);
	}

}
