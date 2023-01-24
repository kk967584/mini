package com.spring_boot.movie.dao;

import java.util.ArrayList;


import com.spring_boot.movie.model.MovieInfoVO;

public interface IMovieInfoDAO {
	public ArrayList<MovieInfoVO> listMovieInfo();
	public MovieInfoVO detailViewMovie(String movieNo);
	public ArrayList<MovieInfoVO> movieSearch(String movieTitle);
}
