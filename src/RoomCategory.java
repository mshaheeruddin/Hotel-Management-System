/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aresha Kashif
 */
public class RoomCategory {
    
    private String category;
    private int price, capacity, quantity;
    private boolean tv, heating, fridge;

    public RoomCategory(String category, int price, int capacity, int quantity, boolean tv, boolean heating, boolean fridge) {
        this.category = category;
        this.price = price;
        this.capacity = capacity;
        this.quantity = quantity;
        this.tv = tv;
        this.heating = heating;
        this.fridge = fridge;
    }

    public String getCategory() {
        return category;
    }

    public int getPrice() {
        return price;
    }

    public int getCapacity() {
        return capacity;
    }

    public int getQuantity() {
        return quantity;
    }

    public boolean isTv() {
        return tv;
    }

    public boolean isHeating() {
        return heating;
    }

    public boolean isFridge() {
        return fridge;
    }

    

}
