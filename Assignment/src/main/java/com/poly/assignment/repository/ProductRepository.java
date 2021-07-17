package com.poly.assignment.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.assignment.domain.Product;
import com.poly.assignment.domain.Report;
@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{
	Page<Product> findByNameContaining(String name, Pageable pageable);
	
	@Query(value = "SELECT new Report(o.category,sum(o.unitPrice),count(o))" + " FROM Product o" + " GROUP BY o.category"
            + " ORDER BY sum(o.unitPrice) DESC")
	List<Report> getInventoryByCategory();
}
