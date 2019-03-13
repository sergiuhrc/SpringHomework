package com.howtodoinjava.demo.dao;

import com.howtodoinjava.demo.coffee.CoffeeBeans;
import com.howtodoinjava.demo.coffee.CoffeeRoasts;


public interface CoffeeDAO
{

     void setName(String name);
     void setWater(int water);
     void setBeans(Enum<CoffeeBeans> beans);
     void setRoast(Enum<CoffeeRoasts> roast);
     void setPrice(double price);
     String getName();
     int getWater();
     Enum<CoffeeBeans> getBeans();
     Enum<CoffeeRoasts> getRoasts();
     double getPrice();



}
