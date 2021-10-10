package com.uee.uee_slt_app.repositories;

import com.uee.uee_slt_app.models.UserModel;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends MongoRepository <UserModel,String>{


}
