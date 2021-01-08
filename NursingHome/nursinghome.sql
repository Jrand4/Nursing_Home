-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 06:18 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursinghome`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergy`
--

CREATE TABLE `allergy` (
  `AllergyID` int(3) NOT NULL,
  `Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allergy`
--

INSERT INTO `allergy` (`AllergyID`, `Name`) VALUES
(1, 'Food'),
(2, 'Bees'),
(3, 'Sun'),
(4, 'Oxygen'),
(5, 'Eggs'),
(6, 'Pickles'),
(7, 'Aspirin'),
(8, 'Oxycodone'),
(9, 'Lisinopril'),
(10, 'Advil');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `DiagnosisID` int(3) NOT NULL,
  `DiagnosisName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`DiagnosisID`, `DiagnosisName`) VALUES
(1, 'Cancer'),
(2, 'AIDS'),
(3, 'Anxiety'),
(4, 'Old');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(3) NOT NULL,
  `LicenceNumber` int(15) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `LicenceNumber`, `FirstName`, `LastName`, `PhoneNumber`, `Email`, `UserName`, `Password`) VALUES
(1, 44, 'John', 'Johnson', '111-111-1111', 'JJohnson@doctor.com', 'JJohnson', 'password'),
(2, 455, 'Bill', 'Billson', '111-111-1112', 'BBillson@doctor.com', 'BBillson', 'password'),
(3, 3344, 'James', 'Jameson', '111-111-1113', 'JJameson@doctor.com', 'JJameson', 'password'),
(4, 4433, 'Kathy', 'Katherson', '111-111-1114', 'KKatherson@doctor.com', 'KKatherson', 'password'),
(5, 4466, 'Pickles', 'Pickleson', '111-111-1115', 'PPickleson@doctor.com', 'PPikcleson', 'password'),
(6, 4488, 'David', 'Davidson', '111-111-1116', 'DDavidson@doctor.com', 'DDavidson', 'password'),
(7, 4499, 'Alice', 'Allison', '111-111-1117', 'AAllison@doctor.com', 'AAllison', 'password'),
(8, 3388, 'Nick', 'Nickleson', '111-111-1118', 'NNickleson@doctor.com', 'NNickleson', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `environment`
--

CREATE TABLE `environment` (
  `EnvironmentID` int(3) NOT NULL,
  `WetFloor` tinyint(4) NOT NULL,
  `LightsOn` tinyint(4) NOT NULL,
  `PatientWearingShoes` tinyint(4) NOT NULL,
  `CallLightOn` tinyint(4) NOT NULL,
  `Incontinent` tinyint(4) NOT NULL,
  `SharpObjectsNearby` tinyint(4) NOT NULL,
  `WearingLongSleeves` tinyint(4) NOT NULL,
  `PatientNailsLong` tinyint(4) NOT NULL,
  `PatientBumpSomething` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incidentreport`
--

CREATE TABLE `incidentreport` (
  `IncidentReportID` int(3) NOT NULL,
  `TypeOfIncident` varchar(45) NOT NULL,
  `TimeOfIncident` date NOT NULL,
  `TimeDoctorNotified` date NOT NULL,
  `TimeEMContactNotified` date NOT NULL,
  `PatientID` int(3) NOT NULL,
  `DoctorID` int(3) NOT NULL,
  `NurseID` int(3) NOT NULL,
  `EnvironmentID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `injury`
--

CREATE TABLE `injury` (
  `InjuryID` int(3) NOT NULL,
  `InjuryType` varchar(45) NOT NULL,
  `InjuryLocation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `injuryincident`
--

CREATE TABLE `injuryincident` (
  `InjuryIncidentID` int(3) NOT NULL,
  `InjuryID` int(3) NOT NULL,
  `IncidentReportID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `MedicationID` int(3) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`MedicationID`, `Name`) VALUES
(1, 'Advil'),
(2, 'Ibuprofen'),
(3, 'Oxyclean'),
(4, 'Benedryl'),
(5, 'Aspirin'),
(6, 'Lisinopril'),
(7, 'Coumadin'),
(8, 'Metoprolol'),
(9, 'MultiVitamin'),
(10, 'Vitamin D'),
(11, 'Calcium'),
(12, 'Fluoxitene'),
(13, 'Tylenol'),
(14, 'Amoxicillin');

-- --------------------------------------------------------

--
-- Table structure for table `medicationgiven`
--

CREATE TABLE `medicationgiven` (
  `MedicationGivenID` int(3) NOT NULL,
  `TimeGiven` date NOT NULL,
  `NurseID` int(3) NOT NULL,
  `PrescriptionID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicationgiven`
--

INSERT INTO `medicationgiven` (`MedicationGivenID`, `TimeGiven`, `NurseID`, `PrescriptionID`) VALUES
(1, '0000-00-00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `NurseID` int(3) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `LicenceNumber` int(15) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`NurseID`, `FirstName`, `LastName`, `LicenceNumber`, `PhoneNumber`, `Email`, `UserName`, `Password`) VALUES
(1, 'Nurse', 'Betty', 223, '444-444-4444', 'NBetty@nurse.com', 'NBetty', 'password'),
(2, 'Nurse', 'Cindy', 224, '444-444-4445', 'NCindy@nurse.com', 'NCindy', 'password'),
(3, 'Nurse', 'Smith', 225, '444-444-4446', 'NSmith@nurse.com', 'NSmith', 'password'),
(4, 'Nurse', 'Joker', 226, '444-444-4447', 'NJoker@nurse.com', 'NJoker', 'password'),
(5, 'Nurse', 'Joy', 227, '444-444-4448', 'NJoy@nurse.com', 'NJoy', 'password'),
(6, 'Nurse', 'Eddie', 228, '444-444-4449', 'NEddie@nurse.com', 'NEddie', 'password'),
(7, 'Nurse', 'Mike', 229, '444-444-4450', 'NMike@nurse.com', 'NMike', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(3) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `MedicalRecordNumber` varchar(25) NOT NULL,
  `RoomNumber` varchar(5) NOT NULL,
  `Insurance` varchar(25) DEFAULT NULL,
  `EmergencyContactName` varchar(50) NOT NULL,
  `EmergencyContactNumber` varchar(15) NOT NULL,
  `DoctorID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `FirstName`, `LastName`, `DOB`, `MedicalRecordNumber`, `RoomNumber`, `Insurance`, `EmergencyContactName`, `EmergencyContactNumber`, `DoctorID`) VALUES
(1, 'Albert', 'Albertson', '2019-12-11', '2222', '103', NULL, 'DoodyDoo', '555-555-5555', 1),
(2, 'Agnus', 'Annus', '1988-08-08', '2223', '104', NULL, 'DobbyDee', '555-555-5556', 1),
(3, 'Hargus', 'Harfts', '1890-10-10', '2224', '105', NULL, 'Noobert', '555-555-5557', 3),
(4, 'Corey', 'Coopis', '1942-03-04', '2225', '106', NULL, 'Haggert', '555-555-5558', 2),
(5, 'Bertha', 'Dertha', '2011-10-01', '2226', '107', NULL, 'Nugget', '555-555-5559', 1),
(6, 'Jannis', 'Pannis', '1996-05-04', '2227', '108', NULL, 'Pedro', '555-555-5560', 2),
(7, 'Hokis', 'Pokis', '1932-10-31', '2228', '109', NULL, 'Smokey', '555-555-5561', 4),
(8, 'Tom', 'Alexander', '1966-09-24', '2229', '110', NULL, 'Blake', '555-555-5562', 3),
(9, 'Humpty', 'Dumpty', '1988-01-02', '2230', '111', NULL, 'Brick', '555-555-5563', 3),
(10, 'Alex', 'Mack', '1988-02-03', '2231', '112', NULL, 'Eddy', '555-555-5564', 2),
(11, 'Queenie', 'Beenie', '1950-02-04', '2232', '113', NULL, 'Weenie', '555-555-5565', 3),
(12, 'TestFirst', 'TestLast', '1883-02-03', 'testmedicalrecordnumber', '888', 'testinsurance', 'testname', 'testnumber', 2),
(13, 'edd', 'fred', '3000-01-02', '123456783', '777', 'nope', 'ted', '33322244455', 3),
(14, 'John', 'King', '1984-01-01', '333444333', '334', 'None', 'Bill', '9934443333', 2),
(15, 'George', 'Franker', '4444-02-04', '3339998898', '909', 'broke', 'Hamilton', '555-555-5599', 4),
(16, 'gggg', 'rrrr', '2019-11-21', '3339998898', '998', 'None', '555-444-3333', '222-333-5555', 2),
(17, 'Stef', 'Bagef', '1229-02-22', '0000999', '667', 'none', 'eggsalad', '990-333-2222', 3),
(18, 'Neddie', 'Deady', '1955-03-12', '444444443', '753', 'none', 'buddo', '111-222-3322', 3),
(19, 'Grant', 'Stackhouse', '1999-03-22', '2223339', '322', 'broke', 'straightHouse', '999-333-4444', 4);

-- --------------------------------------------------------

--
-- Table structure for table `patientallergy`
--

CREATE TABLE `patientallergy` (
  `PatientAllergyID` int(3) NOT NULL,
  `PatientID` int(3) NOT NULL,
  `AllergyID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientallergy`
--

INSERT INTO `patientallergy` (`PatientAllergyID`, `PatientID`, `AllergyID`) VALUES
(1, 1, 7),
(3, 1, 9),
(2, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `patientdiagnosis`
--

CREATE TABLE `patientdiagnosis` (
  `PatientDiagnosisID` int(3) NOT NULL,
  `PatientID` int(3) NOT NULL,
  `DiagnosisID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdiagnosis`
--

INSERT INTO `patientdiagnosis` (`PatientDiagnosisID`, `PatientID`, `DiagnosisID`) VALUES
(3, 1, 1),
(1, 1, 2),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `patientvaccine`
--

CREATE TABLE `patientvaccine` (
  `PatientVaccineID` int(3) NOT NULL,
  `DateVaccinated` date NOT NULL,
  `MethodGiven` varchar(15) NOT NULL,
  `Manufacturer` varchar(15) NOT NULL,
  `PatientID` int(3) NOT NULL,
  `VaccineID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientvaccine`
--

INSERT INTO `patientvaccine` (`PatientVaccineID`, `DateVaccinated`, `MethodGiven`, `Manufacturer`, `PatientID`, `VaccineID`) VALUES
(1, '2010-10-19', 'sub', 'grettlesvaccine', 1, 2),
(2, '2010-12-19', 'sub', 'grettlesvaccine', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PrescriptionID` int(3) NOT NULL,
  `DosageAmount` varchar(10) NOT NULL,
  `MethodGiven` varchar(15) NOT NULL,
  `MedicationID` int(3) NOT NULL,
  `DoctorID` int(3) NOT NULL,
  `PatientID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PrescriptionID`, `DosageAmount`, `MethodGiven`, `MedicationID`, `DoctorID`, `PatientID`) VALUES
(1, '200mg', 'oral', 1, 3, 1),
(2, '500g', 'oral', 3, 1, 1),
(3, '10mg', 'oral', 7, 1, 5),
(4, '200mg', 'oral', 14, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `VaccineID` int(3) NOT NULL,
  `VaccineName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`VaccineID`, `VaccineName`) VALUES
(1, 'AIDS'),
(2, 'Chicken Pox'),
(3, 'Cancer'),
(4, 'HepC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergy`
--
ALTER TABLE `allergy`
  ADD PRIMARY KEY (`AllergyID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`DiagnosisID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD UNIQUE KEY `UserName_UNIQUE` (`UserName`);

--
-- Indexes for table `environment`
--
ALTER TABLE `environment`
  ADD PRIMARY KEY (`EnvironmentID`);

--
-- Indexes for table `incidentreport`
--
ALTER TABLE `incidentreport`
  ADD PRIMARY KEY (`IncidentReportID`),
  ADD UNIQUE KEY `IncidentReportID_UNIQUE` (`IncidentReportID`),
  ADD KEY `fk_IncidentReport_patient_idx` (`PatientID`),
  ADD KEY `fk_IncidentReport_doctor1_idx` (`DoctorID`),
  ADD KEY `fk_IncidentReport_nurse1_idx` (`NurseID`),
  ADD KEY `fk_IncidentReport_Environment1_idx` (`EnvironmentID`);

--
-- Indexes for table `injury`
--
ALTER TABLE `injury`
  ADD PRIMARY KEY (`InjuryID`);

--
-- Indexes for table `injuryincident`
--
ALTER TABLE `injuryincident`
  ADD PRIMARY KEY (`InjuryIncidentID`),
  ADD KEY `fk_InjuryIncident_Injury1_idx` (`InjuryID`),
  ADD KEY `fk_InjuryIncident_IncidentReport1_idx` (`IncidentReportID`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`MedicationID`);

--
-- Indexes for table `medicationgiven`
--
ALTER TABLE `medicationgiven`
  ADD PRIMARY KEY (`MedicationGivenID`),
  ADD KEY `NurseID` (`NurseID`,`PrescriptionID`),
  ADD KEY `PrescriptionID` (`PrescriptionID`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`NurseID`),
  ADD UNIQUE KEY `LicenceNumber` (`LicenceNumber`),
  ADD UNIQUE KEY `UserName_UNIQUE` (`UserName`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `fk_patient_doctor1_idx` (`DoctorID`);

--
-- Indexes for table `patientallergy`
--
ALTER TABLE `patientallergy`
  ADD PRIMARY KEY (`PatientAllergyID`),
  ADD KEY `PatientID` (`PatientID`,`AllergyID`),
  ADD KEY `AllergyID` (`AllergyID`);

--
-- Indexes for table `patientdiagnosis`
--
ALTER TABLE `patientdiagnosis`
  ADD PRIMARY KEY (`PatientDiagnosisID`),
  ADD KEY `PatientID` (`PatientID`,`DiagnosisID`),
  ADD KEY `DiagnosisID` (`DiagnosisID`);

--
-- Indexes for table `patientvaccine`
--
ALTER TABLE `patientvaccine`
  ADD PRIMARY KEY (`PatientVaccineID`),
  ADD KEY `PatientID` (`PatientID`,`VaccineID`),
  ADD KEY `VaccineID` (`VaccineID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PrescriptionID`),
  ADD KEY `MedicationID` (`MedicationID`,`DoctorID`,`PatientID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`VaccineID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergy`
--
ALTER TABLE `allergy`
  MODIFY `AllergyID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `DiagnosisID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `environment`
--
ALTER TABLE `environment`
  MODIFY `EnvironmentID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incidentreport`
--
ALTER TABLE `incidentreport`
  MODIFY `IncidentReportID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `MedicationID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicationgiven`
--
ALTER TABLE `medicationgiven`
  MODIFY `MedicationGivenID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `NurseID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patientallergy`
--
ALTER TABLE `patientallergy`
  MODIFY `PatientAllergyID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patientdiagnosis`
--
ALTER TABLE `patientdiagnosis`
  MODIFY `PatientDiagnosisID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patientvaccine`
--
ALTER TABLE `patientvaccine`
  MODIFY `PatientVaccineID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PrescriptionID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `VaccineID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incidentreport`
--
ALTER TABLE `incidentreport`
  ADD CONSTRAINT `fk_IncidentReport_Environment1` FOREIGN KEY (`EnvironmentID`) REFERENCES `mydb`.`environment` (`EnvironmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IncidentReport_doctor1` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IncidentReport_nurse1` FOREIGN KEY (`NurseID`) REFERENCES `nurse` (`NurseID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IncidentReport_patient` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `injuryincident`
--
ALTER TABLE `injuryincident`
  ADD CONSTRAINT `fk_InjuryIncident_IncidentReport1` FOREIGN KEY (`IncidentReportID`) REFERENCES `mydb`.`incidentreport` (`IncidentReportID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_InjuryIncident_Injury1` FOREIGN KEY (`InjuryID`) REFERENCES `mydb`.`injury` (`InjuryID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `medicationgiven`
--
ALTER TABLE `medicationgiven`
  ADD CONSTRAINT `medicationgiven_ibfk_1` FOREIGN KEY (`NurseID`) REFERENCES `nurse` (`NurseID`),
  ADD CONSTRAINT `medicationgiven_ibfk_2` FOREIGN KEY (`PrescriptionID`) REFERENCES `prescription` (`PrescriptionID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `fk_patient_doctor1` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patientallergy`
--
ALTER TABLE `patientallergy`
  ADD CONSTRAINT `patientallergy_ibfk_1` FOREIGN KEY (`AllergyID`) REFERENCES `allergy` (`AllergyID`),
  ADD CONSTRAINT `patientallergy_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`);

--
-- Constraints for table `patientdiagnosis`
--
ALTER TABLE `patientdiagnosis`
  ADD CONSTRAINT `patientdiagnosis_ibfk_1` FOREIGN KEY (`DiagnosisID`) REFERENCES `diagnosis` (`DiagnosisID`),
  ADD CONSTRAINT `patientdiagnosis_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`);

--
-- Constraints for table `patientvaccine`
--
ALTER TABLE `patientvaccine`
  ADD CONSTRAINT `patientvaccine_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `patientvaccine_ibfk_2` FOREIGN KEY (`VaccineID`) REFERENCES `vaccine` (`VaccineID`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`MedicationID`) REFERENCES `medication` (`MedicationID`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
