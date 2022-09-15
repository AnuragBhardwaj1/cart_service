package com.example.cart_service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@SpringBootApplication
@RestController
public class CartServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CartServiceApplication.class, args);
	}

	@PostMapping("/cart")
	public void createCart(@RequestBody CreateCartRequestBody createCartRequestBody,  HttpServletResponse response) {
		response.setStatus(HttpServletResponse.SC_ACCEPTED);
	}

}
