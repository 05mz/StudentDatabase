-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8894
-- Generation Time: Jan 19, 2021 at 08:18 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `student_data_base`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure` (IN `usn` VARCHAR(10))  BEGIN
	select s.usn ,s.name, s.dept_id ,s.phone,s.address,s.sem,s.batch,r.SGPA
    from student as s INNER JOIN result as r
    ON s.usn=r.usn
    where s.usn=usn;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure2` (IN `usn` VARCHAR(10))  BEGIN
SELECT s.usn,s.name,s.dept_id,s.email,s.phone,s.address,s.sem,s.batch,s.gender,ca.description,exa.content,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6
    from student s,cocurricular_activities ca , extra_curricular_activities exa ,subject_marks sm
	where s.usn=ca.usn AND ca.usn=exa.usn and exa.usn=sm.usn AND usn=usn;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure3` (IN `usn` VARCHAR(10))  BEGIN
	SELECT s.usn,s.name,s.dept_id,s.email,s.phone,s.address,s.sem,s.batch,s.gender,ca.description,exa.content,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6
    from student s,cocurricular_activities ca , extra_curricular_activities exa ,subject_marks sm
	where s.usn=ca.usn AND ca.usn=exa.usn and exa.usn=sm.usn AND usn=usn;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure4` (IN `usn` VARCHAR(10))  BEGIN
	SELECT s.usn,s.email,s.dept_id,s.phone,s.address,s.sem,s.batch,s.gender,ca.description,exa.content,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6
    from student s,cocurricular_activities ca , extra_curricular_activities exa ,subject_marks sm
	where s.usn=ca.usn AND ca.usn=exa.usn and exa.usn=sm.usn AND s.usn=usn;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure5` (IN `usn` VARCHAR(10))  BEGIN
SELECT s.usn,s.name,s.dept_id,s.sem,s.batch,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6,sm.total,sm.per
from student s,subject_marks sm where s.usn=sm.usn AND s.usn=usn;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `stored_procedure6` (IN `usn` VARCHAR(10))  BEGIN
SELECT s.usn,s.name,s.dept_id,s.sem,s.batch,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6,sm.total,sm.per,
(case
	when sm.per BETWEEN 85 and 100 then 'Distinction'
	when sm.per BETWEEN 70 and 84 then 'First class'
	when sm.per between 50 AND 69 then 'second class'
	else 'Fail'
end)as rank
from student s,subject_marks sm where s.usn=sm.usn AND s.usn=usn;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cocurricular_activities`
--

CREATE TABLE `cocurricular_activities` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cocurricular_activities`
--

INSERT INTO `cocurricular_activities` (`usn`, `name`, `date`, `sem`, `description`) VALUES
('1DT18CS055', 'Prashanth Reddy', '27-02-2020', '4', 'Web Development Conducted CSI 33rd Convention in DSATM'),
('1DT18CS065', 'Nafey', '23-09-2019', '3', 'Debate event organized in The Esperenza  Cultural Fest of DSATM'),
('1DT18CV002', 'CIVIL', '25-06-2019', '5', 'DID A GREAT JOB IN THE CONTRUCTION FIELD'),
('1DT18EC035', 'Hrushikesh B Chavare', '27-02-2019', '2', 'Inter College Science Forum held at DSATM , Bengaluru.'),
('1DT18IS002', 'Ayush Dravid', '27-02-2020', '5', '33rd CSI convention held at DSATM and participated in event web-development'),
('1DT18IS002', 'Aditya Prasad', '27-02-2020', '4', 'CSI 33rd convention held at DSATM participated in Decoding and also been part of the as volunteer.'),
('1DT18IS015', 'BHARATH H J', '15-09-20', '5', 'CPA: Programming Essentials in C++ \r\nDuring the Cisco Networking Academy® course, administered by the undersigned instructor, the student has studied the following skills:\r\nThis Statement of Achievement is to acknowledge that during the course CPA: Programming Essentials in C++, the student has been able to accomplish coding tasks related to the basics of programming in the C++ language, and understands the fundamental notions and techniques used in object-oriented programming.\r\nBy completing the course, the student is now ready to attempt the qualification CPA – C++ Certified Associate Programmer Certification, from the C++ Institute.'),
('1DT18IS023', 'Deepayan Ghosh', '17-08-2020', '5', 'SIMA Analaytica LTD : Full-stack Developer as intern'),
('1DT18IS039', 'Jason Francis Fernandes', '16-10-2020', '5', 'LIC POLICY Return Management System Project 2020 had a role of Free Lancer.'),
('1DT18IS052', 'MANVITH J Y', '30-09-2020', '4', 'UDEMY Course : Introduction to Databases and SQL online course under the guidance of Rakesh Gopalakrishnan'),
('1dt18me044', 'nagaraj', '25-06-2019', '5', 'hightest six'),
('1DT18ME078', 'shivaraj', '25-06-2019', '5', 'won the hostel premier league');

--
-- Triggers `cocurricular_activities`
--
DELIMITER $$
CREATE TRIGGER `tr_ins_cocuuricular` BEFORE INSERT ON `cocurricular_activities` FOR EACH ROW SET NEW.description=UPPER(NEW.description)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`) VALUES
('1', 'ISE'),
('2', 'CSE'),
('3', 'ECE'),
('4', 'CIVIL');

