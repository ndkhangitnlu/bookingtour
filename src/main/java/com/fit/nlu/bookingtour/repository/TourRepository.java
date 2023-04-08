package com.fit.nlu.bookingtour.repository;

import com.fit.nlu.bookingtour.entity.Tour;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface TourRepository extends CrudRepository<Tour, Long> {
}
