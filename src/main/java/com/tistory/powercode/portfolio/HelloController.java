package com.tistory.powercode.portfolio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class HelloController {
    @Autowired
    private HelloService service;

    @RequestMapping("/helloMybatis")
    String hello(@RequestParam Map param, Model model){
        String result = service.hello(param);
        model.addAttribute("result", result);
        return "index";
    }
}