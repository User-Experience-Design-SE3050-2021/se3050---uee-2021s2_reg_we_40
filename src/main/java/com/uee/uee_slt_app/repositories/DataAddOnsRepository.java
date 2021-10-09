package com.uee.uee_slt_app.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.uee.uee_slt_app.models.DataAddOnsModel;

@Repository
public interface DataAddOnsRepository extends MongoRepository<DataAddOnsModel, String> {

}
