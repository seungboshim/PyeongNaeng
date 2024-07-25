package com.ureca.restaurant.model.service;

import com.ureca.restaurant.dto.Restaurant;

import java.sql.SQLException;
import java.util.List;

public interface RestaurantService {
    public int add(Restaurant restaurant) throws SQLException;
    public int edit(Restaurant restaurant) throws SQLException;
    public int remove(int id) throws SQLException;
    public Restaurant read(int id) throws SQLException;
    public List<Restaurant> readAll() throws SQLException;
    public int thumbsUp(int id) throws SQLException;
}
