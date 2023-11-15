INSERT INTO HOSPITAL VALUES(2,'St Teresa',100),(3,'Columbia',50),(4,'St Lukes',150),(5,'Middlesex Hospital',250),(6,'Priority Hospital',350),(7,'Royal London',500),(8,'St Ann',400),(9,'Gordon',100),(10,'Mallya',900)
,(11,'St Pancras',55),(12,'Indira Gandhi',230),(13,'Nightingale',120),(14,'St Peter',600),(15,'King George',310),(16,'claybury',1000),(17,'Wellington',430),(18,'St Leonard',100),(19,'Mile end',250),(20,'Oldchurch',700),(21,'Queens',400),
(22,'Hammersmith',520),(23,'Fulham',120),(24,'Friern',150),(25,'St Mark',300),(26,'Bromley',130),(27,'Guys',500),(28,'Lambeth',420),(29,'London Bridge',600),(30,'Maudsley',800),(31,'Priory',50),(32,'Queen Mary',700),(33,'St Thomas',800),
(34,'St Alfege',570),(35,'Barnes',570);

INSERT INTO DOCTOR VALUES(101,'John Doe',1,'2022-04-01','Cardiology',5000,NULL),(102,'Jane Smith',2,'2021-03-01','Pediatrics',4500,NULL),(103,'Michael Johnson',3,'2020-04-01','Orthopaedics',6000,NULL),(104,'Sarah Davis',4,'2021-03-10','Internal Medicine',5500,NULL),
(105,'Robert Wilson',5,'2019-02-11','Dermatology',5200,NULL),(106,'Emily Thomson',6,'2020-01-01','Neurology',5800,NULL),(107,'David Anderson',7,'2021-08-11','Opthalmolgy',5300,NULL),(108,'Jennifer lee',8,'2023-04-01','Gastrornterology',5400,NULL),(109,'Mathew Turner',9,'2021-01-08','Psychiatry',5600,NULL),
(110,'Olivia',10,'2017-06-23','Family Medicine',5900,NULL),(111,'William Garcia',11,'2018-09-21','Emergency Medicine',5100,NULL),(112,'Sophia Martinez',12,'2016-05-18','Obstetrics and Gynecology',5700,NULL),(113,'Michael Brown',13,'2023-05-06','Orthopedics',5000,NULL),
(114,'Prajwal',14,'2021-03-02','Allergy and Immunology',6300,NULL),(115,'Aashu',15,'2020-06-08','Anesthesiology',5900,NULL),(116,'Saurabh',16,'2016-02-20','Colon and Rectal Surgeon',6200,NULL),(117,'Rohith',17,'2019-10-01','General Surgery',5400,NULL),
(118,'Nikhil',18,'2018-09-01','ENT',5600,NULL),(119,'Rajini',19,'2014-03-02','Forensic Pathology',6800,NULL),(120,'Sridhar',20,'2021-01-01','Genetics and Genomics',4500,NULL),(121,'Alisha',21,'2020-03-16','Pediatric Surgery',4600,NULL),(122,'Venky',22,'2017-07-10','Hospice and Palliative medicine',3900,NULL),(123,'ABC',23,'2013-02-04','Hospital Medicine',5400,NULL),
(124,'Shiv',24,'2016-01-03','Internal Medicine',3400,NULL),(125,'Vish',25,'2019-03-01','Obstetrics and Gynacology',2900,NULL),(126,'Vicky',26,'2021-06-01','Opthalmic Surgery',6900,NULL),(127,'Vikram',27,'2018-01-03','Otolaryngology',5000,NULL),
(128,'Appu',28,'2019-06-03','Pathology',5200,NULL),(129,'VS',29,'2022-04-01','Pediatrics',4300,NULL),(130,'John Doe',30,'2014-02-27','Plastic Surgery',6200,NULL),(131,'Golu',31,'2017-07-01','Homeopathy',4300,NULL),
(132,'CHeedu',32,'2015-05-01','Preventive Medicine',5100,NULL),(133,'Labu',33,'2016-03-02','Psychiatry',3200,NULL),(134,'Benne',34,'2011-04-01','Radiology',3200,NULL),(135,'Potato',35,'2018-06-12','Rheumatology',3100,NULL);

SELECT * FROM HOSPITAL;

SELECT * FROM DOCTOR;

SELECT SPECIALTY,SALARY FROM DOCTOR;

SELECT * FROM DOCTOR
WHERE hospital_id = 20;

UPDATE DOCTOR
SET EXPERIENCE = 2
WHERE DOCTOR_ID = 120;





