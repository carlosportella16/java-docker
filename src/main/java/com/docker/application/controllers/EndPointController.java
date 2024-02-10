package com.docker.application.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class EndPointController {

    @GetMapping("/check")
    public String checkStatus() {
        return "Application is running!";
    }

    @GetMapping("/users")
    public List<String> getUsers() {
        return Arrays.asList("User 1", "User 2", "User 3");
    }
}
