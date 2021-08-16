package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.MODEL.Moved2;

public interface TrainMove2Reponsitory extends JpaRepository<Moved2, Long> {
	@Query(value = "SELECT TOP 1 * FROM MOVED2 ORDER BY ID_MOVED desc", nativeQuery = true)
	public List<Moved2> getListMove2();
}
