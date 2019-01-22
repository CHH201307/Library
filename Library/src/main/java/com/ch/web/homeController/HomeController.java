package com.ch.web.homeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public ModelAndView home(){
		ModelAndView mv = new ModelAndView("home/index");
		
		return mv;
	}
	
	@RequestMapping("/home2")
	public ModelAndView home2(){
		ModelAndView mv = new ModelAndView("user/list");
		
		return mv;
	}
	
	@RequestMapping("/home3")
	public ModelAndView home3(){
		ModelAndView mv = new ModelAndView("tree/index");
		
		return mv;
	}
}
