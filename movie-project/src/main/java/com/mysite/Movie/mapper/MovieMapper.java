package com.mysite.Movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.mysite.Movie.model.Movie;

@Mapper
public interface MovieMapper {
	
	// 영화 목록 전체 출력
    List<Movie> findAll();

    // 새로운 영화 등록
    @Insert("INSERT INTO movie (movieName, movieCode, movieProducer, movieGenre, movieRunningTime, movieAge, movieDescription, movieImage, movieYear, movieShowing) " +
            "VALUES (#{movieName}, #{movieCode}, #{movieProducer}, #{movieGenre}, #{movieRunningTime}, #{movieAge}, #{movieDescription}, #{movieImage}, #{movieYear}, #{movieShowing})")
    void addMovie(Movie movie);
}