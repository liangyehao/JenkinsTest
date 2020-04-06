package com.liang.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author liangyehao
 * @version 1.0
 * @date 2020/4/5 22:37
 * @content
 */
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){
        return "hello jenkins ci! ";
    }
}
