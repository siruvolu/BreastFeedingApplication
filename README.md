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


1.	Introduction
1.1	Purpose 
Actually SRS describes the software functional requirements and nonfunctional requirements in which software requirements derived from the use cases. In the breast feeding application use cases are feed to child, quality and quantity of the food, checking the baby weight in these three constraints mother acts as the primary actor and finally there is other use case i.e. to review progress of child health this is done by the lactation expert. Coming to the nonfunctional requirement it is the term of a system or a characteristic that a system must exhibit or constraint must respect. This document should be executed by members of the project so that they can verify the appropriate functioning of application.
1.2 Project Scope and Product Features
The major feature in this is to put the data in the application by the mother so that it would be helpful to the practitioner to know if mother needs help or not so that she can take care of the baby. The main thing in the application is baby’s health which can be done by quality and quantity of food which leads to sustain the baby’s health so the baseline of application is to check the weight of the baby.


1.3	References
Breastfeeding application Vision and Scope Document prepared by the team











2.	Overall Description
2.1	Product Perspective
For Mothers who wish to feed their babies depending upon the mother's and baby's health condition, the Breastfeeding app is an internet based application that will help and educate mothers on it. It Provides mothers with practical mother-to-mother support and information, enabling them to establish and continue breastfeeding. This new application covers every stage of breastfeeding. 
2.2	Product Features
There are a few applications that are available to the mothers, but with this application mothers would be able to input their feeding times and the type of food they’re having which would be available to the lactation experts. This new application covers every stage of breastfeeding. It provides every input data about the mother and the baby. This data includes the health condition, weight, food intake, baby’s condition after the feeding, clinical aspects. It also includes the badging system for the mother’s and baby’s health condition

2.3	User Classes and Characteristics
 Child
Whenever a child is feeling hungry, he/ she starts crying, his/ her mother breast feeds the child. The mother gets to know that her child is feeling hungry. She breastfeeds her child. The child now stops crying. Breastfeeding helps in both the physical and mental growth of the child.

Mother
 Mother starts breastfeeding her child. She starts weighing her child after every week. The baby shows a steady growth in his/ her weight. Weight of the baby does not grow at a steady rate.
The increase in the weight of a baby depends on both the quality and quantity of feed. Mother is checking her baby’s weight at equal intervals of time.

Practitioner
Practitioner contacts the Mother and helps her by giving some nutritional tips. They will check the data inputted by the mother and review the data and help the mother and the baby. In case the mother needs more help then the practitioner will schedule an appointment with the lactation expert.

Lactation Expert
When the baby is brought for a regular health checkup or whenever a baby has to undergo some regular vaccinations, they are monitored for their health and rate of growth. Lactation expert reviews the child’s breastfeeding schedule. Lactation expert verifies that the child is showing healthy progress towards growth. Lactation expert also checks weight of the baby. The baby is brought for a lactation expert’s reviews regularly.







Context Diagram 	


2.4	Operating Environment
OE-1: In the first release, we’re mainly focused on the mothers who get their checkup done in Saint Vincent hospital.
OE-2: Mother’s may use the application everywhere. No location constraints.
OE-3: Data is generated by the mother at various locations like their home, and hospital etc. but the data is accessed by the lactation experts at the Saint Vincent hospital.
OE-4: Data should be available to them 24x7.
OE-5: User authentication must be needed before the mothers or lactation experts can access the data.
2.5	Design and Implementation Constraints
Design and Implementation is based on the requirements. Mostly the developers will look after the requirements, design and implementation.
2.6	User Documentation
User Documentation should be given in the form of software or as online links to the mother, so that she can easily understand the application and sign up and also she can input her baby’s data easily and review it.
2.7	Assumptions and Dependencies
AS: Practitioners will be available when the mail triggers to them and contact the mother’s via telephone 

D: Every mother who is facing the problem must use this app and check the data 

D: badging system depends on the health condition of the mother and baby.

AS: online feedback form would rate the app and its success.










