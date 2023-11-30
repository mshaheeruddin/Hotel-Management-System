INSERT INTO CUSTOMER 
VALUES
(123,'Raheem','Ullah','41131-1223227-2',03022324421,'raheem123');

CREATE TABLE CUSTOMER
   (	CUSTOMER_ID NUMBER NOT NULL, 
	FIRST_NAME VARCHAR2(10), 
	LAST_NAME VARCHAR2(18), 
	CNIC VARCHAR2(15) UNIQUE, 
	CONTACT_NUMBER NUMBER(10,0), 
	PASS VARCHAR2(14), 
	PRIMARY KEY ("CUSTOMER_ID") 
   )

--FOR TV,FRIDGE,HEATER 0 means yes 1 means no--
CREATE TABLE ROOM_CATEGORY (
     Category_name VARCHAR2(9) PRIMARY KEY,
     Price number(6,2),
     Room_capacity varchar2(9),
     TV number(1),
     FRIDGE number(1),
     HEATER number(1)
); 

--ROOM--

CREATE TABLE ROOM (
     Room_no number(8) PRIMARY KEY,
     Floor_no NUMBER(2),
     Category_name VARCHAR2(9) NOT NULL,
     CONSTRAINT catfk FOREIGN KEY(Category_name) REFERENCES ROOM_CATEGORY (Category_name)
);


--BOOKING TABLE-- 

CREATE TABLE Room_Booking (
     Booking_no NUMBER PRIMARY KEY,
     Customer_ID NUMBER NOT NULL,
     Room_no NUMBER(8) NOT NULL,
     CONSTRAINT custid FOREIGN KEY(Customer_id) REFERENCES CUSTOMER (Customer_id),
     CONSTRAINT roomno FOREIGN KEY(Room_no) REFERENCES ROOM (Room_no)
);


--Laudry Booking--

CREATE TABLE Laundry_Booking (
     Invoice_no VARCHAR2(15) PRIMARY KEY,
     Booking_no NUMBER NOT NULL,
     Total_charges NUMBER(10,2),
     CONSTRAINT bookingno FOREIGN KEY(Booking_no) REFERENCES Room_booking (Booking_no)
);

--Resturant Booking--

CREATE TABLE Resturant_Booking (
     Reservation_no VARCHAR2(12) PRIMARY KEY,
     Booking_no NUMBER NOT NULL,
     restaurant_name varchar2(40) NOT NULL,
     No_of_persons int,
     Day_of_booking VARCHAR2(8),
     Time_of_booking VARCHAR2(12),
     Status VARCHAR2(12),
     CONSTRAINT bookingno1 FOREIGN KEY(Booking_no) REFERENCES Room_booking (Booking_no),
     CONSTRAINT restname FOREIGN KEY(restaurant_name) REFERENCES RESTAURANT (restaurant_name)
     
);

CREATE TABLE Transport_Booking (
     Ride_no VARCHAR2(12) PRIMARY KEY,
     Booking_no NUMBER NOT NULL,
     license_no number NOT NULL,
     Charges NUMBER(12,2),
     Type_of_transport VARCHAR2(8),
     Destination VARCHAR2(16),
     CONSTRAINT bookingnotransbook FOREIGN KEY(Booking_no) REFERENCES Room_booking (Booking_no),
     CONSTRAINT licesenceno FOREIGN KEY(license_no) REFERENCES Driver  (license_no)
     
);

CREATE TABLE Customer_Receipt (
     Receipt_no VARCHAR2(12) PRIMARY KEY,
     Booking_no NUMBER NOT NULL,
     Total_charges NUMBER(12,2),
     CONSTRAINT bookingnocustrec FOREIGN KEY(Booking_no) REFERENCES Room_booking (Booking_no)
     );
     
     CREATE TABLE Services_Details (
     Receipt_no VARCHAR2(12) NOT NULL,
     Service_offered VARCHAR2(8),
     Service_charges NUMBER(12,2) UNIQUE,
     PRIMARY KEY(Receipt_no,Service_charges),
     CONSTRAINT recno FOREIGN KEY(Receipt_no) REFERENCES Customer_receipt (Receipt_no)
     );
     
     CREATE TABLE Room_Details (
     Receipt_no VARCHAR2(12) NOT NULL,
     Category_name VARCHAR2(9) NOT NULL,
     Days_stayed INT,
     Room_charges NUMBER(12,2) UNIQUE,
     PRIMARY KEY(Receipt_no),
     CONSTRAINT recno1 FOREIGN KEY(Receipt_no) REFERENCES Customer_receipt (Receipt_no),
     CONSTRAINT catname1 FOREIGN KEY(Category_name) REFERENCES Room_category (Category_name)
     );

    

