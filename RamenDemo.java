package com.demo;

import java.util.ArrayList;

import com.bean.Ramen;
import com.dal.RamenDAO;

public class RamenDemo {

	private static RamenDAO dao = new RamenDAO();
	
	public static void main(String[] args) {
		
		System.out.println("Displaying all Ramen bowls:");
		ArrayList<Ramen> ramens = dao.getAll();
		displayRamen(ramens);
		
		System.out.println("\nDisplaying by Ramen Broth");
		ArrayList<Ramen> ramenBroth = dao.getAllByRamenBroth("Tonkotsu Ramen");
		displayRamen(ramenBroth);
		
		System.out.println("\nDisplayinbg by Ramen rating");
		ArrayList<Ramen> ramenRating = dao.getAllByRamenRating(6);
		displayRamen(ramenRating);
		
		System.out.println("\nGetting your first bowl of Ramen....");
		Ramen ramen = dao.getById(4);
		System.out.println("\t"+ramen);
		
//		Ramen ramen2 = new Ramen();
//		ramen2.setRamen_Id(dao.getAll().size() - 1);
//		ramen2.setShop_Name("Nori no");
//		ramen2.setCity("Hiroshima");
//		ramen2.setBroth("Tsukemen Ramen");
//		ramen2.setRating(10);
//		
//		System.out.println("\nAdding your bowl of Ramen....");
////		dao.insert(ramen2);
//		System.out.println("Records added: " + dao.insert(ramen2));
//		System.out.println("Inserted: " + ramen2);
	}

	private static void displayRamen (ArrayList<Ramen> ramens) {
		for (Ramen ramen : ramens) {
			System.out.println("\t"+ramen);
		}
	}
}
