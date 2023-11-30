/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
public class StaffDetails {
    private String staffid, name,department,position;
    private int contactnumber, shifthours, salary;
    

    public StaffDetails(String staffid, String name, String department, String position, int contactnumber, int shifthours, int salary) {
        this.staffid = staffid;
        this.name = name;
        this.contactnumber = contactnumber;
        this.department = department;
        this.position = position;
        this.shifthours = shifthours;
        this.salary = salary;
    }

    public String getStaffID() {
        return staffid;
    }

    public String getName() {
        return name;
    }

    public int getContactNumber() {
        return contactnumber;
    }

    public String getDepartment() {
        return department;
    }

    public String getPosition() {
        return position;
    }

    public int getShiftHours() {
        return shifthours;
    }

    public int getSalary() {
        return salary;
}
}
