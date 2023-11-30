/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aresha Kashif
 */
public class Room {
    
    private int roomNo,floorNo;
    private String category;
    
    public Room(int roomNo, int floorNo,String category)
    {
        this.roomNo = roomNo;
        this.floorNo = floorNo;
        this.category = category;  
    }

    public int getRoomNo() {
        return roomNo;
    }

    public int getFloorNo() {
        return floorNo;
    }

    public String getCategory() {
        return category;
    }
    
    
    
}
