package com.fit.nlu.bookingtour.repository;

import com.fit.nlu.bookingtour.entity.Booking;
import com.fit.nlu.bookingtour.entity.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends CrudRepository<Booking, Long> {
}
