package com.howtodoinjava.demo.service;

import com.howtodoinjava.demo.coffee.CoffeeBeans;
import com.howtodoinjava.demo.coffee.CoffeeRoasts;
import com.howtodoinjava.demo.dao.CoffeeDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CoffeeServiceImpl implements CoffeeService {
    @Autowired
    CoffeeDAO dao;


    public String getName() {
        return dao.getName();
    }

    public int getWater(){

     return  dao.getWater();

    }
    public Enum<CoffeeBeans> getBeans(){return  dao.getBeans();}
    public Enum<CoffeeRoasts> getRoasts(){return  dao.getRoasts();}
    public double getPrice(){return  dao.getPrice();}

    public void setName(String name) {
        dao.setName(name);
    }

    public void setWater(int water) {
        if (water<30){
            dao.setWater(50);
        }else {
            dao.setWater(water);
        }
    }

    public void setBeans(Enum<CoffeeBeans> beans) {
        dao.setBeans(beans);
    }

    public void setRoast(Enum<CoffeeRoasts> roast) {
        dao.setRoast(roast);
    }

    public void setPrice(double price) {
        dao.setPrice(price);

    }


}
