package com.service;

import java.util.ArrayList;

import com.bean.Ramen;
import com.dal.RamenDAO;

public class RamenService {

	private RamenDAO dao = new RamenDAO();
	
	public int insert(Ramen obj) {
		return dao.insert(obj);
	}
	
	public int update(Ramen obj) {
		return dao.update(obj);
	}
	
	public ArrayList<Ramen> getAll() {
		return dao.getAll();
	}
	
	public ArrayList<Ramen> getAllByBroth(String broth) {
		return dao.getAllByRamenBroth(broth);
	}
	
	public ArrayList<Ramen> getAllByRating(int Rating) {
		return dao.getAllByRamenRating(Rating);
	}
	
	public Ramen getById(int id) {
		return dao.getById(id);
	}
	
}
