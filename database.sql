CREATE DATABASE klcdoe;
USE klcdoe;

  -- DROP TABLE Student_Data;

  CREATE TABLE Student_Data(
  Profile_Id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
  Student_Id BIGINT UNIQUE KEY,
  Student_Profile VARCHAR (100) BINARY, 
  Student_Name VARCHAR (50), 
  Student_Dob VARCHAR (10), 
  Student_Phone BIGINT UNSIGNED UNIQUE KEY, 
  Student_Email VARCHAR (50), 
  Student_Address VARCHAR (300), 
  Student_Branch VARCHAR(10),
  Student_Year VARCHAR(10),
  Student_Sem VARCHAR(5),
  Student_Password VARCHAR (16) BINARY
  );
  
  
  INSERT INTO Student_Data (Student_Id, Student_Profile, student_Name,Student_Dob,Student_Phone,Student_Email,Student_Address,Student_Branch,Student_Year,Student_Sem,Student_Password)
  VALUES
  (2100520036,'http://192.168.2.168/Image/Student_Photo/2100520036.png', 'Chandra Pravesh','2004-02-17',7671890335, '2100520036@kluniversity.in','10-22-58, Golla Vidhi Street, Hnauman Temple Road, Malkapuram, Visakhapatnam, Andhra Pradesh 530011.','BCA','2022-2023','ODD','Pravesh@2004'),
  (2100520143,'http://192.168.2.168/Image/Student_Photo/2100520143.jpg', 'Ankem Deepika','2004-05-25',8341247643, '2100520143@kluniversity.in','3/326, Church Street ,kurnoothala bank, Lakkireddypalli, Kadapa, Andhra Pradesh 516257.','BCA','2021-2022','ODD','Deepika@2004'),
  (2100520150,'http://192.168.2.168/Image/Student_Photo/2100520150.jpg', 'Abhinaya Sai','2004-01-06',9949902598, '2100520150@kluniversity.in','3/1/105, Shivalayam road, Maripeda(v&m), Mahabubabad(dist), Telengana 506315','BCA','2021-2022','EVEN','Abhinaya_2004'),
  (2100520187,'http://192.168.2.168/Image/Student_Photo/2100520187.jpg', 'Rishu Kumar Gupta','2004-10-02',7463906582, '2100520187@kluniversity.in','Door No 54-22-59, Samardihan,Rohtas, Bihar 821311','BCA','2021-2022','EVEN','Rishu_2004'),
  (7591,'http://192.168.2.168/Image/Faculty_Image/7591.jpg', 'Srinivas Kona','1990-07-20',8125717617, 'srinivas.kona@kluniversity.in','10-22-58, Golla Vidhi Street, Hnauman Temple Road, Malkapuram, Visakhapatnam, Andhra Pradesh 530011.','BCA','2022-2023','EVEN','Vasu@1234');


  INSERT INTO Student_Data (Student_Id, Student_Profile, student_Name,Student_Dob,Student_Phone,Student_Email,Student_Address,Student_Branch,Student_Year,Student_Sem,Student_Password)
  VALUES
  (2100520036,'http://192.168.2.168/Image/Faculty_Image/7591.jpg', 'Srinivas Kona','1990-07-20',7671890335, 'srinivas.kona@kluniversity.in','10-22-58, Golla Vidhi Street, Hnauman Temple Road, Malkapuram, Visakhapatnam, Andhra Pradesh 530011.','BCA','2022-2023','EVEN','Vasu@123');

CREATE TABLE Course_List(
  Course_Year VARCHAR(10),
  Course_Sem VARCHAR(5),
  Course_Id VARCHAR(10),
  Course_Name VARCHAR(50),
  Course_Image VARCHAR(100)
);


