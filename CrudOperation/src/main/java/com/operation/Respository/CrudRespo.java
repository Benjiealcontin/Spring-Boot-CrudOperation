package com.operation.Respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.operation.Model.CrudModel;

@Repository
public interface CrudRespo extends JpaRepository<CrudModel, Integer> {
	
	CrudModel findByid(int id);

}
