package it.contrader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.SpringApplication;

import it.contrader.services.*;

@SpringBootApplication
public class SpringWebApplication {
	@Autowired
	static UserService userService;

	public static void main(String[] args) {
		SpringApplication.run(SpringWebApplication.class, args);
	}
}