-- --------------------------------------------------------

--
-- Table structure for table `extra_curricular_activities`
--

CREATE TABLE `extra_curricular_activities` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `content` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extra_curricular_activities`
--

INSERT INTO `extra_curricular_activities` (`usn`, `name`, `sem`, `date`, `content`) VALUES
('1DT18CS065', 'Nafey', '3', '21-10-2019', 'Volley Ball taluk level held by sports auhority of VTU at Bengaluru'),
('1DT18IS012', 'Ayush Dravid', '3', '18-04-2020', 'DANCE COMPETITION of the event Esperanza'),
('1DT18IS023', 'Deepayan Ghosh', '4', '08-02-2020', 'Karate National Level held at Bengaluru and had secured Bronze (3rd Position) '),
('1dt18me044', 'nagaraj', '5', '25-06-2019', 'straight six '),
('1DT18ME078', 'shivaraj', '5', '25-06-2019', 'cricket tournament runner-up');

-- --------------------------------------------------------

--
-- Table structure for table `remainder`
--

CREATE TABLE `remainder` (
  `usn` varchar(10) NOT NULL,
  `message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `remainder`
--

INSERT INTO `remainder` (`usn`, `message`) VALUES
('1dt18cs064', 'HizaidYou are eligible for plcaement, keep it up.');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sem` varchar(20) DEFAULT NULL,
  `SGPA` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`usn`, `name`, `sem`, `SGPA`) VALUES
('1DT18CS055', 'Prashanth Reddy', '4', 9),
('1dt18cs064', 'zaid', '5', 9),
('1DT18CS065', 'Nafey', '4', 9),
('1DT18EC035', 'Hrushikesh B Chavare', '4', 8),
('1DT18IS002', 'Aditya Prasad', '4', 9),
('1DT18IS012', 'Ayush Dravid', '4', 8),
('1DT18IS015', 'Bharath H J', '4', 9),
('1DT18IS023', 'Deepayan Ghosh', '4', 8),
('1DT18IS039', 'Jason Francis Fernandes', '4', 9),
('1DT18IS052', 'Manvith J Y', '4', 8),
('1dt18me044', 'nagaraj', '5', 8),
('1DT18ME078', 'shivaraj', '5', 8);

--
-- Triggers `result`
--
DELIMITER $$
CREATE TRIGGER `after_members_insert` AFTER INSERT ON `result` FOR EACH ROW BEGIN
    IF NEW.SGPA<6 THEN
        INSERT INTO remainder(usn, message)
        VALUES(new.usn,CONCAT('Hi ', NEW.name, ' Please improve your SGPA to get eligibility for DSATM Placements 2021.'));
    ELSE
    	insert into remainder(usn,message)
        VALUES(new.usn,concat('Hi ',NEW.name,' You are eligible for plcaement, keep it up.'));
    END IF;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `testa_trig` BEFORE INSERT ON `result` FOR EACH ROW BEGIN
    IF (NEW.SGPA < 7) THEN
        SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Warning: c > 100!';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `testa_trig1` BEFORE INSERT ON `result` FOR EACH ROW BEGIN
    IF (NEW.SGPA < 7) THEN
         SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'YOUR SGPA IS LOW';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `testa_trig2` BEFORE INSERT ON `result` FOR EACH ROW BEGIN
    IF (NEW.SGPA < 7) THEN
        SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'LOW SGPA';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(70) NOT NULL,
  `dept_id` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `batch` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `email`, `dept_id`, `phone`, `address`, `sem`, `batch`, `gender`) VALUES
('1DT18CS055', 'Prashanth Reddy', 'lprashanth987@gmail.com', '2', '9019723839', 'Ward 3,Bsaveshwaranagar,Ballari', '5', '2018', 'MALE'),
('1dt18cs064', 'MOHAMMAD ZAID', '05zaidm@gmail.com', '1', '7795506624', '', '5', '2018-2022', 'm'),
('1DT18CS065', 'Nafey', 'nafeyahthenx@gmail.com', '2', '8904991412', 'Wadi-e-huda , Shivamogga Karnataka', '5', '2018', 'MALE'),
('1dt18cs086', 'SAHIL', 'sahikvssahil@gmail.com', '1', '874663276', 'raghuvanahalli', '5', '2018-22', 'M'),
('1DT18CV001', 'Abhishek M G', 'abhishekmg@gmail.com', '3', '9916553352', 'Gulbarga', '5', '2018-22', 'M'),
('1DT18CV002', 'ABHINANDAN', '@gmail.com', '4', '9008124644', 'xyz', '5', '2018-22', 'M'),
('1DT18EC035', 'Hrushikesh B Chavare', 'infohrushikesh@gmail.com', '3', '9945895800', 'House No 429 Chavare Street, Shedbal, Belagavi Karnataka', '5', '2018', 'MALE'),
('1DT18IS002', 'Aditya Prasad', '1dt18is002.adityaprasad@gmail.com', '1', '8930528335', 'Brigade Meadows Kaglipura Bengaluru Karnataka', '5', '2018', 'MALE'),
('1DT18IS012', 'Ayush Dravid', '1dt18is012.ayushdravid@gmail.com', '1', '8618529543', 'Sakalwara Bengaluru Karnataka', '5', '2018', 'MALE'),
('1DT18IS015', 'Bharath H J', '1dt18is015.bharath@gmail.com', '1', '6362787700', 'Shree Nilaya , Jayanagar 1st Stage Hassan 573201 Karnataka', '5', '2018', 'MALE'),
('1DT18IS023', 'Deepayan Ghosh', '1d18is023.deepayanghosh@gmail.com', '1', '7019449052', 'Gottigere Bannerghata Banglore Karnataka', '5', '2018', 'MALE'),
('1DT18IS039', 'Jason Francis Fernandes', '1dt18is039.jason@gmail.com', '1', '8310174544', 'LIC of India Quarters Karwar Karnataka', '5', '2018', 'MALE'),
('1DT18IS052', 'ManvithJ Y', '1dt18is052.manvithjy@gmail.com', '1', '9482818188', 'Javagal Thirthahalli Taluk Shivmogha Karnataka', '5', '2018', 'MALE'),
('1dt18me044', 'NAGARAJ', 'nagaraj@gmail.com', '4', '9916553352', 'vidyanagar sedam', '5', '2018-22', 'M'),
('1DT18ME078', 'SHIVARAJ', 'shivaraj@gmail.com', '4', '9916553352', 'tumkur', '5', '2018-22', 'M'),
('AA', 'AA', 'aa', '1', 'AA', 'AA', 'AA', 'AA', 'AA'),
('as', 'SAS', 's@gma', '2', 'das', 'as', 'a', 'aa', 'm'),
('SA', 'SAHIL', 'sa', '2', '9009', 'SASA', '5', '2018-22', 'M'),
('SSS', 'SS', 'ss', '2', 'SS', 'SS', '5', 'SS', 'SS'),
('ssss', 'SHIVARAJ', 'd', '2', 'd', 'd', 'd', 'd', 'd');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `tpr_up_char` BEFORE UPDATE ON `student` FOR EACH ROW set NEW.name=LOWER(NEW.name)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_ins_chr` BEFORE INSERT ON `student` FOR EACH ROW set NEW.name= UPPER(NEW.name)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_ins_student` BEFORE INSERT ON `student` FOR EACH ROW SET NEW.name=UPPER(NEW.name)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_ins_student2` BEFORE UPDATE ON `student` FOR EACH ROW SET NEW.email=UPPER(NEW.name)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_ins_student3` BEFORE INSERT ON `student` FOR EACH ROW SET NEW.email=LOWER(NEW.email)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_marks`
--

