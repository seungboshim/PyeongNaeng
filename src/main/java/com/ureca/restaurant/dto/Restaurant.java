package com.ureca.restaurant.dto;

public class Restaurant {
    private int id;
    private String name;
    private String address;
    private int thumbs;
    private String taste;
    private int price;

    public Restaurant() {
    }

    public Restaurant(int id, String name, String address, int thumbs, String taste, int price) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.thumbs = thumbs;
        this.taste = taste;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getThumbs() {
        return thumbs;
    }

    public void setThumbs(int thumbs) {
        this.thumbs = thumbs;
    }

    public String getTaste() {
        return taste;
    }

    public void setTaste(String taste) {
        this.taste = taste;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Restaurant{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", thumbs=" + thumbs +
                ", taste='" + taste + '\'' +
                ", price=" + price +
                '}';
    }
}
