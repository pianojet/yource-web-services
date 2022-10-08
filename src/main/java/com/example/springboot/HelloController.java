package com.example.springboot;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	/**
	 * @return
	 */
	@GetMapping("/")
	public String index() {
		int _t = 4;
		int _r = 14;
		return String.format("Greetings to Yource Web Services! %s", _r);
		// return "Greetings to Yource Web Services!";
	}
}