CREATE TABLE `subject_marks` (
  `usn` varchar(10) NOT NULL,
  `Subject1` int(3) DEFAULT NULL,
  `Subject2` int(3) DEFAULT NULL,
  `Subject3` int(3) DEFAULT NULL,
  `Subject4` int(3) DEFAULT NULL,
  `Subject5` int(3) DEFAULT NULL,
  `Subject6` int(3) DEFAULT NULL,
  `total` int(3) DEFAULT NULL,
  `per` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_marks`
--

INSERT INTO `subject_marks` (`usn`, `Subject1`, `Subject2`, `Subject3`, `Subject4`, `Subject5`, `Subject6`, `total`, `per`) VALUES
('1DT18CS055', 89, 89, 89, 89, 89, 89, NULL, NULL),
('1dt18cs064', 83, 82, 83, 82, 81, 81, 492, 82),
('1DT18CS065', 91, 91, 91, 91, 91, 91, NULL, NULL),
('1dt18me044', 87, 70, 70, 70, 70, 70, NULL, NULL),
('1DT18ME078', 87, 87, 87, 87, 87, 87, NULL, NULL),
('AA', 89, 91, 87, 91, 87, 91, NULL, NULL),
('as', 90, 90, 90, 90, 90, 90, 540, 324),
('sa', 90, 90, 90, 90, 90, 90, 540, 90),
('ssss', 55, 55, 55, 55, 55, 55, 330, 198);

--
-- Triggers `subject_marks`
--
DELIMITER $$
CREATE TRIGGER `stud_marks` BEFORE INSERT ON `subject_marks` FOR EACH ROW set new.total = new.Subject1 +  new.Subject2 +  new.Subject3  +new.Subject4 +new.Subject5 +new.Subject6, new.per = NEW.total * 100 / 600
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cocurricular_activities`
--
ALTER TABLE `cocurricular_activities`
  ADD PRIMARY KEY (`usn`,`description`(10));

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `extra_curricular_activities`
--
ALTER TABLE `extra_curricular_activities`
  ADD PRIMARY KEY (`usn`,`name`,`content`);

--
-- Indexes for table `remainder`
--
ALTER TABLE `remainder`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `usn` (`usn`),
  ADD KEY `Foreign key` (`dept_id`);

--
-- Indexes for table `subject_marks`
--
ALTER TABLE `subject_marks`
  ADD PRIMARY KEY (`usn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cocurricular_activities`
--
ALTER TABLE `cocurricular_activities`
  ADD CONSTRAINT `cocurricular_activities_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`);

--
-- Constraints for table `extra_curricular_activities`
--
ALTER TABLE `extra_curricular_activities`
  ADD CONSTRAINT `extra_curricular_activities_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`);

--
-- Constraints for table `remainder`
--
ALTER TABLE `remainder`
  ADD CONSTRAINT `remainder_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Foreign key` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `subject_marks`
--
ALTER TABLE `subject_marks`
  ADD CONSTRAINT `subject_marks_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`);
