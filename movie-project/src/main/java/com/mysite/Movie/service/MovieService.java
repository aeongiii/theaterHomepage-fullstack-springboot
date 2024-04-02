package com.mysite.Movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.Movie.mapper.MovieMapper;
import com.mysite.Movie.model.Movie;

@Service
public class MovieService {
	private final MovieMapper movieMapper;
	
	@Autowired
    public MovieService(MovieMapper movieMapper) {
        this.movieMapper = movieMapper;
    }
	
	// 전체 movie 목록 출력
	public List<Movie> getAllMovies() {
        return movieMapper.findAll();
    }
	
	// 새로운 영화 등록
	public void addMovie(Movie movie) {
        movieMapper.addMovie(movie);
    }
}
