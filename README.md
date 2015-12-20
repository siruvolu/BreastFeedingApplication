# BreastFeedingApplication

1.	Introduction 

1.1       Purpose  
 The purpose of this document is to outline the software specification requirements for the Breastfeeding Application for the the women’s center in Saint Vincent Hospital. It describes the functional and non-functional requirements, user interfaces and internal and external views of the system. Also it illustrates features of the system with details, and the constraints under which it must operate. The main purpose of this project is to provide online registration for mothers on the breastfeeding program. This document is intended for both the stakeholders and the developers of the system. 

1.2       Project Scope 
The main objectives of the Breastfeeding Application is to allow mothers who want to join the breastfeeding program in the the women’s center to register online instead of the current system in use a paper-based system which is too slow. The Breastfeeding Application allows a mother to manage and update her personal information easily online. It, also, allows mother to manage her baby’s information whether by adding, deleting or viewing her baby’s reports.

1.3       References 
The references include the vision and scope document for Breastfeeding Application. 
 

2.	Overall Description 

2.1       Product Perspective 
The Breastfeeding Application is a new system which will use online system instead of the paper-based system for registration in the the women’s center. When mother registers online, the Breastfeeding Application stores mother’s information registration in the database for the the women’s center in the Saint Vincent Hospital.

2.2       Product Features 
FE-1:   Online registration for mothers, including baby's details on the application. 
FE-2:   Delete and add an account online.
FE-3:   Manage and update personal information online.  
FE-4:   Manage baby's information by adding, deleting, and viewing reports online. 
 
2.3       User Classes and Characteristics 
Mother(favored): Mother is the main user in the Breastfeeding Application who will be able to register online using her personal information. Also, the mother is able to manage her account and her baby’s information by using the Breastfeeding Application.



Doctor:  The doctor will be provided from the women’s center in the Saint Vincent Hospital in order to help mothers. Doctor will be able to login to the application in order to see the mother’s situation by viewing her reports.

2.4       Actor Survey 
Mother:   The mother is the main actor who will be able to register to the application using her personal information. She can manage her account by viewing, editing and deleting files. Also, she can manage her baby information by adding and deleting a baby’s file and viewing the baby's reports. 
Doctor:   Doctor will be able to login to the application and view the mother’s reports.

 2.5       Use-Case Model Survey 






 
2.6       Operating Environment 
OE-1: The Breastfeeding Application is an application and shall operate in all popular operation systems such as IOS, Android, Windows etc. 
OE-2: The Breastfeeding Application is an application and shall work on computers or smart devices. 
OE-3: The Breastfeeding Application should have a database connected to the the women’s center in Saint Vincent Hospital.

2.7       Design and Implementation Constraints 
CO-1: The code should be written in a way that matches with each operating system. 
CO-2: The design for user interface should be matched with all devices. 

CO-3: The Breastfeeding Application shall use the MySQL Database, which is an open source and free.
CO-4: The Breastfeeding Application should have different operating systems in order to work with all devices.
 
2.8       User Documentation 
UD-1: The application shall provide a help button on the app that describes and explains all system functions. 
UD-2: The application shall provide a quick tutorial for new users who use the app for the first time to allow them to practice how to use it. 

2.9       Assumptions and Dependencies 
AS-1:  The the women’s center will have enough trained staff to take care of the app. 
AS-2:  All mothers have smart phones or computers in order to use the app online. 


3.	System Features 

3.1       Register online
3.1.1 Description: 
Mothers who want to register for the breastfeeding program do not have to go to the hospital and fill out registration form manually. They can register to the program online which is more convenient and provides many privileges for them such as adding the baby's information during registration. 

3.1.2     Attribute Classification 
Stimulus: Mother just needs to insert an email message and password to register. 
Response:  The Breastfeeding Application sends an email message for confirmation. 
Stimulus: The Breastfeeding Application sends an email with login information. 
Response: Mother fails to login.



3.1.3     Functional Requirements 
1.0 Mother shall sign up to the Breastfeeding Application.  
     1.1 Mother shall insert a correct email.  
     1.2 Mother shall insert a password.  
     1.3 The password shall contain more than 8 letters and numbers. 
     1.4 Mother shall clicks sign up button. 
     1.5 The Breastfeeding Application shall send an email to mother for confirmation. 
 2.0 Mother shall fill the registration form. 
     2.1 The Breastfeeding Application shall generate an ID for the mother. 
     2.2 Mother shall insert her first and last name. 
     2.3 Mother shall insert her birthday. 
     2.4 Mother shall insert her phone number. 
     2.5 Mother shall insert her address. 
  3.0 Mother shall add her baby information. 
     3.1 Mother shall insert the baby's name. 
     3.2 Mother shall insert the baby's birthday. 
     3.3 Mother shall insert the baby's gender. 