CREATE TABLE Customer_Receipt 
(
     Receipt_no VARCHAR2(12)
                CONSTRAINT custreceipt__recno__pk PRIMARY KEY,
     Booking_no CONSTRAINT custreceipt__bookingno__fk REFERENCES Room_booking
                NOT NULL,
     Total_charges NUMBER(12,2) 
);

CREATE TABLE Services_Details 
(
  Receipt_no      CONSTRAINT servicedetails__recno__fk REFERENCES Customer_receipt
                  NOT NULL,
  Service_offered VARCHAR2(8)
                  NOT NULL,
  Service_charges NUMBER(12,2),

  CONSTRAINT servicedetails__recno_servoff__pk PRIMARY KEY(Receipt_no, Service_offered)
);

CREATE TABLE Room_Details 
(
    Receipt_no    CONSTRAINT roomdetails__recno__fk REFERENCES Customer_receipt
                  NOT NULL,
    Category_name CONSTRAINT roomdetails__catname__fk REFERENCES Room_category
                  NOT NULL,
    Days_stayed   INT,
    Room_charges  NUMBER(12,2),

    CONSTRAINT roomdetails__recno_catname__pk PRIMARY KEY(Receipt_no, Category_name)
);




CREATE TABLE Restaurant(
restaurant_name VARCHAR(40),
owner_name VARCHAR(40) NOT NULL,
cnic_no number(13) NOT NULL,
contact_number number NOT NULL,
floor_no int NOT NULL,
type VARCHAR2(12),
timings varchar2(10),
CONSTRAINT restaurant_pk PRIMARY KEY (restaurant_name));


CREATE TABLE Driver(
license_no number,
driver_name VARCHAR(40) NOT NULL,
contact_number number,
car_no VARCHAR(10)  NOT NULL,
car_type VARCHAR2(12)  NOT NULL,
salary FLOAT(10),
CONSTRAINT driver_pk PRIMARY KEY (license_no));


CREATE TABLE Laundry_Service(
service varchar2(20) PRIMARY KEY,
price FLOAT NOT NULL);

CREATE TABLE Laundry_Orders(
invoice_no VARCHAR(10),
service VARCHAR(40) NOT NULL,
quantity int NOT NULL,
total float NOT NULL,
CONSTRAINT laundryO_pk PRIMARY KEY (invoice_no, service),
CONSTRAINT laundryO_fk FOREIGN KEY (service) REFERENCES LaundryService(service));


CREATE TABLE Position_Salary(
position varchar2(20) PRIMARY KEY,
department varchar2(20),
salary float NOT NULL);

CREATE TABLE STAFF(
staff_id int,
department VARCHAR(20) NOT NULL,
first_day date NOT NULL,
last_day date,
name varchar2(50) NOT NULL,
contact_number number,
position varchar2(20),
shift_hours varchar2(10),
CONSTRAINT staff_pk PRIMARY KEY (staff_id),
CONSTRAINT staff_fk FOREIGN KEY (position) REFERENCES PositionSalary(position));

CREATE TABLE Services_Login(
login_id number PRIMARY KEY,
user_name varchar2(20) NOT NULL,
password varchar2(20) NOT NULL);

CREATE TABLE Technical_Staff(
ts_id number,
name varchar2(50) NOT NULL,
contact_number number,
date_visited date NOT NULL,
duration float,
wage float,
CONSTRAINT technicalS_pk PRIMARY KEY (ts_id));

--GOLD CATEGORY 
--10000 USD, 2 Person, TV AVAILABLE, FRIDGE AVAILABLE, NO HEATER, 10 GOLD CATEGORY ROOM AVAILABLE
INSERT INTO ROOM_CATEGORY 
VALUES('Gold',1000,2,1,1,0,10);



