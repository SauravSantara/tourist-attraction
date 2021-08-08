package com.niit.touristattraction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	// Home Page
	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView home() {
		
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		
		return mv;
	}

	// About us Page
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "About us");
		mv.addObject("userClickAbout", true);
		
		return mv;
	}

	// Contact us Page
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Contact us");
		mv.addObject("userClickContact", true);
		
		return mv;
	}
}
