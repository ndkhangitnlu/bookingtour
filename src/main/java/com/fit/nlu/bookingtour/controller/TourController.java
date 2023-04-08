package com.fit.nlu.bookingtour.controller;

import com.fit.nlu.bookingtour.entity.Customer;
import com.fit.nlu.bookingtour.entity.CustomerBookingMapper;
import com.fit.nlu.bookingtour.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/tour")
public class TourController {
    @Autowired
    TourService tourService;

    @GetMapping(value = "/list")
    public String listTour(Model model) {
        model.addAttribute("tours", tourService.getAllTours());
        return "listTours";
    }
    @GetMapping(value = "/booking")
    public String bookingTour(Model model, @RequestParam long tourId, ModelMap modelMap) {
        CustomerBookingMapper customerBookingMapper = new CustomerBookingMapper();
        modelMap.addAttribute("customerBookingMapper", customerBookingMapper);
        model.addAttribute("tour", tourService.getTour(tourId).get());
        return "bookingTour";
    }

    @PostMapping(value = "/{tourId}/send-booking")
    public String bookTour(ModelMap modelMap,@ModelAttribute("customerBookingMapper") CustomerBookingMapper customerBookingMapper,
                           @PathVariable long tourId){
        tourService.saveCustomer(customerBookingMapper.getCustomer());
        Customer customer = tourService.getLastInsertCustomer();
        customerBookingMapper.getBooking().setCustomer(customer);
        customerBookingMapper.getBooking().setTour(tourService.getTour(tourId).get());
        tourService.saveBooking(customerBookingMapper.getBooking());
        modelMap.addAttribute("customerBookingMapper", customerBookingMapper);
        return "confirm";
    }
}
