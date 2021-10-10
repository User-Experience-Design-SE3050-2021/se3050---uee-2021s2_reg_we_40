package com.uee.uee_slt_app.repositories;

import com.uee.uee_slt_app.models.DetailOfDataModel;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface DetailOfDataRepository extends MongoRepository<DetailOfDataModel,String> {

}