3.	System Features
3.1	Lowers the health risks
Provides solution for the mother and lowers the risks and problems faced by the Mother while feeding the baby
3.1.1	Attribute Classification
It has the knowledge area content where mother can go through it and can find the solution by herself instead of waiting for the practitioner or lactation expert.
3.2	Nutrition, lactation tips
Provides many Nutritional tips for the mother and also has many FAQ’s which mother can read and follow it.Lactation tips are given or advised by the expert.
3.2.1	Attribute Classification
Mother can find the solution and some nutritional tips in FAQ’s or in the knowledge content
3.3	Provides solutions for the problems
Provides many solutions and advices for the mother and helps the mother to feed the baby correctly on time and also helps in growth of the baby.
3.3.1	Attribute Classification
It has the knowledge area content where mother can go through it and can find the solution by herself instead of waiting for the practitioner or lactation expert.
3.4	Visualization
Includes a clear data and visualizes the data provided by the mother (ex: mom A and baby are doing well, no need for help ex: mom B is well but baby needs help).provides and gives a clear input data.
3.4.1	Attribute Classification
The data is clear and is very easy to input and review the data.
3.5	Register to make an appointment with the practitioner
Mother needs to register in order to make an appointment with the practitioner or the lactation expert. Authorization or Authentication is required for signing up in an app.
	
3.5.1	Attribute Classification
There are two different login i.e. mother login and doctor login so mother have to sign up and register by clicking on mother login


3.6	Do’s and Don’ts 
It has more knowledge area in which many useful do’s and don’ts are present. Helps the mother to follow them 
3.6.1	Attribute Classification
Many useful tips are provided in the knowledge content area
3.7	Understandable Data
The data provided by the Mother is clearly understandable and is easy to input and review the data for the mother and practitioner as well.

3.8	Food diet
It also has this feature where a food diet is given to the mother to follow. Helps in diet and health of the mother and the baby.

3.9	Badging system 
Badging system is provided in order to know whether the mother and the baby are doing good and healthy
Ex: Fair, Good, Poor And Excellent.


4.	External Interface Requirements
4.1	User Interfaces
UI-1:	The Breast feeding application screen displays shall conform to the 
UI-2:	The system shall provide a help link from each displayed HTML page to explain how to use that page.
UI-3:	The Web pages shall permit complete navigation and food item selection using the keyboard alone, in addition to using mouse and keyboard combinations.
4.2	Hardware Interfaces
No hardware interfaces have been identified.
4.3	Software Interfaces
SI-1:	Breast feeding application.
SI-1.1:	The Breast feeding application shall provide the information about the child which was provided by the mother to the practitioner.
SI-1.2:	When the Breast feeding application notifies that more data is to be installed in the application the previous data will be replaced by the new data in the database. 
       SI-2:-       Interactive System
	The Breast feeding application shall communicate with the interactive part of application through a programmatic interface for the following operations:
SI-2.1:	To allow a mother to register for interactive part.
SI-2.2:	To check whether a patron is registered for current application.
SI-2.3:	To submit the information of the child in the application.
SI-2.4:	To enter the new database of the child regarding progress of body weight so that by entering the new data the previous data will be compared with the next given data this process goes on and it maintains the data of recent time for example say one month.
4.4	Communications Interfaces
CI-1:	The Breast feeding application shall send an e-mail message to the Practitioner to confirm review of baby’s health progress by the primary actor mother. If needed the practitioner suggests for lactation expert and succeeded by the doctor finally. 

CI-2:	The Breast feeding application shall send an e-mail message to the expert in the hospital to report any problems with the baby if she under goes with any problem in feeding or health of the baby and takes the appointment depends upon the situation.




5.	Nonfunctional Requirements
5.1	Performance Requirements
PE-1: The system shall accommodate 100 users during the peak usage time window of 8:00am to 10:00am local time, with an estimated average session duration of 8 minutes.
PE-2: Responses to queries shall take no longer than 7 seconds to load onto the screen after the user submits the query.
PE-3: The system shall display confirmation messages to users within 4 seconds after the user submits information to the system.
5.2	Safety Requirements
No safety requirements have been identified.
5.3	Security Requirements
SE-1: The data of the mother and the baby is confidential.
SE-2: The data of the mother and the baby should be accessed by the corresponding doctor and the practitioner.
5.4	Software Quality Attributes
SQ-1: The data should be available to the practitioners and the lactation experts all the time.
SQ-2: The application should be flexible, and simple in such a way that it should be easy for the mothers to use it.
SQ-3: The data feed through the mother should be retrieved even if the application is crashed suddenly.
SQ-4: It should be able to suggest the appropriate feeding times and the weight by the predefined data that is feed into the application.
6.	Other Requirements
If the mother need any further assistance, she should be able to fill up query form, and submit it, which in turn trigger a mail to the lactation expert. So that the lactation expert can contact the mother directly and answer her questions


