package com.ureca.restaurant.controller;

import com.ureca.restaurant.dto.Restaurant;
import com.ureca.restaurant.model.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
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

        return "adminList";
    }

    @GetMapping("/edit")
    public String edit(@RequestParam("id") int id, Model model) {
        try {
            Restaurant restaurant = service.read(id);
            model.addAttribute("restaurant", restaurant);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "edit";
    }

    @PostMapping("/edit")
    public String modify(Restaurant restaurant) {
        try {
            service.edit(restaurant);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:list";
    }

    @GetMapping("/remove")
    public String remove(@RequestParam("id") int id) {
        try {
            System.out.println("id = " + id);
            service.remove(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:list";
    }

    @GetMapping("/form")
    public String form() {
        return "form";
    }

    @PostMapping("/form")
    public String add(Restaurant restaurant, Model model) {
        try {
            service.add(restaurant);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:list";
    }
}
