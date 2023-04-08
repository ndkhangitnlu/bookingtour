package com.fit.nlu.bookingtour.repository;

import com.fit.nlu.bookingtour.entity.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface CustomerRepository extends CrudRepository<Customer, Long> {
    @Query(value = "SELECT * FROM customer WHERE customer_id = LAST_INSERT_ID()", nativeQuery = true)
    Customer getLastInsertCustomer();
}
