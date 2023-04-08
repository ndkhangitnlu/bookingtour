package com.fit.nlu.bookingtour.service;

import com.fit.nlu.bookingtour.entity.Booking;
import com.fit.nlu.bookingtour.entity.Customer;
import com.fit.nlu.bookingtour.entity.Tour;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
@Service("tourService")
public interface TourService {
    @Transactional
    List<Tour> getAllTours();
    @Transactional
    Optional<Tour> getTour(long id);
    @Transactional
    void saveCustomer(Customer customer);
    @Transactional
    void saveBooking(Booking booking);
    @Transactional
    Customer getLastInsertCustomer();
}
