package com.uee.uee_slt_app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uee.uee_slt_app.models.ExtraGB;
import com.uee.uee_slt_app.repositories.ExtraGBRepository;

@Service
public class ExtraGBService {
	
	@Autowired
	private ExtraGBRepository extraGBRepository;
	
	public String addGB( ExtraGB extraGB) {
		extraGBRepository.save(extraGB);
		return ("added");
	}

}
