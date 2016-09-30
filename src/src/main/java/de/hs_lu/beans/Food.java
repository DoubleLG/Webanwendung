package de.hs_lu.beans;

import java.sql.*;

import de.hs_lu.database.MySQL;

public class Food {
    String foodId; // ID
    String foodName; // Nahrungsmittel
    Double foodKcal; // Kcal
    Double foodKjoule; // Kjoule
    Double foodFat; // Fett
    Double foodCarbohydrates; // Kohlehydrate
    Double foodBreadUnit; // BE
    Double foodProtein; // Eiweiß
    String foodCategory; // Rubrik

    public Food(String foodId, String foodName, Double foodKcal, Double foodKjoule, Double foodFat, Double foodCarbohydrates, Double foodBreadUnit, Double foodProtein, String foodCategory) {
        super();
        this.foodId = foodId;
        this.foodName = foodName;
        this.foodKcal = foodKcal;
        this.foodKjoule = foodKjoule;
        this.foodFat = foodFat;
        this.foodCarbohydrates = foodCarbohydrates;
        this.foodBreadUnit = foodBreadUnit;
        this.foodProtein = foodProtein;
        this.foodCategory = foodCategory;
    }

    public String toTableRow() {
        return "<td>" + foodId + "</td>"
                + "<td>" + foodName + "</td>"
                + "<td>" + foodKcal + "</td>"
                + "<td>" + foodKjoule + "</td>"
                + "<td>" + foodFat + "</td>"
                + "<td>" + foodCarbohydrates + "</td>"
                + "<td>" + foodBreadUnit + "</td>"
                + "<td>" + foodProtein + "</td>"
                + "<td>" + foodCategory + "</td>";
    }

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public Double getFoodKcal() {
        return foodKcal;
    }

    public void setFoodKcal(Double foodKcal) {
        this.foodKcal = foodKcal;
    }

    public Double getFoodKjoule() {
        return foodKjoule;
    }

    public void setFoodKjoule(Double foodKjoule) {
        this.foodKjoule = foodKjoule;
    }

    public Double getFoodFat() {
        return foodFat;
    }

    public void setFoodFat(Double foodFat) {
        this.foodFat = foodFat;
    }

    public Double getFoodCarbohydrates() {
        return foodCarbohydrates;
    }

    public void setFoodCarbohydrates(Double foodCarbohydrates) {
        this.foodCarbohydrates = foodCarbohydrates;
    }

    public Double getFoodBreadUnit() {
        return foodBreadUnit;
    }

    public void setFoodBreadUnit(Double foodBreadUnit) {
        this.foodBreadUnit = foodBreadUnit;
    }

    public Double getFoodProtein() {
        return foodProtein;
    }

    public void setFoodProtein(Double foodProtein) {
        this.foodProtein = foodProtein;
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }
}
