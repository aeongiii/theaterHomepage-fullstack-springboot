package com.mysite.Movie.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Movie {
    private Integer id;
    private String movieName;
    private String movieCode;
    private String movieProducer;
    private String movieGenre;
    private Integer movieRunningTime;
    private Integer movieAge;
    private String movieDescription;
    private String movieImage;
    private Integer movieYear;
    private Integer movieShowing;
}
