package com.ureca.restaurant.controller;

import com.ureca.restaurant.dto.Restaurant;
import com.ureca.restaurant.model.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/guest")
public class GuestController {
    @Autowired
    RestaurantService service;

    @GetMapping("/list")
    public String list(Model model) {
        try {
            List<Restaurant> list = service.readAll();
            list.forEach(item -> item.setTasteTags(
                item.getTaste().split(",")
            ));
            model.addAttribute("list", list);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "list";
    }
}