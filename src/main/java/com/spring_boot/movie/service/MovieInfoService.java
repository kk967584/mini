package com.spring_boot.movie.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.movie.dao.IMovieInfoDAO;
import com.spring_boot.movie.model.MovieInfoVO;

@Service
public class MovieInfoService implements IMovieInfoService {
	
	@Autowired
	@Qualifier("IMovieInfoDAO")
	private IMovieInfoDAO dao;
	
	@Override
	public ArrayList<MovieInfoVO> listMovieInfo() {
		// TODO Auto-generated method stub
		return dao.listMovieInfo();
	}

	public MovieInfoVO detailViewMovie(String movieNo) {
		// TODO Auto-generated method stub
		return dao.detailViewMovie(movieNo);
	}
	
	@Override
	public ArrayList<MovieInfoVO> movieSearch(String movieTitle) {
		// TODO Auto-generated method stub
		return dao.movieSearch(movieTitle);
	}

}
