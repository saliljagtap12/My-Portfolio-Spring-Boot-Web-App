package com.saliljagtap.demo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	
	@RequestMapping("home")
	public String home() {
//		System.out.println("Hii");
		return "home.jsp";
	}

}