Appendix A: Glossary
•	Login: Take the user name and the password
•	Verify: Verify the login credentials
•	Baby weight: Takes the weight of the baby
•	Feeding time: Takes the feeding time of the baby, and save the information in the data base
•	Graphs: Show the growth of the baby in a graph
•	Lactation expert and the practitioner login
•	Application response time: 7 seconds
•	Estimated doctor response time: 1-2 hours


Appendix B: Use Case Descriptions








Appendix C: Analysis Models

Appendix D: Issues List
•	If the login isn’t verified, the application should not display any data related to the mother
•	No further issues identified.


1.	Introduction
1.1	Purpose 

This SRS describes the software functional and nonfunctional requirements for release 1.0 of the Breastfeeding Support Application. This document is intended to be used by the members of the project team, who will implement and verify the correct functioning of the application. All requirements specified here are high priority and committed for release 1.0.
1.2	Project Scope
The breastfeeding Support application will help mothers to educate themselves and review their breastfeeding progress. The Mothers can review their weekly progress with the help of graph. Furthermore this app will also help mothers to motivate themselves to breastfeed the newborn baby by giving Badge rating and provide some tips to keep the newborn baby healthy. Also, the Doctors can track the progress of the Mothers. They can check whether the quality of feed.
1.3	References
Breastfeeding Support Vision and Scope Document. 


2.	Overall Description
2.1	Product Perspective
The Breastfeeding Support application is a new application that replaces the manual on-paper calculation of breastfeeding quality and allows Mothers to review their progress and motivate them to breastfeed. Also, this application will help Mothers to keep themselves and their newborn baby healthy, and promote this application globally so that the breastfeeding percentage goes up. Furthermore, the doctors can simultaneously track the progress of the Mothers. The context diagram in Figure 1 illustrates the external entities and system interfaces for release 1.0. The system is expected to evolve over several releases.
2.2	Product Features
The Mothers can use the timer to record the feeding time of the baby. She can also view her progress by using Graph. If by mistakenly she starts the timer, she can delete the reading. Also, the Doctors can track the progress of the mothers simultaneously.
2.3	User Classes and Characteristics
Mother: A Mother is a patient at the Saint Vincent Hospital in Erie, Pennsylvania, who would be given access to use this application, to learn by herself to breastfeed her baby. There are about 100 potential Mothers, of which an estimated 75 are expected to use the Breastfeeding Support Application an average of 6-8 times per day. An estimate 80 percent of Mothers will use this application by using the Hospital Intranet, with 20 percent of mothers will use it from home. A Mother must be able to take the readings multiple time a day. The readings should be available to the Mothers 24X7.

Doctor: The Doctor is a Hospital employee, who will track the progress of the mothers and babies by using this application. An estimate of 1 or 2 doctors will use this application. The reading of the number of feeds should be available 24X7 to doctors.  








Fig.(1): Context Diagram for Breastfeeding Support App
2.4	Actor Survey
Mother: A Mother should record her feeding time using timer.

Doctor: A doctor should keep track on the progress of the mothers and babies.
2.5	Use-Case Model Survey
Mother: 

Step 1: Log in.
Step 2: Turn on the timer and record the feeding time.
Step 3: Review daily, weekly or monthly feeding progress.
Step 4: Log out.

Doctor:

Step 1: Log in.
Step 2: Track the progress of feeding.
Step 3: Log out.













 Fig.(2): Use case Diagram      












Fig.(3): Activity diagram for mother


Fig.(4): Activity diagram for doctor

2.6	Operating Environment
The Breastfeeding Support Application will be used by the mothers to educate and self-review the nursing quality. This application will be only used by the mothers and the doctors working in the Saint Vincent Hospital so, the users are not widely distributed geographically.  Also, it will be used by the mothers at home as well as in the hospital. The mother should take the readings after feeding the baby. The application will be available 24X7 to the user. The data will be generated and accessed remotely by the user. Users will be given continuous access to the system. The access security controls and data protection requirements are needed to keep the identity of the users confidential. If the identity is not kept confidential, it would be considered to be a security violation and invasion of private date. And the main goal of this application is to support the care and welfare of the mother and baby.


2.7	Design and Implementation Constraints
CO1:     The application shall be built on IOS. 
CO2:	The users passwords should be kept confidential from organization staff.
CO3:	 The user and user's doctor should be able to access the particular data stored in the .
CO4:	The user's organization will be responsible for maintaining the delivered software.
CO5:	The application shall be deployed to the customer by mid of December.
2.8	User Documentation
The application shall provide a help button that describes and illustrates all application functions.

