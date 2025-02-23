
package com.mycompany.lab04.controller;


@RestController
public class GreetingController {

    @GetMapping("/greeting")
    public static String greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
        return "Hola " + name;
    }
    
    @GetMapping("/pi")
    public static String pi(@RequestParam(value = "name", defaultValue = "val") String name) {
        return Double.toString(Math.PI);
    }
    
    
}