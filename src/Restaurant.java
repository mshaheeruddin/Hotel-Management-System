/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aresha Kashif
 */
public class Restaurant {
    
    private String resturantName, ownerName, type, timmings;
    private long cnicNo, contactNo;
    private int floorNo;

    public Restaurant(String resturantName, String ownerName, String type, String timmings, long cnicNo, long contactNo, int floorNo) {
        this.resturantName = resturantName;
        this.ownerName = ownerName;
        this.type = type;
        this.timmings = timmings;
        this.cnicNo = cnicNo;
        this.contactNo = contactNo;
        this.floorNo = floorNo;
    }

    public String getResturantName() {
        return resturantName;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public String getType() {
        return type;
    }

    public String getTimmings() {
        return timmings;
    }

    public long getCnicNo() {
        return cnicNo;
    }

    public long getContactNo() {
        return contactNo;
    }

    public int getFloorNo() {
        return floorNo;
    }
   
}