INSERT INTO Course_List (Course_Branch,Course_Year, Course_Sem, Course_Id, Course_Name, Course_Image)
VALUES 
('2021-2022', 'ODD', '21CA1101', 'Problem Solving throught Programming', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21CA1102', 'Computer Organisation and Architecture', 'https://www.example.com/images/math201.jpg'),
('2021-2023', 'ODD', '21CA1103', 'Essentials of Information Technology', 'https://www.example.com/images/math201.jpg'),
('2021-2023', 'ODD', '21CA1104', 'Mathematics for computer Science', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21UC0009', 'Ecology and Environment', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'ODD', '21UC1101', 'Integrated professional English', 'https://www.example.com/images/math201.jpg'),

('2021-2022', 'EVEN', '21CA1205', 'Operating System', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1206', 'data Structures', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1207', 'Object Oriented Programming', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1208', 'Mobile Application development', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '21CA1209', 'Web and Social Media Technologies', 'https://www.example.com/images/math201.jpg'),
('2021-2022', 'EVEN', '20UC1202', 'English Proficiency', 'https://www.example.com/images/math201.jpg'),

('2022-2023', 'ODD', '21CA2110', 'Database Management Systems', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2111', 'Computer Networks', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2112', 'Web Development Using Python', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21C1', 'Cloud Architecture', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21D1', 'Data Warehousing & mining', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA21A1', 'Artificial Intelligence', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21CA2109', 'Software Engineering', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21UC1203', 'Design Thinking And Innovation', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'ODD', '21ME40B4', 'Robotics', 'https://www.example.com/images/math201.jpg'),

('2022-2023', 'EVEN', '21CA2213', 'Java Full Stack Development', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA2214', 'Object Oriented Analysis And Design', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22C2', 'Cloud Information Security', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22D2', 'Statistics for Data Science', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22A2', 'Buisiness Intelligence', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21CA22E1', 'Term Paper', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21UC0010', 'Universal Human Values and Professional Ethics', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21UC2103', 'Essential Skills For Employability(HSS4)', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21EI40B2', 'E-Commerce', 'https://www.example.com/images/math201.jpg'),
('2022-2023', 'EVEN', '21ME40B6', 'Operations Research', 'https://www.example.com/images/math201.jpg');

CREATE TABLE Teacher_Data(
  Emp_Id   BIGINT UNSIGNED   PRIMARY KEY,
  Emp_Name  VARCHAR(30),
  Emp_Profile  VARCHAR(50),
  Emp_Phone  BIGINT UNSIGNED   UNIQUE KEY,
  Emp_Email  VARCHAR(50),
  Emp_Dept VARCHAR(5)
  );
  

-- INSERT INTO Teacher_Data (Emp_Id, Emp_Name, Emp_Profile, Emp_Phone, Emp_Email,Emp_Dept)
-- VALUES (1, 'Amrutha', 'Python', 8341247643, 'Amrutha@gmail.com','BCA'),
-- (2, 'Rama Krishna', 'Software Engineering',9632587415,  'Ramakrishna@gmail.com','MCA'),
-- (3, 'Sarvani', 'DBMS', 9876543125, 'Sarvani@gmail.com','MBA'),
-- (4, 'Zulfikar Ali', 'Cloud Computing', 9514782375, 'Zulfikarali@gmail.com','Bcom'),
-- (5, 'Rohith Kumar', 'C Language', 9154456245, 'Rohithkumar@gmail.com ','MCA');

  

-- INSERT INTO Teacher_Data (Emp_Id, Emp_Name, Emp_Profile, Emp_Phone, Emp_Email,Emp_Dept)
-- VALUES (3673, 'Shella Rani', '', 8341247643, 'Amrutha@gmail.com','BCA'),
-- (2, 'Rama Krishna', 'Software Engineering',9632587415,  'Ramakrishna@gmail.com','MCA'),
-- (3, 'Sarvani', 'DBMS', 9876543125, 'Sarvani@gmail.com','MBA'),
-- (4, 'Zulfikar Ali', 'Cloud Computing', 9514782375, 'Zulfikarali@gmail.com','Bcom'),
-- (5, 'Rohith Kumar', 'C Language', 9154456245, 'Rohithkumar@gmail.com ','MCA');


CREATE TABLE Faculty_List(
  Emp_Id BIGINT UNSIGNED,
  Emp_Name VARCHAR(50),
  Emp_Profile VARCHAR(300),
  Emp_Phone BIGINT UNSIGNED,
  Emp_Email VARCHAR(50),
  Course_Name VARCHAR(100),
  Emp_Department VARCHAR(5),
  Course_Year VARCHAR(10),
  Course_Sem VARCHAR(5)
);


INSERT INTO Faculty_List (Emp_Id, Emp_Name, Emp_Profile, Emp_Phone, Emp_Email,Course_Name,Emp_Department, Course_Year, Course_Sem) VALUES
(3673, 'Dr.C.M.SHEELA RANI', 'http://192.168.2.168/Image/Faculty_Image/3673.jpg', 9486273418, '3673@kluniversity.in', 'Operating System', "ECE", '2021-2022', 'EVEN'),
(7591, 'Mr.SRINIVAS KONA', 'http://192.168.2.168/Image/Faculty_Image/7591.jpg',8125717617, '7591@kluniversity.in', 'Data Structures',"CDOE", '2021-2022', 'EVEN'),
(6607, 'Dr.BANDARUPALLI MOULESWARA RAO', 'http://192.168.2.168/Image/Faculty_Image/6607.jpg',9885061380, '6607@kluniversity.in', 'Object Oriented Programming',"CSE", '2021-2022', 'EVEN'),
(4957, 'Mr.N VENKATA RAMANA', 'http://192.168.2.168/Image/Faculty_Image/4957.jpg',9182080861, '4957@kluniversity.in', 'Mobile Application Development',"CSA", '2021-2022', 'EVEN'),
(6956, 'Dr.THIRUVENKADAM T', 'http://192.168.2.168/Image/Faculty_Image/6956.jpg',9942047762, '6956@kluniversity.in', 'Web And Social Media Technologies',"MECH", '2021-2022', 'EVEN'),
(7306, 'Mr.GHUFRAN AHMAD KHAN', 'http://192.168.2.168/Image/Faculty_Image/7306.jpg',9628094397, '7306@kluniversity.in', 'English Proficiency', "CSA",'2021-2022', 'EVEN'),
(4957, 'Mr.N VENKATA RAMANA', 'http://192.168.2.168/Image/Faculty_Image/4957.jpg', 9182080861, '4957@kluniversity.in', 'Problem Solving throught Programming',"CSA", '2021-2022', 'ODD'),
(7300, 'Dr.R D SATHIYA', 'http://192.168.2.168/Image/Faculty_Image/7300.jpg',9486273418, '7300@kluniversity.in', 'Computer Organisation and Architecture',"CSE", '2021-2022', 'ODD'),
(7591, 'Mr.SRINIVAS KONA', 'http://192.168.2.168/Image/Faculty_Image/7591.jpg',8125717617, '7591@kluniversity.in', 'Essentials Of Information Technology',"CDOE", '2021-2022', 'ODD'),
(6644, 'Mr.KALLEPALLI ROHIT KUMAR', 'http://192.168.2.168/Image/Faculty_Image/6644.jpg',8885524460, '6644@kluniversity.in', 'Mathematics For Computer Science',"CSE", '2021-2022', 'ODD'),
(7294, 'Mr.RAMA KRISHNA YELLAPRAGADA', 'http://192.168.2.168/Image/Faculty_Image/7294.jpg',9959115711, '7294@kluniversity.in', 'Integrated Professional English',"CSE", '2021-2022', 'ODD'),
(7302, 'Dr.TAUSHIF ANWAR', 'http://192.168.2.168/Image/Faculty_Image/7302.jpg',758624469, '7302@kluniversity.in', 'Ecology and Environment',"CSA", '2021-2022', 'ODD'),
(6607, 'Dr.BANDARUPALLI MOULESWARA RAO', 'http://192.168.2.168/Image/Faculty_Image/6607.jpg',9885061380, '6607@kluniversity.in', 'Java Full Stack Development',"CSE", '2022-2023', 'EVEN'),
(7306, 'Mr.GHUFRAN AHMAD KHAN', 'http://192.168.2.168/Image/Faculty_Image/7306.jpg',9628094397, '7306@kluniversity.in', 'Object Oriented Analysis & Design',"CSA", '2022-2023', 'EVEN'),
(7243, 'Mr.ZULFIKAR ALI ANSARI', 'http://192.168.2.168/Image/Faculty_Image/7243.jpg',9956977954, '7243@kluniversity.in', 'Cloud Information Security(CTIS)',"CSE", '2022-2023', 'EVEN'),
(7300, 'Dr.R D SATHIYA', 'http://192.168.2.168/Image/Faculty_Image/7300.jpg',9486273418, '7300@kluniversity.in', 'Statics for Data Science',"CSE", '2022-2023', 'EVEN'),
(7591, 'Mr.SRINIVAS KONA', 'http://192.168.2.168/Image/Faculty_Image/7591.jpg',8125717617, '7591@kluniversity.in', 'Business Intelligence',"CDOE", '2022-2023', 'EVEN'),
(4957, 'Mr.N VENKATA RAMANA', 'http://192.168.2.168/Image/Faculty_Image/4957.jpg',9182080861, '4957@kluniversity.in', 'Term Paper',"CSA", '2022-2023', 'EVEN'),
(3673, 'Dr.C.M.SHEELA RANI', 'http://192.168.2.168/Image/Faculty_Image/3673.jpg',9486273418, '3673@kluniversity.in', 'Universl Human Values & Professional Ethics',"ECE", '2022-2023', 'EVEN'),
(6644, 'Mr.KALLEPALLI ROHIT KUMAR', 'http://192.168.2.168/Image/Faculty_Image/6644.jpg',8885524460, '6644@kluniversity.in', 'Essential Skills For Employability(HSS4)',"CSE", '2022-2023', 'EVEN'),
(7302, 'Dr.TAUSHIF ANWAR', 'http://192.168.2.168/Image/Faculty_Image/7302.jpg',758624469, '7302@kluniversity.in', 'Operations Research',"CSA", '2022-2023', 'EVEN'),
(7591, 'Mr.SRINIVAS KONA', 'http://192.168.2.168/Image/Faculty_Image/7591.jpg',9885061380, '7591@kluniversity.in', 'Database Management Systems',"CDOE", '2022-2023', 'ODD'),
(7294, 'Mr.RAMA KRISHNA YELLAPRAGADA', 'http://192.168.2.168/Image/Faculty_Image/7294.jpg',9628094397, '7294@kluniversity.in', 'Computer Networks',"CSE", '2022-2023', 'ODD'),
(4957, 'Mr.N VENKATA RAMANA', 'http://192.168.2.168/Image/Faculty_Image/4957.jpg',9956977954, '4957@kluniversity.in', 'Web Development using Python',"CSA", '2022-2023', 'ODD'),
(7243, 'Mr.ZULFIKAR ALI ANSARI', 'http://192.168.2.168/Image/Faculty_Image/7243.jpg',9486273418, '7243@kluniversity.in', 'Cloud Architecture',"CSE", '2022-2023', 'ODD'),
(3673, 'Dr.C.M.SHEELA RANI', 'http://192.168.2.168/Image/Faculty_Image/3673.jpg',8125717617, '3673@kluniversity.in', 'Dataware Hourse Management',"ECE", '2022-2023', 'ODD'),
(7300, 'Dr.R D SATHIYA', 'http://192.168.2.168/Image/Faculty_Image/7300.jpg',9182080861, '7300@kluniversity.in', 'Artifical Intelligence', "CSE", '2022-2023','ODD'),
(7302, 'Dr.TAUSHIF ANWAR', 'http://192.168.2.168/Image/Faculty_Image/7302.jpg',9486273418, '7302@kluniversity.in', 'Software Engineering', "CSA", '2022-2023','ODD'),
(7306, 'Mr.GHUFRAN AHMAD KHAN', 'http://192.168.2.168/Image/Faculty_Image/7306.jpg',8885524460, '7306@kluniversity.in', 'DESIGN THINKING AND INNOVATION',"CSA", '2022-2023', 'ODD'),
(6956, 'Dr.THIRUVENKADAM T', 'http://192.168.2.168/Image/Faculty_Image/6956.jpg',758624469, '6956@kluniversity.in', 'Robotics',"MECH", '2022-2023', 'ODD');




CREATE TABLE Notes_Data(
Branch_Name VARCHAR(16),
Semister_No  TINYINT UNSIGNED,
Course_Id  VARCHAR(16),
Notes_Name  VARCHAR(50),
Notes_Link VARCHAR(400) 
);

INSERT INTO Notes_Data(Branch_Name, Semister_No, Course_Id, Notes_Name, Notes_Link) VALUES 
  ('BCA','1','21BCA1102','Computer Organization & Architecture','https://1drv.ms/b/s!AsTwS4GYmJMFgRXD3WQaLKERpb07?e=Cw6xzo')
, ('BCA','1','21UC0009','Ecology And Environment','https://1drv.ms/b/s!AsTwS4GYmJMFgRRKq8U136V9Byfh?e=1NvGFJ')
, ('BCA','2','21BCA1103','Essentials Of Information Technology','https://1drv.ms/b/s!AsTwS4GYmJMFgRaEZF1MdkMZrqnX?e=wYUYSg')
, ('BCA','2','21BCA1101','Problem Solving Through Programming','https://1drv.ms/b/s!AsTwS4GYmJMFgRg-Shm_BI6UzagN?e=c16wr2')
, ('MCA','1','21CA1206','Data Structures','https://1drv.ms/b/s!AsTwS4GYmJMFgSLrzRzlx7p6rM-n?e=1mGK52')
, ('MCA','1','21CA1208','Mobile Application Development','https://1drv.ms/b/s!AsTwS4GYmJMFgSOUPiEFrQDtxknM?e=zb7w6E')
, ('MCA','2','21CA1205','Operating System','https://1drv.ms/b/s!AsTwS4GYmJMFgSE1ktes6ksF7kck?e=hTirfA')
, ('MCA','2','21CA1209','Web And Social Media Technologies','https://1drv.ms/b/s!AsTwS4GYmJMFgSTl2WAnpFj8zyuc?e=QKHFkp')
, ('BBA','1','21UC1101','Integrated Professional English','https://1drv.ms/b/s!AsTwS4GYmJMFgRfw1vGcT3paDgOa?e=wdTG9w')
, ('BBA','1','21CA1209','Web And Social Media Technologies','https://1drv.ms/b/s!AsTwS4GYmJMFgSTl2WAnpFj8zyuc?e=QKHFkp')
, ('BBA','2','21CA21C1','Cloud Architecture','https://1drv.ms/b/s!AsTwS4GYmJMFgRt-Ean-MwZ6Gxjg?e=Kg1u5w')
, ('BBA','2','21CA2111','Computer Networks','https://1drv.ms/b/s!AsTwS4GYmJMFgRqaEkhGmtzC9QKy?e=9xzpbz')
, ('MBA','1','1CA2110','Database Management Systems','https://1drv.ms/b/s!AsTwS4GYmJMFgRyBX32iPutdrfiy?e=RuMxf1')
, ('MBA','1','21UC1203','DESIGN THINKING AND INNOVATION','https://1drv.ms/b/s!AsTwS4GYmJMFgR0mGMDgxwlel3DS?e=8ampqe')
, ('MBA','2','21CA2109','Software Engineering','https://1drv.ms/b/s!AsTwS4GYmJMFgR_IEQnicObEp5YW?e=hfrqOl')
, ('MBA','2','21CA2112P','Web Development using Python','https://1drv.ms/b/s!AsTwS4GYmJMFgR7Ol8zWwRHXwzDN?e=CHwFQK')
, ('Bcom','1','21CA22C2','Cloud Information Security(CTIS)','https://1drv.ms/b/s!AsTwS4GYmJMFgSaAqYJwGOO0E6di?e=733HaR')
, ('Bcom','1','21CA2213','Java Full Stack Development','https://1drv.ms/b/s!AsTwS4GYmJMFgSiNZ6heqy1s591b?e=FRMnbT')
, ('Bcom','2','21CA2214','Object Oriented Analysis & Design','https://1drv.ms/b/s!AsTwS4GYmJMFgSeNryly4kKMSRmc?e=llZP5X')
, ('Bcom','2','21UC0010','UNIVERSAL HUMAN VALUES & PROFESSIONAL ETHICS(HSS5)','https://1drv.ms/b/s!AsTwS4GYmJMFgSnkyr_MNN9JZTS0?e=mbFNNq');


create table raise_ticket(
	id NUMERIC , 
	branch VARCHAR(50), 
	issue varchar(250),
	create_at VARCHAR(15),
	issue_token VARCHAR(15)
);

INSERT INTO raise_ticket(id, branch, issue, create_at, issue_token) 
VALUES 
(1, 'BCA', 'Printer not working', '2022-01-15', 'IT001')
,(2, 'MBA', 'Internet connection issue', '2022-02-02', 'IT002')
,(3, 'Bcom', 'Software installation problem', '2022-03-10', 'IT003')
,(4, 'Mcom', 'Server down', '2022-04-05', 'IT004')
,(5, 'BCA', 'Email not working', '2022-05-20', 'IT005');


create table recent_view_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  items_title varchar(100),
  Student_Id INT,
  viewed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  logo VARCHAR(100)

);

INSERT INTO recent_view_table (items_title, Student_Id, viewed_at,logo) VALUES
  ('Profile view', 2100520187, '2023-05-28 10:15:00','http://192.168.2.168/Image/Icon/Profile_Icon.png'),
  ('Attendec', 2100520143, '2023-05-28 11:30:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png'),
  ('BCA Result', 2100520036, '2023-05-28 12:45:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png'),
  ('Quiz attend', 2100520150, '2023-05-28 13:00:00','http://192.168.2.168/Image/Icon/Quiz_Icon.png'),
  ('Announcement view', 2100520155, '2023-05-28 14:30:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png'),
  ('Profile view', 2100520150, '2023-05-28 10:5:00','http://192.168.2.168/Image/Icon/Profile_Icon.png'),
  ('Attendec', 2100520187, '2023-05-28 11:35:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png'),
  ('BCA Result', 2100520150, '2023-05-28 12:5:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png'),
  ('Quiz attend', 2100520036, '2023-05-28 13:06:00','http://192.168.2.168/Image/Icon/Quiz_Icon.png'),
  ('Announcement view', 2100520150, '2023-05-28 15:30:00','http://192.168.2.168/Image/Icon/Announcement_Icon.png');

create table Exam_Result(
Student_Id int, 
Student_Branch varchar(5), 
Student_Year VARCHAR(10),
Result varchar(250)
);



insert into Exam_Result(Student_Id,Student_Branch,Student_Year, Result) 
values
(2100520036,"bca","2022-2023","http://192.168.2.168/Result/BBA/2022-2023.pdf"),
(2100520036,"mca","2021-2022","http://192.168.2.168/Result/BBA/2021-2022.pdf"),
(2100520036,"bcom","2022-2023","http://192.168.2.168/Result/BBA/2022-2023.pdf"),
(2100520036,"mba","2021-2022","http://192.168.2.168/Result/BBA/2021-2022.pdf"),

(2100520150,"bca","2021-2022","http://192.168.2.168/Result/BCA/2021-2022.pdf"),
(2100520150,"mca","2021-2022","http://192.168.2.168/Result/MCA/2021-2022.pdf"),
(2100520150,"bcom","2022-2023","http://192.168.2.168/Result/BCOM/2022-2023.pd"),
(2100520150,"mba","2021-2022","http://192.168.2.168/Result/MBA/2021-2022.pdf"),

(2100520143,"bca","2021-2022","http://192.168.2.168/Result/BCA/2021-2022.pdf"),
(2100520143,"mca","2021-2022","http://192.168.2.168/Result/MCA/2021-2022.pdf"),
(2100520143,"bcom","2021-2022","http://192.168.2.168/Result/BCOM/2021-2022.pdf"),
(2100520143,"mba","2022-2023","http://192.168.2.168/Result/MBA/2022-2023.pdf"),

(2100520187,"bca","2021-2022","http://192.168.2.168/Result/BCA/2021-2022.pdf"),
(2100520187,"mca","2022-2023","http://192.168.2.168/Result/MCA/2021-2022.pdf"),
(2100520187,"bcom","2021-2022","http://192.168.2.168/Result/BCOM/2021-2022.pdf"),
(2100520187,"mba","2022-2023","http://192.168.2.168/Result/MBA/2022-2023.pdf");


-- CREATE TABLE Quiz_Detail(
--   Quiz_Year VARCHAR(10),
--   Quiz_Sem VARCHAR(5),
--   Branch_Name VARCHAR(5),
--   Course_Id VARCHAR(10),
--   Course_Name VARCHAR(50),
--   Co  VARCHAR(5),
--   Quiz_Id INT,
--   Quiz_Duration INT,
--   Quiz_Starting_Date VARCHAR(10),
--   Quiz_Ending_Date VARCHAR(10),
--   Quiz_Mode VARCHAR(10) DEFAULT NULL
-- );

CREATE TABLE Quiz_Detail(
  Quiz_Year VARCHAR(10),
  Quiz_Sem VARCHAR(5),
  Branch_Name VARCHAR(5),
  Course_Id VARCHAR(10),
  Course_Name VARCHAR(50),
  Co  VARCHAR(5),
  Quiz_Id INT,
  Quiz_Duration INT,
  Quiz_Starting_Date VARCHAR(10),
  Quiz_Ending_Date VARCHAR(10),
  Quiz_Mode VARCHAR(10) DEFAULT NULL
);

-- INSERT INTO Quiz_Detail (
--   Quiz_Year, Quiz_Sem, Branch_Name, Course_Id, Course_Name, Co, Quiz_Id,  Quiz_Duration, Quiz_Opening_Day, Quiz_Opening_Date, Quiz_Opening_Month,
--   Quiz_Opening_Year, Quiz_Opening_Time, Quiz_Closing_Day, Quiz_Closing_Date, Quiz_Closing_Month, Quiz_Closing_Year, Quiz_Closing_Time,
--   Quiz_Starting_Date, Quiz_Ending_Date, Quiz_Mode
-- )
-- VALUES (
--   '2021-2022', 'Sem1', 'CS', 'C001', 'Database Management', 'CO1', 1,  60, DAY('2023-06-23'), DATE('2023-06-23'), MONTH('2023-06-23'),  YEAR('2023-06-23'), '09:00:00', DAY('2023-06-25'),
--    DATE('2023-06-25'),  MONTH('2023-06-25'), YEAR('2023-06-25'), '18:00:00',  '2023-06-23', '2023-06-25', 'public'
-- );

INSERT INTO Quiz_Detail VALUES
("2021-2022","ODD","BCA","21CA2213","Java Full Stack Development","CO1","10001","30","10-06-2023","21-06-2023","public"),
("2021-2022","ODD","BCA","21CA2213","Java Full Stack Development","CO2","10002","60","12-06-2023","25-06-2023","private"),
("2021-2022","ODD","BCA","21CA22C2","Cloud Information Security","CO1","10003","30","16-06-2023","30-06-2023","public"),
("2021-2022","ODD","BCA","21CA22C2","Cloud Information Security","CO2","10004","120","06-06-2023","12-07-2023","private"),

("2022-2023","EVEN","BCA","21CA2214","Object Oriented Analysis And Design","CO1","10005","20","06-08-2023","16-06-2023","public"),
("2022-2023","EVEN","BCA","21CA2214","Object Oriented Analysis And Design","CO2","10006","100","10-06-2023","21-06-2023","private"),
("2022-2023","EVEN","BCA","21CA22D2","Statistics for Data Science","CO1","10007","60","05-06-2023","30-06-2023","public"),
("2022-2023","EVEN","BCA","21CA22D2","Statistics for Data Science","CO2","10008","10","06-06-2023","31-06-2023","private"),

("2021-2022","ODD","BCA","21CA22A2","Buisiness Intelligence","CO1","10009","50","01-06-2023","31-07-2023","public"),
("2021-2022","ODD","BCA","21CA22A2","Buisiness Intelligence","CO2","10010","60","01-06-2023","21-06-2023","private"),
("2021-2022","ODD","BCA","21CA22E1","Term Paper","CO1","10011","120","05-06-2023","21-07-2023","public"),
("2021-2022","ODD","BCA","21CA22E1","Term Paper","CO2","10012","60","20-06-2023","21-09-2023","private"),

("2021-2022","EVEN","BCA","21UC0010","Universal Human Values and Professional Ethics","CO1","10013","50","01-06-2023","21-06-2023","public"),
("2021-2022","EVEN","BCA","21UC0010","Universal Human Values and Professional Ethics","CO2","10014","60","18-06-2023","31-06-2023","private"),
("2021-2022","EVEN","BCA","21UC2103","Essential Skills For Employability(HSS4)","CO1","10015","60","19-06-2023","22-06-2023","public"),
("2021-2022","EVEN","BCA","21UC2103","Essential Skills For Employability(HSS4)","CO2","10016","30","17-06-2023","26-06-2023","private"),

("2021-2022","EVEN","BCA","21EI40B2","E-Commerce","CO1","10017","60","31-06-2023","05-07-2023","public"),
("2021-2022","EVEN","BCA","21EI40B2","E-Commerce","CO2","10018","120","10-06-2023","21-06-2023","private"),
("2021-2022","EVEN","BCA","21ME40B6","Operations Research","CO1","10019","60","31-06-2023","21-08-2023","public"),
("2021-2022","EVEN","BCA","21ME40B6","Operations Research","CO2","10020","30","10-06-2023","21-08-2023","private");


CRE TABLE Student_Quiz(
Student_Id BIGINT,
Course_Id VARCHAR(10),
Course_Name VARCHAR(50),
Co  VARCHAR(5),
Quiz_Id INT,
Quiz_Duration INT,
Quiz_Starting_Date VARCHAR(10),
Quiz_Ending_Date VARCHAR(10),
Quiz_Status VARCHAR(255) DEFAULT NULL,
Quiz_Marks VARCHAR(10) DEFAULT NULL
);

INSERT INTO Student_Quiz VALUES
("2100520036","21CA2213","Java Full Stack Development","CO1","10001","30","10-06-2023","21-06-2023","COMPLETE","23/30"),
("2100520036","21CA2213","Java Full Stack Development","CO2","10002","30","10-06-2023","21-06-2023","NOT COMPLETED","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO1","10003","30","16-06-2023","30-06-2023"," COMPLETE","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO2","10004","30","16-06-2023","30-06-2023"," COMPLETE","100/100");


INSERT INTO Student_Quiz VALUES
("2100520036","21CA2213","Java Full Stack Development","CO3","10005","45","10-06-2023","21-06-2023","COMPLETE","23/30"),
("2100520036","21CA2213","Java Full Stack Development","CO4","10006","240","10-06-2023","21-06-2023","NOT COMPLETED","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO3","10006","60","16-06-2023","30-06-2023"," COMPLETE","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO4","10007","20","16-06-2023","30-06-2023"," COMPLETE","100/100");

("2100520036","21CA2213","Java Full Stack Development","CO3","10005","45","10-06-2023","21-06-2023","COMPLETE","23/30"),
("2100520036","21CA2213","Java Full Stack Development","CO4","10006","240","10-06-2023","21-06-2023","NOT COMPLETED","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO3","10006","60","16-06-2023","30-06-2023"," COMPLETE","NA"),
("2100520036","21CA22C2","Cloud Information Security","CO4","10007","20","16-06-2023","30-06-2023"," COMPLETE","100/100");




-- ATE

-- ("2021-2022","ODD","BCA","21CA2213","Java Full Stack Development","CO1","30","10-06-2023","21-06-2023","public"),
-- ("2021-2022","ODD","BCA","21CA2213","Java Full Stack Development","CO2","10002","60","12-06-2023","25-06-2023","private"),
-- ("2021-2022","ODD","BCA","public"),
-- ("2021-2022","ODD","BCA","21CA22C2","Cloud Information Security","CO2","10004","120","06-06-2023","12-07-2023","private"),


CREATE TABLE Quiz_Table (
    Quiz_Id INT AUTO_INCREMENT PRIMARY KEY,
    Question VARCHAR(255) NOT NULL,
    Answer VARCHAR(255) NOT NULL,
    Option_1 VARCHAR(255) NOT NULL,
    Option_2 VARCHAR(255) NOT NULL,
    Option_3 VARCHAR(255) NOT NULL,
    Option_4 VARCHAR(255) NOT NULL
);

CREATE TABLE Home_Assignment_List(
  Course_Id VARCHAR(10),
  Course_Name VARCHAR(255),
  Course_Year VARCHAR(10),
  Course_Sem VARCHAR(5),
  Course_Co VARCHAR(5),
  Home_Assignment_Link VARCHAR(255),
  Starting_Date DATE,
  Ending_Data DATE
);

INSERT INTO Home_Assignment_List (Course_Id, Course_Name, Course_Co, Home_Assignment_Link, Starting_Date, Ending_Data)
VALUES 
('21CA1101', 'Problem Solving through Programming', 'CO1', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2023-07-20', '2023-07-30'),
       ('21CA1101', 'Problem Solving through Programming', 'CO2', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png', '2023-07-30', '2023-07-31'),
       ('21CA1101', 'Problem Solving through Programming', 'CO3', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png', '2023-08-10', '2023-08-20'),
       ('21CA1101', 'Problem Solving through Programming', 'CO4', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png', '2023-08-20', '2023-08-30');



INSERT INTO Home_Assignment_List (Course_Id, Course_Name, Course_Co, Home_Assignment_Link, Starting_Date, Ending_Data)
VALUES ('21CA1101', 'Problem Solving through Programming', 'CO1', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2023-07-20', '2023-07-30'),
       ('21CA1101', 'Problem Solving through Programming', 'CO2', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png', '2023-07-30', '2023-07-31'),
       ('21CA1101', 'Problem Solving through Programming', 'CO3', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png', '2023-08-10', '2023-08-20'),
       ('21CA1101', 'Problem Solving through Programming', 'CO4', 'http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png', '2023-08-20', '2023-08-30');




INSERT INTO Home_Assignment_List (Course_Id, Course_Name, Course_Co, Home_Assignment_Link, Starting_Date, Ending_Data)
VALUES 
('21CA1102','Computer Organisation and Architecture			','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-09','2022-11-18'),
('21CA1103','Essentials of Information Technology 			','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-12','2022-11-27'),
('21CA1104','Mathematics for computer Science				','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-21','2022-11-22'),
('21UC0009','Ecology and Environment						','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-04','2022-11-18'),
('21UC1101','Integrated professional English				','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-20','2022-11-07'),
('21CA1205','Operating System								','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-16','2022-11-22'),
('21CA1206','data Structures								','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-20','2022-11-24'),
('21CA1207','Object Oriented Programming					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-03','2022-11-20'),
('21CA1208','Mobile Application development   				','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-14','2022-11-21'),
('21CA1209','Web and Social Media Technologies				','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-03','2022-11-27'),
('20UC1202','English Proficiency							','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-26','2022-11-22'),
('21CA2110','Database Management Systems					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-06','2022-11-02'),
('21CA2111','Computer Networks								','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-10','2022-11-15'),
('21CA2112','Web Development Using Python 					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-26','2022-11-15'),
('21CA21C1','Cloud Architecture								','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-09','2022-11-12'),
('21CA21D1','Data Warehousing & mining						','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-05','2022-11-04'),
('21CA21A1','Artificial Intelligence						','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-13','2022-11-10'),
('21CA2109','Software Engineering							','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-06','2022-11-13'),
('21UC1203','Design Thinking And Innovation 				','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-22','2022-11-03'),
('21ME40B4','Robotics										','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-13','2022-11-09'),
('21CA2213','Java Full Stack Development					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-10','2022-11-26'),
('21CA2214','Object Oriented Analysis And Design			','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-13','2022-11-22'),
('21CA22C2','Cloud Information Security 					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-15','2022-11-22'),
('21CA22D2','Statistics for Data Science					','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-06','2022-11-18'),
('21CA22A2','Buisiness Intelligence							','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-14','2022-11-18'),
('21CA22E1','Term Paper										','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-14','2022-11-22'),
('21UC0010','Universal Human Values and Professional Ethics	','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-23','2022-11-10'),
('21UC2103','Essential Skills For Employability(HSS4)		','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-01','2022-11-01'),
('21EI40B2','E-Commerce										','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-16','2022-11-19'),
('21ME40B6','Operations Research							','CO1','http://192.168.2.168/Home_Assignment_Question/21CA1101CO1.png','2022-08-24','2022-11-25'),
('21CA1102','Computer Organisation and Architecture			','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-23','2023-06-02'),
('21CA1103','Essentials of Information Technology 			','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-27','2023-06-04'),
('21CA1104','Mathematics for computer Science				','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-25','2023-06-09'),
('21UC0009','Ecology and Environment						','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2022-12-24','2023-06-12'),
('21UC1101','Integrated professional English				','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-14','2023-06-26'),
('21CA1205','Operating System								','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-04','2023-06-22'),
('21CA1206','data Structures								','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-01-02','2023-06-11'),
('21CA1207','Object Oriented Programming					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2022-12-15','2023-06-10'),
('21CA1208','Mobile Application development   				','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-26','2023-06-10'),
('21CA1209','Web and Social Media Technologies				','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-11','2023-06-24'),
('20UC1202','English Proficiency							','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-01-29','2023-06-05'),
('21CA2110','Database Management Systems					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-15','2023-06-17'),
('21CA2111','Computer Networks								','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-01-16','2023-06-17'),
('21CA2112','Web Development Using Python 					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-23','2023-06-09'),
('21CA21C1','Cloud Architecture								','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-12','2023-06-29'),
('21CA21D1','Data Warehousing & mining						','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-17','2023-06-06'),
('21CA21A1','Artificial Intelligence						','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-25','2023-06-25'),
('21CA2109','Software Engineering							','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-06','2023-06-15'),
('21UC1203','Design Thinking And Innovation 				','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-12','2023-06-20'),
('21ME40B4','Robotics										','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-03','2023-06-20'),
('21CA2213','Java Full Stack Development					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-25','2023-06-01'),
('21CA2214','Object Oriented Analysis And Design			','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-14','2023-06-10'),
('21CA22C2','Cloud Information Security 					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-01-21','2023-06-07'),
('21CA22D2','Statistics for Data Science					','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-07','2023-06-09'),
('21CA22A2','Buisiness Intelligence							','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-18','2023-06-24'),
('21CA22E1','Term Paper										','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2022-12-08','2023-06-05'),
('21UC0010','Universal Human Values and Professional Ethics	','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-25','2023-06-14'),
('21UC2103','Essential Skills For Employability(HSS4)		','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2022-12-07','2023-06-04'),
('21EI40B2','E-Commerce										','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-03-10','2023-06-22'),
('21ME40B6','Operations Research							','CO2','http://192.168.2.168/Home_Assignment_Question/21CA1101CO2.png','2023-02-23','2023-06-23'),
('21CA1102','Computer Organisation and Architecture			','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-10','2023-09-09'),
('21CA1103','Essentials of Information Technology 			','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-15','2023-09-23'),
('21CA1104','Mathematics for computer Science				','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-01','2023-09-13'),
('21UC0009','Ecology and Environment						','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-14','2023-09-20'),
('21UC1101','Integrated professional English				','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-20','2023-09-14'),
('21CA1205','Operating System								','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-10','2023-09-16'),
('21CA1206','data Structures								','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-10','2023-09-30'),
('21CA1207','Object Oriented Programming					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-26','2023-09-16'),
('21CA1208','Mobile Application development 				','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-24','2023-09-22'),
('21CA1209','Web and Social Media Technologies				','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-26','2023-09-12'),
('20UC1202','English Proficiency							','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-11','2023-09-13'),
('21CA2110','Database Management Systems					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-04','2023-09-05'),
('21CA2111','Computer Networks								','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-14','2023-09-15'),
('21CA2112','Web Development Using Python 					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-24','2023-09-02'),
('21CA21C1','Cloud Architecture								','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-14','2023-09-18'),
('21CA21D1','Data Warehousing & mining						','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-29','2023-09-29'),
('21CA21A1','Artificial Intelligence						','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-07','2023-09-18'),
('21CA2109','Software Engineering							','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-03','2023-09-04'),
('21UC1203','Design Thinking And Innovation 				','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-02','2023-09-09'),
('21ME40B4','Robotics										','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-04','2023-09-19'),
('21CA2213','Java Full Stack Development					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-27','2023-09-17'),
('21CA2214','Object Oriented Analysis And Design			','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-05','2023-09-30'),
('21CA22C2','Cloud Information Security 					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-31','2023-09-11'),
('21CA22D2','Statistics for Data Science					','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-04','2023-09-19'),
('21CA22A2','Buisiness Intelligence							','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-11','2023-09-25'),
('21CA22E1','Term Paper										','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-28','2023-09-09'),
('21UC0010','Universal Human Values and Professional Ethics	','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-26','2023-09-30'),
('21UC2103','Essential Skills For Employability(HSS4)		','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-08','2023-09-01'),
('21EI40B2','E-Commerce										','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-29','2023-09-04'),
('21ME40B6','Operations Research							','CO3','http://192.168.2.168/Home_Assignment_Question/21CA1101CO3.png','2023-07-16','2023-09-22'),
('21CA1102','Computer Organisation and Architecture			','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-16','2023-12-24'),
('21CA1103','Essentials of Information Technology 			','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-17','2023-12-02'),
('21CA1104','Mathematics for computer Science				','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-13','2023-12-02'),
('21UC0009','Ecology and Environment						','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-08','2023-12-14'),
('21UC1101','Integrated professional English				','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-01','2023-12-13'),
('21CA1205','Operating System								','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-23','2023-12-03'),
('21CA1206','data Structures								','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-01','2023-12-29'),
('21CA1207','Object Oriented Programming					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-08','2023-12-03'),
('21CA1208','Mobile Application development  			 	','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-07','2023-12-22'),
('21CA1209','Web and Social Media Technologies				','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-12','2023-12-24'),
('20UC1202','English Proficiency							','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-28','2023-12-27'),
('21CA2110','Database Management Systems					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-03','2023-12-08'),
('21CA2111','Computer Networks								','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-01','2023-12-23'),
('21CA2112','Web Development Using Python 					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-04','2023-12-14'),
('21CA21C1','Cloud Architecture								','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-25','2023-12-27'),
('21CA21D1','Data Warehousing & mining						','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-19','2023-12-18'),
('21CA21A1','Artificial Intelligence						','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-17','2023-12-03'),
('21CA2109','Software Engineering							','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-12','2023-12-02'),
('21UC1203','Design Thinking And Innovation 				','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-21','2023-12-08'),
('21ME40B4','Robotics										','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-14','2023-12-14'),
('21CA2213','Java Full Stack Development					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-17','2023-12-08'),
('21CA2214','Object Oriented Analysis And Design			','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-14','2023-12-05'),
('21CA22C2','Cloud Information Security 					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-13','2023-12-12'),
('21CA22D2','Statistics for Data Science					','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-13','2023-12-26'),
('21CA22A2','Buisiness Intelligence							','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-13','2023-12-10'),
('21CA22E1','Term Paper										','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-17','2023-12-30'),
('21UC0010','Universal Human Values and Professional Ethics	','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-26','2023-12-23'),
('21UC2103','Essential Skills For Employability(HSS4)		','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-03','2023-12-06'),
('21EI40B2','E-Commerce										','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-11','2023-12-13'),
('21ME40B6','Operations Research							','CO4','http://192.168.2.168/Home_Assignment_Question/21CA1101CO4.png','2023-10-11','2023-12-02');

-- CREATE TABLE Home_Assignment_Submission(
--   Student_Id BIGINT,
--   Assignment_Id BIGINT,
--   Aissgnment_Course_Code VARCHAR(10) DEFAULT NULL, 
--   Assignment_Course_Name VARCHAR(50) DEFAULT NULL,
--   Assignment_Year VARCHAR(10) DEFAULT NULL,
--   Assignment_Sem VARCHAR(5) DEFAULT NULL,
--   Assignment_Status INT(2) DEFAULT 0,
--   Assignment_Path VARCHAR(200) DEFAULT NULL
-- );
-- INSERT TABLE Home_Assignment_Submission(Student_Id,Assignment_Id,Assignment_Status,Assignment_Path) VALUES ("$Student_Id","$Assignment_Id","$Status","$Home_Assignment_Path");





CREATE TABLE Home_Assignment_Submission(
  Student_Id BIGINT ,
  Course_Id VARCHAR(10),
  Course_Name VARCHAR(255),
  Course_Year VARCHAR(10),
  Course_Sem VARCHAR(5),
  Course_Co VARCHAR(5),
  Student_Home_Assignment_Link VARCHAR(300) PRIMARY KEY,
  Submited_Status VARCHAR(50) DEFAULT "Submitted for grading",
  Grading_Status VARCHAR(50) DEFAULT "Not graded",
  Home_Assignment_Mark INT DEFAULT NULL 
);

INSERT INTO Home_Assignment_Submission  (`Student_Id`, `Course_Id`, `Course_Name`,`Course_Year`,`Course_Sem`, `Course_Co`, `Student_Home_Assignment_Link`) VALUES
(2100520036,'21CA1101','Problem Solving through Programming','2021-2022', 'ODD','CO1','http://192.168.2.168/Home_Assignment_Submission/2100520036_21CA1101CO1.pdf'),
(2100520036,'21CA1101','Problem Solving through Programming','2021-2022', 'ODD','CO2','http://192.168.2.168/Home_Assignment_Submission/2100520036_21CA1101CO2.pdf');