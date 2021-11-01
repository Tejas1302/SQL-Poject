# SQL-Poject
Establishing entity relationship as per following table definitions:

1) Employee_Details Table:
This table contains the information of the employees.
Column Name, Data Type, Description as follows:
Emp_ID INT (5) Employee ID (Primary Key)

Emp_NAME VARCHAR (30) Name of the employee

Emp-BRANCH VARCHAR (15) Branch name

Emp_DESIGNATION VARCHAR (40) Designation of the employee

Emp_ADDR VARCHAR (100) Address of the employee

Emp_CONT_NO VARCHAR (10) Contact Number of the employe


2) Membership Table:
This table contains the membership details of the customer or client.
Column Name, Data Type, Description are as follows:
M_ID INT Membership ID associated with the client (Primary Key)

START_DATE TEXT Start date of the membership

END_DATE TEXT) End date of the membership

3) Customer Table:
This table contains the information of the customers or clients. 
Column Name, Data Type, Description are as follows:
Cust_ID INT (4) Client ID (Primary Key)

Cust-NAME VARCHAR (30) Name of the client

Cust-EMAIL_ID VARCHAR (50) Email of the client

Cust_CONT_NO VARCHAR (10) Contact Number of the client

Cust_ADDR VARCHAR (100) Address of the client

Cust_TYPE VARCHAR (30) Type of client (Wholesale, Retail, Internal Goods)

Membership_M_ID INT Membership ID (Foreign Key)


4) Payment_Details Table:
This table contains the payment details.
Column Name, Data Type, Description are as follows:
PAYMENT_ID VARCHAR (40) Payment Unique ID (Primary Key)

AMOUNT INT Price to be paid by the client

PAYMENT_STATUS VARCHAR (10) Payment status (Paid / Not Paid)

PAYMENT_DATE TEXT Date when payment is made by the client

PAYMENT_MODE VARCHAR (25) Mode of payment (COD / Card Payment)

Shipment_SH_ID VARCHAR (6) Shipment ID (Foreign Key)

Shipment_Client_C_ID INT (4) Client ID (Foreign Key)

5) Shipment_Details Table:
This table contains the shipment details.
Column Name Data Type Description
SD_ID VARCHAR (6) Shipment ID (Primary Key)

SD_CONTENT VARCHAR (40) Type of shipping content 

SD_DOMAIN VARCHAR (15) Shipment Domain (International / Domestic)

SD_TYPE VARCHAR (15) Service Type (Express / Regular)

SD_WEIGHT VARCHAR (10) Shipment Weight

SD-CHARGES INT (10) Shipment Charges

SD-ADDR VARCHAR (100) Source Address

DS_ADDR VARCHAR (100) Destination Address

Customer_Cust_ID INT (4) Client ID (Foreign Key)

6) Status table:
This table contains the details about the delivery status.
Column Name Data Type Description are as follows:
CURRENT_ST VARCHAR (15) Current status of the shipment

SENT_DATE TEXT Date when shipment was sent

DELIVERY_DATE TEXT Date when the product was/will be delivered

SH_ID VARCHAR (6) Shipment ID (Primary Key)


7) Employee Manages Shipment Table:
This is a relationship table between the employee and the shipment table. 
Column Name Data Type Description are as follows:
Employee_E_ID INT (5) Employee ID (Foreign Key)

Shipment_SH_ID VARCHAR (6) Shipment ID (Foreign Key)

Status_SH_ID VARCHAR (6) Shipment_ID from status table (Foreign Key)









