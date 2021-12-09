package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com")
public class P052Application {

	public static void main(String[] args) {
		SpringApplication.run(P052Application.class, args);
	}

}
