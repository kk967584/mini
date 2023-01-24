package com.spring_boot.movie.service;

import java.util.ArrayList;

import com.spring_boot.movie.model.MovieInfoVO;

public interface IMovieInfoService {
	public ArrayList<MovieInfoVO> listMovieInfo();
	public MovieInfoVO detailViewMovie(String movieNo);	//영화 상세 조회
	public ArrayList<MovieInfoVO> movieSearch(String movieTitle);
}
