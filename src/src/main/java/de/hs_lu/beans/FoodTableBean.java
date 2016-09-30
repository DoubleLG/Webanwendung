package de.hs_lu.beans;

import java.sql.*;

import de.hs_lu.database.MySQL;

import java.util.Vector;

public class FoodTableBean {
    Vector<Food> foodListe;

    public FoodTableBean() throws SQLException, ClassNotFoundException {
        super();
        foodListe = new Vector<Food>();
        this.getFoodFromDB();
    }

    public void getFoodFromDB() throws SQLException, ClassNotFoundException {
        String sql = "SELECT ID, Nahrungsmittel, Kcal, Kjoule, Fett, Kohlehydrate, BE, Eiweiß, Rubrik FROM nutrition";

        Connection dbConn = new MySQL().getConnection();

        Statement stmt = dbConn.createStatement();
        ResultSet dbRes = stmt.executeQuery(sql);

        while (dbRes.next()) {
            Food newFood = new Food(
                    dbRes.getString("ID"),
                    dbRes.getString("Nahrungsmittel"),
                    dbRes.getDouble("Kcal"),
                    dbRes.getDouble("Kjoule"),
                    dbRes.getDouble("Fett"),
                    dbRes.getDouble("Kohlehydrate"),
                    dbRes.getDouble("BE"),
                    dbRes.getDouble("Eiweiß"),
                    dbRes.getString("Rubrik")
            );
            foodListe.add(newFood);
        }
    }

    public String getHTMLFromDB() {
        String html = "";

        for(Food myFood : foodListe) {
            html += "<tr>" + myFood.toTableRow() + "</tr>";
        }
        return html;

    }

    public Vector<Food> getFoodListe() {
        return foodListe;
    }

    public void setFoodListe(Vector<Food> foodListe) {
        this.foodListe = foodListe;
    }
}
