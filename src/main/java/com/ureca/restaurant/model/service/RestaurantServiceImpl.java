package com.ureca.restaurant.model.service;

import com.ureca.restaurant.dto.Restaurant;
import com.ureca.restaurant.model.dao.RestaurantDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {
    @Autowired
    RestaurantDAO dao;

    @Override
    public int add(Restaurant restaurant) throws SQLException {
        return dao.insert(restaurant);
    }

    @Override
    public int edit(Restaurant restaurant) throws SQLException {
        return dao.update(restaurant);
    }

    @Override
    public int remove(int id) throws SQLException {
        return dao.delete(id);
    }

    @Override
    public Restaurant read(int id) throws SQLException {
        return dao.select(id);
    }

    @Override
    public List<Restaurant> readAll() throws SQLException {
        return dao.selectAll();
    }

    @Override
    public int thumbsUp(int id) throws SQLException {
        return dao.thumbsUp(id);
    }
}