3.2       Manage an account  
3.2.1 Description: 
The Breastfeeding Application allows the mother to manage her account easily online. She can update her personal information without having difficulties. Going to the hospital, for example, in order to change her address information. 

3.2.2   Attribute Classification 
Stimulus: Mother changes her personal information online. 
Response: The Breastfeeding Application sends an email message for modification. 
Stimulus: Mother view her latest reports. 
Response: The Breastfeeding Application generates all reports that the mother needs.

3.2.3     Functional Requirements 
1.0 The Breastfeeding Application shall allow the mother to manage her account. 
   1.1 Mother shall be able to update her information when she needs to change. 
   1.2 The Breastfeeding Application shall confirm the changes. 
   1.3 Mother shall be able to view the reports  
   1.4 The Breastfeeding Application shall generate reports.

3.3       Manage baby's information 
 3.3.1 Description: 
Since the mother adds her baby information on the Breastfeeding Application, she will be able to manage it smoothly. Mother is able to add a new baby to her account, and delete an existing one. The Breastfeeding Application provides a baby's reports which allows the mother to view them in a coordinated way. 


3.3.2    Attribute Classification 
Stimulus: Mother adds new baby. 
Response:  The Breastfeeding Application asks for deleting the old one. 
Stimulus: Mother requests baby's reports as document. 
Response: The Breastfeeding Application sends an email message with the document.

3.3.3     Functional Requirements 
 1.0 Mother shall be able to add new baby. 
   1.1 Mother shall clicks add baby button. 
   1.2 Mother shall insert the baby's name. 
   1.3 Mother shall insert the baby's birthday. 
   1.4 Mother shall insert the baby's gender. 
2.0 Mother shall be able to delete baby. 
   2.1 Mother shall click delete baby button. 
   2.2 The Breastfeeding Application shall confirm deleting process. 
   2.2   The Breastfeeding Application shall remove the baby from the database. 
3.0 Mother shall be able to view her baby reports. 
   3.1 Mother shall click view reports. 
   3.2 The Breastfeeding Application shall generate her baby information.
 
4.	External Interface Requirements 

4.1       User Interfaces 
UI-1: The Breastfeeding Application shall provide a help button at the bottom of the main page to help users who have difficulties using the application. 
UI-2: The user interface should have three buttons which are the login, password and sign up buttons.
UI-3: The Breastfeeding Application shall provide an ID for the mother.
UI-4: The Breastfeeding Application shall provide a registration form for the mother including name, address, birthday and phone number.
UI-5: The Breastfeeding Application shall provide a submit button to submit registration information.
UI-6: The Breastfeeding Application shall view the mother’s profile, including account details, personal information, baby information and reports.

4.2       Hardware Interfaces 
It does not have any direct hardware interfaces. 



4.3       Software Interfaces 
 SI-1 Database for the women’s center:
    SI-1.1 The Breastfeeding Application shall connect to the database for the women’s center in order to be viewed by the the women’s center.
    SI- 1.2 The Breastfeeding Application shall share and store all data in the database.

 4.4       Communications Interfaces 
CI-1: The Breastfeeding Application shall send an email message to the user in order to confirm registration process.  
CI-2: The Breastfeeding Application shall send an email message login details to the user when she clicks forget password button. 
CI-3: The Breastfeeding Application shall connect with the the women’s center database.

5.	Nonfunctional Requirements 

5.1       Performance Requirements 
PE-1: The Breastfeeding Application shall give responses in 1 second after checking the registration information.  
PE-2: The Breastfeeding Application must support thousands users who do registration process in the app at one time.  
PE-3: The user interface for registration process shall respond within seconds. 
 
5.2       Security Requirements 
SE-1: The Breastfeeding Application requires mothers to identify herself using personal information. 
SE-2: All users who use the Breastfeeding Application shall have login ID and password. 
SE-3: The Breastfeeding Application shall verify from users for any modification of information (add, delete, update) by providing agree button. 

5.3      Usability Requirements 
US-1: Mother ID and password are required to login to the Breastfeeding Application.
US-2: If a password is forgotten by mother, an email should be sent to her in three minutes for recovering password.
US-3: The Breastfeeding Application should provide an error message explanation how to correct the error.
 US-4: The changes should not be done unless the Breastfeeding Application asks for confirmation.

5.4      Software Quality Attributes 
Maintainability -1: The Breastfeeding Application shall provide the possibility to back up the data. 
Availability -1: The registration process shall be available all the time on the Breastfeeding Application. 