2.9	Assumptions and Dependencies
AS1: There might be around 100 potential Mothers, of which an estimated 75 are expected to use the            Breastfeeding Support Application an average of 6-8 times per day.
3.	System Features













Fig.(5): Use case Diagram


System Feature 1:


 

3.1.1 Description
This feature allows mother to put a timer whenever she is about to feed the baby, which would be good for her to decide the duration she has fed the baby in a day.

3.1.2 Attribute Classification
    Usability: 
•	The breast feeding application allow the mother to record the feeding time by   using the timer and it does without any error. 
    
    Performance:
•	Since the application requires the mother to enter her credentials so this data is maintained in database, and is kept secure.
    Security:
•	The application always requires the mother to put her log in credentials.
•	Mother has to enter the right credentials or else it would throw an error as Invalid log in id or password.
•	Mother cannot use the doctor’s log in field to enter the application. 
    Availability:
•	This application would be available all the time.  
3.1.3 Functional Requirements
When this feature is considered, mother would be allowed to put the timer only if she successfully logs into this application.

REQ-1: Mother should successfully log in to the app using her credentials.

	
3.2 Visualizing statistics through Graphs 

3.2.1 Description: 
The time for which the mother records the time she has fed the baby is reflected through graphs. 

3.2.2. Attribute Classification
    
 Performance: 

•	Visualizing of data requires data of each and every mother which they have put in and also to show that with the help of graphs.

•	It would normally take few seconds to display that data in the graph.

3.2.3. Functional Requirements:

She can check her progress through graphs only if she had recorded the time properly, that is did she switch off the timer properly when she was done with feeding the baby.
If she hasn’t switched off the timer while using, then she won’t be able to see the right data in the graphs.

Requirement 1:When she logs into application she should be sure enough, that she is using her own credentials to get in to this application.
Requirement 2:When she successfully logs in to this app, she should turn off the timer after she his done with feeding the baby.

3.3.Doctor’s information

3.3.1.Description: 
If mother needs help then she can directly consult the doctor by sending a message. Sometimes it does happen that doctors are busy and often don’t get time to check mails but with this application the doctor can get the information about the mother even if she hasn’t checked the mails, that is the computer administrator of the hospital will get  the information about the mother and in turn this message can be conveyed to the concerned doctor.
So in this application, mother is provided with data of the concerned doctor and the data about the computer administrator of the hospital,so she can be rest assured that she will receive help as soon as possible.

3.3.2 Attribute Classification

Safety:

•	Mothers would be able to view the doctor’s information as well as the information of the administrator of the hospital.

3.3.3.Functional Requirements

She can consult the doctor only if she has filled the required details properly and sent the message to the proper address which has been specified in this application.

Requirement 1:Data needs to be filled properly in an orderly fashion.

Requirement 2: Mother should send the data to proper email address specified in the application.


3.4 Mothers can take help of FAQ's

 3.4.1.Description: 

If mother has few questions about breastfeeding or regarding the baby nutrition she can also take help of the FAQ’s in the application.

3.4.2.Attribute Classification

Performance: The FAQ’s added in the application would be the latest one and would be easy and understandable enough to solve each and every queries related to mother’s and baby’s health  

3.4.3.Functional Requirements

She can take the help of   FAQ’s if she doesn’t know how to overcome the problems related to breast feeding or baby nutrition 

Requirement 1: Mother should know what is the problem so that she can get the appropriate information about what she is looking for.



3.5   Doctor’s log in

3.5.1. Description: 

Doctor can also log in to this application by entering right credentials.

3.5.2.Attribute Classification:

Usability: 
•	The breast feeding application allows the doctor to check the progress of each and every mother. 
    Performance:
•	Since the application also requires the doctor to enter her credentials so this data is maintained in database, and is kept secure.  
    Security:
•	The application always requires the doctor to put her login credentials.
•	Doctor has to enter the right credentials or else it would throw an error as Invalid login id or password. 
    Availability:
•	This application would be available all the time.

3.5.3.Functional Requirements:

Doctor can log in to this application and can also check the mother’s progress through graphs, and decide whether the mother needs the close attention or not.

Requirement 1:Doctor should use appropriate credentials to log in.

