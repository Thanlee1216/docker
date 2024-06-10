package com.example.docker.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {

    @GetMapping(value = "/healthCheck")
    public ResponseEntity<String> healthCheck(HttpServletRequest req, HttpStatus httpStatus){
        return new ResponseEntity<>("OK", httpStatus.OK);
    }
}
