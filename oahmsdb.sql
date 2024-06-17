-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 07:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oahmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `kbarangay`
--

CREATE TABLE `kbarangay` (
  `ID` int(10) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `kapitan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kbarangay`
--

INSERT INTO `kbarangay` (`ID`, `barangay`, `kapitan`) VALUES
(2, 'barangay 22', 'nerri'),
(3, 'barangay 23', 'Emy'),
(4, 'barangay 24 ', 'Vivian'),
(5, 'barangay 25', 'chel'),
(11, 'p 7 lakandula', 'don billanueva');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2021-11-01 04:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1),
(3, 'kjhkjh', 'kjhkjh', 'gh@gmao.com', 6879879879, 'hjghgjhgjhghjghjgj ', '2022-05-27 10:45:14', 1),
(4, 'Anuj', 'Kumar', 'ak@gmail.coim', 1425362514, 'New test emssage ', '2022-06-05 09:43:45', 1),
(5, 'Joerwin', 'LASONA', 'HAHAH@YAHOO.COM', 238298393, 'WSSHGSYFSTEFWTEWTWEY8WETYW ', '2023-08-28 01:44:02', 1),
(6, 'udo ako ', 'hahahah', 'hsdghsdgZ@ajsgahdstgds', 2163262163, 'wredhkgfdhjgfgdf ', '2023-08-28 02:07:55', 1),
(7, 'gabriel', 'pisot', 'supot', 545454584, ' BADING AKO ', '2023-08-28 04:29:14', 1),
(8, 'jojo', 'akopogi', 'gfdsdtsfsgdgf', 234353336, ' fdasdsfdsfdsfdsdss', '2023-08-28 13:23:22', 1),
(9, 'jhiuihihj', 'jdfkhdfjhdfjd', 'djyfddjdfjdfdfhj', 4575478547, ' jdfyjyfuytuructfdty7tfuyhtyfdy', '2023-09-15 06:54:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us hahahah', '<div style=\"text-align: center;\"><font color=\"#202124\" face=\"arial, sans-serif\"><b>Old Age Home Management System!!</b></font></div><div style=\"text-align: left;\"><font face=\"arial\"><font color=\"#202124\">We care of our elders.</font><span style=\"color: rgb(122, 122, 122); font-size: 18px; text-align: justify; font-weight: initial;\">That is why we are here to help you and your loved ones facing difficulty in going about their daily routines. The elderly of the house need constant attention and care post-surgery or during the recuperating period. You cannot stay by their side every day, and there is nowhere else they would rather be than in the comforts of their home.</span></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'legazpi', 'don@gmail', 505121215, NULL, '10:30 am to 7:30 pm'),
(3, 'rules', 'Rules', '<div class=\"wpb_row vc_row-fluid vc_custom_1415091130045\" style=\"box-sizing: inherit; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div class=\"wpb_text_column wpb_content_element \" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"text-align: left; box-sizing: inherit;\"><b>Firearms and weapons are not allowed in premises.</b></li><li style=\"text-align: left; box-sizing: inherit;\"><b>Keeping pets are not allowed in premises .</b></li><li style=\"text-align: left; box-sizing: inherit;\"><b>Non Vegetarian Food is Prohibited</b></li><li style=\"text-align: left; box-sizing: inherit;\"><b>All residents shall maintain discipline and ensure that other residents are not disturbed by their any act.</b></li><li style=\"text-align: left; box-sizing: inherit;\"><b>our minimum lock in period is six month and after six month if discharge require than minimum two month notice require for refund of security.</b></li></ul></div></div></div></div></div><div class=\"wpb_row vc_row-fluid vc_custom_1415091139991\" style=\"box-sizing: inherit; font-family: Asap, sans-serif; font-size: 14px;\"><div class=\"vc_col-sm-12 wpb_column column_container\" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><div id=\"section-14-1416982836\" class=\" dt-section-head left size-default\" style=\"color: rgb(153, 153, 153); box-sizing: inherit;\"><h4 class=\"section-main-title\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(47, 163, 173); font-size: 18px;\"><b>Rules for Visitors</b></h4><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;\"><li style=\"text-align: left; box-sizing: inherit;\"><b>Visiting hours for the guest will be from 10am to 6pm , Only identified guests are allowed inside the home.</b></li><li style=\"text-align: left; box-sizing: inherit;\"><b>Guests are not allowed to stay overnight in their residentâ€™s without the permission from the management.</b></li></ul><h3 class=\"section-main-title\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(47, 163, 173); font-size: 20px;\"><b>In case of Emergency / Mishappening</b></h3></div><div class=\"wpb_text_column wpb_content_element \" style=\"box-sizing: inherit;\"><div class=\"wpb_wrapper\" style=\"box-sizing: inherit;\"><p align=\"justify\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><b style=\"\"><font color=\"#000033\">In case of any mishappening or any emergency situation with any resident, the management shall take steps to intimate the relatives/ next of kin immediately. We will also take the necessary steps as per the protocol to control the situation in safe and respected manner.</font></b></p><p align=\"justify\" style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><b style=\"\"><font color=\"#000033\">bem bem pogi</font></b></p></div></div></div></div></div>', NULL, NULL, NULL, ''),
(4, 'eligibility', 'Eligibility', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><li style=\"box-sizing: inherit;\">Minimum Age Required is 50 years.</li><li style=\"box-sizing: inherit;\">Person should not be suffering from any infectious disease.</li><li style=\"box-sizing: inherit;\">The Person should be free from addiction of any kind.</li></ul>', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblseniorcitizen`
--

CREATE TABLE `tblseniorcitizen` (
  `ID` int(5) NOT NULL,
  `RegistrationNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `cs` varchar(10) NOT NULL,
  `noc` int(2) NOT NULL,
  `ea` varchar(20) NOT NULL,
  `religion` varchar(10) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `mi` int(20) NOT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `CommunicationAddress` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(250) DEFAULT NULL,
  `EmergencyAddress` mediumtext DEFAULT NULL,
  `EmergencyContactnumber` bigint(10) DEFAULT NULL,
  `AddedBy` varchar(100) DEFAULT NULL,
  `RegitrationDate` timestamp NULL DEFAULT current_timestamp(),
  `barangay` varchar(100) NOT NULL,
  `kapitan` varchar(30) NOT NULL,
  `idb` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(5) NOT NULL,
  `ServiceTitle` varchar(250) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceTitle`, `ServiceDescription`, `image`, `CreationDate`) VALUES
(1, 'Security Facilities', '<p align=\"justify\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Safety and security is an important responsibility of management, Old Age Home Delhi is well equiped with all safety and security features to provide safe and secure environment to the residents.</span></p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Emergency Alarm System.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">24Ã—7 well trained security Guard.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">CCTV Coverage of entire Building.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Fire Alarm System &amp; Fire Extinguisher Available</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Emergency Button in all Rooms and Washrooms.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Intercom Facility.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Railings available in whole building for support.</span></li></ul>', 'security-cam.jpg', '2022-05-26 06:22:10'),
(2, 'Medical Facilities', '<p align=\"justify\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Depending on the level of care required, our compassionate and caring staff provides around-the-clock personal care, assists with medical needs, health and exercise and also facilitates strong social connections. Our healthcare center is well-stocked with medicines and equipped to administer First Aid for most emergencies. Old Age Home Delhi provides the basic medical needs to the residents.</span></p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">24Ã—7 Ambulance Facility</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Nurses available</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Doctors available</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Emergency care equipment available</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Physiotherapy &amp; Personal Care Assistance</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Wheel Chair Assistance.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Dietician Consultation.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Tie up with near by multi speciality hospital.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">House Attendant</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Naturopathy.</span></li></ul>', '2020_09_hi_intro.jpg', '2022-05-26 06:22:52'),
(3, 'House Keeping Facilities', '<span style=\"color: rgb(0, 0, 0); font-family: Asap, sans-serif; font-size: 14px;\">We have professionally trained, courteous housekeeping staff experienced in elderly care keeping, rather than just housekeeping. They are responsible for maintaining cleanliness of all living units as well as the common areas and to set the highest standard of hygience and sanitation of the facility.</span><br>', 'housekeepingbg.jpg', '2022-05-26 06:26:26'),
(4, 'Optional Facilities', '<p align=\"justify\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Keeping in mind that some senior citizens require Some unique and extra personal care, Old Age Home Delhi offers optional facilities at an extra cost :-</span></p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;\"><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Personal Attendant.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Guest Room.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">ISD Calling.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Daily need Physiotherapy.</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Toiletries Accessories .</span></li><li style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit; color: rgb(0, 0, 0);\">Dr. on Call.</span></li></ul>', 'ofacilities.jpg', '2022-05-26 06:26:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kbarangay`
--
ALTER TABLE `kbarangay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kbarangay`
--
ALTER TABLE `kbarangay`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
