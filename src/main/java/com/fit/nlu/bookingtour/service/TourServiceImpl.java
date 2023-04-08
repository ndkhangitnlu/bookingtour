package com.fit.nlu.bookingtour.service;

import com.fit.nlu.bookingtour.entity.Booking;
import com.fit.nlu.bookingtour.entity.Customer;
import com.fit.nlu.bookingtour.entity.Tour;
import com.fit.nlu.bookingtour.repository.BookingRepository;
import com.fit.nlu.bookingtour.repository.CustomerRepository;
import com.fit.nlu.bookingtour.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service("tourServiceImpl")
public class TourServiceImpl implements TourService{
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private BookingRepository bookingRepository;
    @Override
    public List<Tour> getAllTours() {
        return (List<Tour>) tourRepository.findAll();
    }

    @Override
    public Optional<Tour> getTour(long id) {
        return tourRepository.findById(id);
    }

    @Override
    public void saveCustomer(Customer customer) {
         customerRepository.save(customer);
    }

    @Override
    public void saveBooking(Booking booking) {
        bookingRepository.save(booking);
    }

    @Override
    public Customer getLastInsertCustomer() {
        return customerRepository.getLastInsertCustomer();
    }
}
