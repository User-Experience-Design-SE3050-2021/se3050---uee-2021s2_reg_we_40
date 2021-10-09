package com.uee.uee_slt_app.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uee.uee_slt_app.models.DataAddOnsModel;
import com.uee.uee_slt_app.repositories.DataAddOnsRepository;

@Service
public class DataAddOnsService {

	@Autowired
	private DataAddOnsRepository dataAddOnsRepository;
	
	public DataAddOnsModel addDataAddOns(DataAddOnsModel dataAddOnsModel) {
		dataAddOnsRepository.save(dataAddOnsModel);
		return dataAddOnsModel;
	}
	
	public List<DataAddOnsModel> getDataAddOns (){	
		List<DataAddOnsModel> dataAddOnList = dataAddOnsRepository.findAll();
		System.out.println(dataAddOnList);
		return  dataAddOnList;
	}
}
