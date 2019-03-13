package com.howtodoinjava.demo.model;

import com.howtodoinjava.demo.coffee.CoffeeBeans;
import com.howtodoinjava.demo.coffee.CoffeeRoasts;

public class Coffee {
    private String name;
    private   int water;
    private  Enum<CoffeeBeans> beans = CoffeeBeans.ARABICA;
    private  Enum<CoffeeRoasts> roast = CoffeeRoasts.LIGHT;
    private  double price;

    public Coffee() {
    }


    public Coffee(String name,int water, double price, Enum<CoffeeBeans> beans, Enum<CoffeeRoasts> roast) {
        this.name = name;
        this.water = water;
        this.price = price;
        this.beans = beans;
        this.roast = roast;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setWater(int water) {
        this.water = water;
    }

    public  int getWater() {
        return water;
    }

    public  Enum<CoffeeBeans> getBeans() {
        return beans;
    }

    public  void setBeans(Enum<CoffeeBeans> beans) {
        this.beans = beans;
    }

    public  Enum<CoffeeRoasts> getRoast() {
        return roast;
    }

    public  void setRoast(Enum<CoffeeRoasts> roast) {
        this.roast = roast;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Coffee{" +
                "water=" + water +
                ", beans=" + beans +
                ", roast=" + roast +
                ", price=" + price +
                '}';
    }
}
