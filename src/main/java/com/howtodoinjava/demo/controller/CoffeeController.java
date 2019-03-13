package com.howtodoinjava.demo.controller;

import com.howtodoinjava.demo.coffee.CoffeeBeans;
import com.howtodoinjava.demo.coffee.CoffeeRoasts;
import com.howtodoinjava.demo.model.Coffee;
import com.howtodoinjava.demo.service.CoffeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.LinkedList;

@Controller
@RequestMapping("/")
public class CoffeeController {
    @Autowired
    CoffeeServiceImpl coffee;

ArrayList<Coffee> list = new ArrayList<Coffee>();
    LinkedList<String> listTest = new LinkedList<String>();

    @RequestMapping(value = "/selectcoffee", method = RequestMethod.GET)
    public String getAllCoffees(Model model)
    {
        model.addAttribute("selectcoffee");
        return "addNewCoffee";
    }
    @RequestMapping(value = "/selectcoffee2", method = RequestMethod.GET)
    public String getAllCoffees2(Model model)
    {
        model.addAttribute("selectcoffee2");
        return "showCart";
    }




    @RequestMapping(value = "/addnewcoffee", method = RequestMethod.GET)
    public String addNewCoffee(Model model)
    {
        model.addAttribute("newcoffee");
        return "addNewCoffee";
    }
    @RequestMapping(value = "/procesForm", method = RequestMethod.GET)
    public String procesFormVersionTwo(@RequestParam("name") String name,
                                       @RequestParam("water") int water,
                                       @RequestParam("price") double price,
                                       @RequestParam("beans") CoffeeBeans beans,
                                       @RequestParam("roast") CoffeeRoasts roasts
                                       ) {



        coffee.setName(name);
        coffee.setWater(water);
        coffee.setBeans(beans);
        coffee.setRoast(roasts);
        coffee.setPrice(price);
        list.add(new Coffee(coffee.getName(),coffee.getWater(),coffee.getPrice(),coffee.getBeans(),coffee.getRoasts()));

        System.out.println(listTest);
        return "addNewCoffee";
    }
    @RequestMapping(value = "/display", method = RequestMethod.GET)
    public ModelAndView getdata() {



        ModelAndView model = new ModelAndView("showCart");

        model.addObject("lists", list);

        return model;

    }
    @RequestMapping(value = "/showcoffee", method = RequestMethod.GET)
    public ModelAndView getdata2(Model model) {


        ModelAndView modelAndView = new ModelAndView("showCoffee");
        modelAndView.addObject("lists", list);
        model.addAttribute("showcoffee");
        return modelAndView;

    }


}