Requirement 2.Doctor should be sure of the identity of the mother, like it can be mother’s name of which she wants to check the progress of.

3.6 Mother’s can check the motivational quotes

3.6.1.Description: 
Mothers if they are have any problems and if their progress is not up to the expectations they can also check the motivational quotes to motivate themselves. 

3.6.2.Attribute Classification:

•	Performance: The mothers can go through the motivational quotes to motivate themselves if they are hesitating to breast feed the babies for some reasons.

 
3.6.3.Functional Requirements:

Requirement 1: The mothers can use this feature only if they least motivated to breast feed,or they get disappointed when the progress is not up to their expectations.
4.	External Interface Requirements
4.1	User Interfaces

















Fig.(6): Context Diagram


1.The mother logs in to the application by pressing the mother’s login button and by using her own    credentials, she won’t be able to see her progress if she doesn’t enter the right information to enter the application. Once she gets in to the application she will get the ‘timer’ option and by pressing the button she can record the time she has fed the baby.

2.Once she switches off the timer she can see that data graphically, and she can use this method to check her progress either on a daily basis or weekly basis.

3.If the mother thinks by analyzing the graph that she is not doing well she can use the FAQ’s provided in the application by pressing the FAQ’s section.

4.If the mother thinks that the checking out the FAQ section is not helping her enough she can use the other option of consulting a doctor. She has to press the consult the doctor option’ and she would be given with the concerned doctor’s information and the computer administrator information.
The computer administrator comes into picture when the doctor is not able to check the messages if she is busy so the computer administrator would convey the message to the concerned doctor. The computer administrator would be the person in the hospital who is handling the messages of the doctors in the hospital.     
5.The doctor can also use this application by pressing the doctor’s log in option, along with she has an access to see the progress report of the mothers.    
4.2	Hardware Interfaces
Since there would be no use of any hardware components for the use of this application so the connection between the software components and the hardware components does not come in the picture. 

4.3	Software Interfaces
4.3.1.Log in page:
 In this page two field would be used that is mother’s login and the doctor’s login field when the mother logs in to this application using her credentials the information which is stored in the database will be verified and based on that she can enter the application or get logged into the application. If the credentials mentioned is not appropriate the mother would be getting an error as ‘invalid login id or password’. This is the same method for the doctor’s entry as well.    

4.3.2 Timer: 
Whenever the mother starts the timer to record the feeding time, the recorded   time would be stored and is considered as one of the entries to calculate the progress and display that progress with the help of graph.

4.3.3 Consulting the Doctor:
 If the mother is not happy with her progress she can use the consult the doctor option where she can send the message to the concerned doctor or the computer administrator of the hospital through email.

4.3.4 Operating System: 
The operating system used for this application IOS operating system.

4.3.5 Database:
 Latest database related to the IOS operating system will be used for the storing of the data.

4.3.6 Tools:
 Latest tools related to the IOS operating system will be used to handle the incoming and outgoing flow of data.


4.4	Communications Interfaces

4.4.1.Communication Interface 1:
 The mother would be sending an email to the concerned doctor to seek an appointment with the doctor. Sending of the mail would be purely based on the predefined settings specified in the user account section.
4.4.2 Communication Interface 2:
 The mother can also send an email containing the queries which she needs to be sorted out by the doctor. Again the sending of the mail would be purely based on the predefined settings specified in the user account section.
5.	Nonfunctional Requirements

5.1	Performance Requirements
PE-1:	The application shall accommodate up to 100 users. 

PE-2:	While trying to uploading the time taken to load and save the data is within 4 seconds.

PE-3:	While using the timer, the timer button itself shall act  as start and start without any    
            hindrance.

PE-4:	The users shall be able to access the application any time in 24 hours. 

PE-5:	Once the user comes out of the application, it shall automatically log out the user.

PE-6:	The users shall be able to access an accurate progress graph made out of a weeks feed       
            analysis. 

PE-7:	The users shall be able to leave the doctors a query regarding their health issues if they 
            were not able to clarify their doubts after going through the “Frequently Asked Question”.

PE-8:	The users shall get one motivational quote every day, in order to encourage their progress.

PE-9:	 Users would be able to delete the data in case of a wrong entry and re-enter the data.

 
  
5.2	Safety Requirements

No safety requirements have been identified.

          
5.3	Security Requirements
SE-1:	The data saved in the application by users must be kept private.

SE-2:	 Only the specific doctor prescribing the user should be able to access the user's data.

