package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.MODEL.Moved;

public interface TrainMoveReponsitory extends JpaRepository<Moved, Long> {
	@Query(value = "SELECT TOP 1 * FROM MOVED ORDER BY ID_MOVED desc", nativeQuery = true)
	public List<Moved> getListMove();
}
