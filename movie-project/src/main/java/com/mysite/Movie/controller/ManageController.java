package com.mysite.Movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageController {

	@GetMapping("/movieList")
    public String movieList(Model model) {
        return "movieList";
    }
}
