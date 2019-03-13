package com.howtodoinjava.demo.dao;


import com.howtodoinjava.demo.coffee.CoffeeBeans;
import com.howtodoinjava.demo.coffee.CoffeeRoasts;
import com.howtodoinjava.demo.model.Coffee;
import org.springframework.stereotype.Repository;



@Repository
public class CoffeeDAOImpl implements CoffeeDAO {
    Coffee m = new Coffee();


    public void setName(String name) {
        m.setName(name);
    }

    public void setWater(int water) {
        m.setWater(water);
    }

    public void setBeans(Enum<CoffeeBeans> beans) {
        m.setBeans(beans);
    }

    public void setRoast(Enum<CoffeeRoasts> roast) {
        m.setRoast(roast);
    }

    public void setPrice(double price) {
        m.setPrice(price);
    }

    public int getWater() {

        return  m.getWater();
    }

    public Enum<CoffeeBeans> getBeans() {

        return m.getBeans();
    }

    public Enum<CoffeeRoasts> getRoasts() {

        return m.getRoast();
    }

    public double getPrice() {

        return m.getPrice();
    }
    public String getName(){
        return  m.getName();
    }

}
