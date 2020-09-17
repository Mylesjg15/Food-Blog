package com.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bean.Ramen;
import com.utilities.DbCon;

public class RamenDAO {

	private static String table = "MG1871150_RAMEN";
	
	public ArrayList<Ramen> getAll() {
		
		Connection con = DbCon.getConnection();
		ArrayList<Ramen> ramens = new ArrayList<Ramen>();
		
		try {
			
			Statement st = con.createStatement();
			String qry = "select * from " + table;
			
			ResultSet rs = st.executeQuery(qry);
			
			while (rs.next()) {
				
				Ramen ramen = new Ramen();
				
				ramen.setRamen_Id(rs.getInt(1));
				ramen.setShop_Name(rs.getString(2));
				ramen.setCity(rs.getString(3));
				ramen.setBroth(rs.getString(4));
				ramen.setRating(rs.getInt(5));

				ramens.add(ramen);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DbCon.closeConnection();
		}
		return ramens;
	}
	
	public Ramen getById(int id) {
		
		Connection con = DbCon.getConnection();
		Ramen ramen = new Ramen();
		
		try {
			
			String qry = "select * from " + table + " where Ramen_ID=?";
			PreparedStatement st = con.prepareStatement(qry);
			st.setInt(1, id);
			
			ResultSet rs = st.executeQuery();
			
			while (rs.next()) {
				ramen.setRamen_Id(rs.getInt(1));
				ramen.setShop_Name(rs.getString(2));
				ramen.setCity(rs.getString(3));
				ramen.setBroth(rs.getString(4));
				ramen.setRating(rs.getInt(5));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DbCon.closeConnection();
		}
		
		return ramen;
	}
	
	public int insert(Ramen obj) {
		
		int code = 0;
		
		Connection con = DbCon.getConnection();
		
		try {
			
			String qry = "insert into " + table + " (Shop_Name, City, Broth, Rating) values (?, ?, ?, ?)";
			PreparedStatement st = con.prepareStatement(qry);
			
			st.setString(1, obj.getShop_Name());
			st.setString(2, obj.getCity());
			st.setString(3, obj.getBroth());
			st.setInt(4, obj.getRating());
			
			code = st.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			DbCon.closeConnection();
		}
		
		return code;
	}
	
	public int update(Ramen obj) {
		int code = 0;

		Connection con = DbCon.getConnection();

		try {

			String qry = "update " + table + " set Shop_Name=?, City=?, Broth=?, Rating=? where Ramen_ID=?";
			PreparedStatement st = con.prepareStatement(qry);

			st.setString(1, obj.getShop_Name());
			st.setString(2, obj.getCity());
			st.setString(3, obj.getBroth());
			st.setInt(4, obj.getRating());
			st.setInt(5, obj.getRamen_Id());

			code = st.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			DbCon.closeConnection();
		}
		return code;
	}
	
	public ArrayList<Ramen> getAllByRamenBroth(String broth) {

		Connection con = DbCon.getConnection();
		ArrayList<Ramen> ramens = new ArrayList<Ramen>();

		try {

			String qry = "select * from " + table + " where Broth=?";
			PreparedStatement st = con.prepareStatement(qry);

			st.setString(1, broth);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {

				Ramen ramen = new Ramen();

				ramen.setRamen_Id(rs.getInt(1));
				ramen.setShop_Name(rs.getString(2));
				ramen.setCity(rs.getString(3));
				ramen.setBroth(rs.getString(4));
				ramen.setRating(rs.getInt(5));

				ramens.add(ramen);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbCon.closeConnection();
		}
		return ramens;
	}

	public ArrayList<Ramen> getAllByRamenRating(int Rating) {

		Connection con = DbCon.getConnection();
		ArrayList<Ramen> ramens = new ArrayList<Ramen>();

		try {

			String qry = "select * from " + table + " where Rating=?";
			PreparedStatement st = con.prepareStatement(qry);

			st.setInt(1, Rating);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {

				Ramen ramen = new Ramen();

				ramen.setRamen_Id(rs.getInt(1));
				ramen.setShop_Name(rs.getString(2));
				ramen.setCity(rs.getString(3));
				ramen.setBroth(rs.getString(4));
				ramen.setRating(rs.getInt(5));

				ramens.add(ramen);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbCon.closeConnection();
		}
		return ramens;
	}
	
}
