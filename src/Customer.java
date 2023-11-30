/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aresha Kashif
 */
public class Customer {
    
    private int customerId; 
   private String firstName,lastName,CNIC,password;
   private long contactNum;
   
   public Customer(int customerId,String firstName,String lastName,String CNIC,long contactNum,String password) {
       this.customerId = customerId;
       this.firstName = firstName;
       this.lastName = lastName;
       this.CNIC = CNIC;
       this.contactNum = contactNum;
       this.password = password;
   }
   
   public long getcontactNum() {
       return contactNum;
   }
   public int getCustomerId() {
       return customerId;
   }
   public String getFirstName() {
       return firstName;
   }
   public String getLastName() {
       return lastName;
   }
   public String getCNIC() {
       return CNIC;
   }
   public String getPassword() {
       return password;
   }
    
}
