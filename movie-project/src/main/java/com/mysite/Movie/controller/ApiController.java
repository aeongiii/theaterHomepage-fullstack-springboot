package com.mysite.Movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.mysite.Movie.model.Movie;
import com.mysite.Movie.service.MovieService;

@RestController
public class ApiController {

    private final MovieService movieService;

    @Autowired
    public ApiController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/api/movie")
    public List<Movie> getAllMovies() {
    	// 영화 목록 데이터를 JSON 형태로 반환
        return movieService.getAllMovies();
    }
    
    @PostMapping("/api/movie")
    public ResponseEntity<?> addMovie(@RequestBody Movie newMovie) {
        movieService.addMovie(newMovie);
        return ResponseEntity.ok().build();
    }

}