SE-3:	On the permission of the users, others could be given authorization to access the data.


5.4	Software Quality Attributes

Availability-1:	The Breastfeeding Support Application shall be available to the users anytime, for a
                           time span of three months.  




Appendix A: Glossary
App                     : Application
FAQ's                  : Frequently Asked Questions
Fig                       : Figure
IOS		  : Originally iPhone OS
OS                       : Operating System
Patients               : Mothers
Stake Holder        : Kathleen Vitale
Users                   : Patients/Doctors

Appendix B: Use Case Descriptions
log in                               = * entering the correct user name and password gives authorization to 
                                             the users to access the application *
check feeding time          = * mothers will be able to view the recorded feeding time *
check number of feeds    = * the number of times the feed took place per a day *
delete feed record           = * when incorrect information is added accidentally, it could be removed    
                                             and placed with the correct information *
check progress graph      = * the weekly readings reflect in a graphical representation for review *
access faq's                     = * any frequently asked questions regards in the health issues can be 
                                              clarified buy going through faq's*
consult the doctor             = * if the patients have a health query which has not be clarified using        
                                              faq's they are given the doctors information in order to leave them a
                                              notification, so that the doctors can contact the users in their leisure * 
check motivational quotes= * mothers would be able to access motivational quotes to encourage 
                                               them in breastfeeding *
log out                              = * when the user tasks are complete they exit the application *
Appendix C: Analysis Models
Use case diagram, Context diagram and Activity Diagram.
Appendix D: Issues List
TBD-1:		Latch score to be added in the graph calculation.

TBD-2:		Mothers get to contact doctors through the application.

TBD-3:		Chat option between the patient and the doctor.



BREASTFEEEDING SUPPORT APPLICATION TEAM_A 
 

                                                                         TIMER

   L
   R




Left  00:00
Right 00:00




The recorded readings are to be displayed as:

11/13/15 Feed Records

No of feeds per day

Time taken to feed per day
 












                                                      LATCH SCORING 

0
	1
2
L

LATCH
How did your baby grasp your breast? 
Too sleepy or reluctant
No latch obtained
Repeated attempts
Must hold nipple in mouth
Must stimulate to suck
Grasps breast
Tongue down and forward
Lips flanged
Rhythmic suckling
A
AUDIBLE SWALLOWING
Did you hear your baby swallow?


None


A few with stimulation

Spontaneous, intermittent
(less than 24 hours old)
Spontaneous, frequent
(greater than 24 hours old)
T
TYPE OF NIPPLE
Inverted

Flat
Everted (after stimulation)
C

COMFORT
(Breast/Nipple)
Engorged
Cracked, bleeding, large blisters or bruises
Severe discomfort
Filling, Small blisters or bruises
Mother complains of pinching
Mild/moderate discomfort
Soft
Tender
Intact nipples (no damage)
H

HOLD 
(Positioning)
HELP
Did someone help you put your baby to breast? 

Full assist (staff holds infant at breast)
Minimal assist (i.e. elevate head of bed, place pillows)
Teach one side, mother does other.
Staff help, mother takes over feeding.
No assist from staff.

Mother able to position/hold infant.


-	The above table shows the latch scoring. In this score table, there are five questions and three option for each. Each option carries a specific score 0,1,2. 

-	The latch score is to be displayed on a new window in the breastfeeding support application.

-	The “Latch score” button should be next to the timer button.

-	The latch score should display options using radio buttons where the mothers get to choose one.

-	There should be a “Submit” button at the end.

-	Once the submit button is pressed the mothers should be able view their scores below.

-	If the scoring is  less than or equal to 7 more,  a remark should be displayed requesting her to consult the doctor for suggestion. (8-10 fair, 11-12 good)



If time permits I would like the developers to add the feature given below:

-	In the same page of latch score two questions are added at the beginning of the latch score. 

-	These two questions are not related to the latch score.

-	The questions are:
                         “Number of wet diapers per day”


                           “Number of dirty diapers per day”


and the reads are to be saved by the mothers once a day in the text entry box next to the questions.


                                            FREQUENTLY ASKED QUESTIONS


-	This below given link would guide to the FAQs
                                                         
                          FAQS

-	The question list should be displayed when the faqs button is pressed in the application.

-	Once the mother finds the question she would press it and then below it the answer is  displayed.

-	If the time given to develop this feature is not sufficient, a normal display of questions and answers would be fine.



