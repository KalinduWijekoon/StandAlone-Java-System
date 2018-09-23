-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 11:41 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajapura`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appNo` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `consultant` varchar(50) NOT NULL,
  `time` char(10) NOT NULL,
  `criticalstatus` varchar(3) NOT NULL,
  `DoctorFee` int(11) NOT NULL,
  `ChanelFee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appNo`, `pid`, `date`, `consultant`, `time`, `criticalstatus`, `DoctorFee`, `ChanelFee`) VALUES
(15, 3, 'May 19, 2018', 'Dr.Sumith Rajapura', '1:30pm', 'Yes', 500, 500),
(16, 4, 'May 12, 2018', 'Dr.Neranjana Hettiarachchi', '2:30pm', 'Yes', 400, 600),
(17, 5, 'May 19, 2018', 'Dr.Sumith Rajapura', '1:30pm', 'Yes', 400, 600),
(18, 6, 'May 11, 2018', 'Dr.Sumith Rajapura', '1:30pm', 'Yes', 400, 600),
(19, 7, 'May 12, 2018', 'Dr.Neranjana Hettiarachchi', '2:30pm', 'Yes', 400, 600),
(20, 8, 'May 19, 2018', 'Dr.Sumith Rajapura', '1:30pm', 'Yes', 500, 500),
(21, 13, 'May 19, 2018', 'Dr.Sumith Rajapura', '1:30pm', 'Yes', 500, 500);

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `EmpID` int(3) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `No_of_appointments` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultant`
--

INSERT INTO `consultant` (`EmpID`, `Name`, `Date`, `Time`, `No_of_appointments`) VALUES
(9, 'Dr.Sumith Rajapura', 'May 19, 2018', '1:30pm', 42),
(10, 'Dr.Neranjana Hettiarachchi', 'May 12, 2018', '2:30pm', 47),
(12, 'Dr.Nishanthi Udayangi', 'May 26, 2018', '1:30am', 13);

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `idno` int(20) NOT NULL,
  `source` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`idno`, `source`, `amount`, `date`) VALUES
(1, 'employee', '201843.85', '2018-05-29'),
(2, 'inventory', '6579.00', '2018-05-29'),
(3, 'maintain_deffective', '6600.00', '2018-05-29'),
(4, 'maintain_equipment', '61650.00', '2018-05-29'),
(5, 'maintain_expences', '12358.00', '2018-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `distribution_client_location`
--

CREATE TABLE `distribution_client_location` (
  `idno` int(20) NOT NULL,
  `client_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_delivery_time`
--

CREATE TABLE `distribution_delivery_time` (
  `idno` int(20) NOT NULL,
  `client_id` varchar(20) NOT NULL,
  `delivery_id` int(20) NOT NULL,
  `departure_time` varchar(30) NOT NULL,
  `delay` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distribution_delivery_time`
--

INSERT INTO `distribution_delivery_time` (`idno`, `client_id`, `delivery_id`, `departure_time`, `delay`) VALUES
(1, '001', 0, '2018-04-23 03:29:21', '1'),
(2, '1111', 0, '2018-04-26 01:49:16', '0');

-- --------------------------------------------------------

--
-- Table structure for table `eat0`
--

CREATE TABLE `eat0` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eat1`
--

CREATE TABLE `eat1` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eat1`
--

INSERT INTO `eat1` (`id`, `count`, `date`, `in`, `out`, `month`, `OThours`, `status`, `Reason`) VALUES
(1, 1, '05/11/2018', '05:24:11', 'HR', 5, 2, 'Half Day', 'Sick'),
(2, 2, '05/12/2018', '11:59:38', '11:59:47', 5, 0, 'Half Day', NULL),
(3, 3, '05/18/2018', '14:25:08', '14:25:09', 5, 0, 'Half Day', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eat2`
--

CREATE TABLE `eat2` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eat2`
--

INSERT INTO `eat2` (`id`, `count`, `date`, `in`, `out`, `month`, `OThours`, `status`, `Reason`) VALUES
(2, 2, '05/10/2018', '08:18:05', '20:18:44', 5, 3, 'Full Day', NULL),
(3, 3, '05/09/2018', '08:19:29', '17:19:58', 5, 0, 'Full Day', NULL),
(4, 4, '05/11/2018', '11:18:37', 'HR', 5, 1, 'Half Day', 'Sick'),
(5, 5, '05/18/2018', '14:27:55', '14:27:59', 5, 0, 'Half Day', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eat3`
--

CREATE TABLE `eat3` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eat4`
--

CREATE TABLE `eat4` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eat5`
--

CREATE TABLE `eat5` (
  `id` int(255) NOT NULL,
  `count` int(255) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `in` varchar(20) DEFAULT NULL,
  `out` varchar(20) DEFAULT NULL,
  `month` int(20) NOT NULL,
  `OThours` int(5) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_att`
--

CREATE TABLE `employee_att` (
  `idno` int(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `attendance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `idno` int(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(30) NOT NULL,
  `nic` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal`
--

CREATE TABLE `employee_sal` (
  `idno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `rate` int(30) NOT NULL,
  `attendance` int(30) NOT NULL,
  `total_sal` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `esal`
--

CREATE TABLE `esal` (
  `eid` int(255) DEFAULT NULL,
  `month` int(20) DEFAULT NULL,
  `sallary` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `esal`
--

INSERT INTO `esal` (`eid`, `month`, `sallary`) VALUES
(1, 5, '1843.85'),
(NULL, 5, '100000'),
(NULL, 5, '100000');

-- --------------------------------------------------------

--
-- Table structure for table `financelogin`
--

CREATE TABLE `financelogin` (
  `username` varchar(30) NOT NULL,
  `password` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financelogin`
--

INSERT INTO `financelogin` (`username`, `password`) VALUES
('financemng', 45912);

-- --------------------------------------------------------

--
-- Table structure for table `finance_cheq`
--

CREATE TABLE `finance_cheq` (
  `idno` int(20) NOT NULL,
  `cheque_id` varchar(20) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `income` varchar(20) NOT NULL,
  `account_type` varchar(30) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_cheq`
--

INSERT INTO `finance_cheq` (`idno`, `cheque_id`, `bank`, `income`, `account_type`, `account_number`, `date`) VALUES
(1, '6987', 'HNB', '150000', 'current', '321456987586', '2018-05-01'),
(2, '8520', 'BOC', '5645', 'current', '321456987432', '2018-05-09'),
(3, '5487', 'HNB', '4500', 'current', '321456987456', '2018-05-16'),
(30, '1200', 'BOC', '45000', 'current', '456321089630', '2018-05-17'),
(31, '6541', 'HNB', '4000', 'current', '123654789654', '2018-05-09'),
(32, '6543', 'HNB', '675764', 'current', '762435635481', '2018-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `finance_trans`
--

CREATE TABLE `finance_trans` (
  `idno` int(20) NOT NULL,
  `liabilities` varchar(20) NOT NULL,
  `assets` varchar(20) NOT NULL,
  `utilities` varchar(20) NOT NULL,
  `transaction_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `idno` int(30) NOT NULL,
  `source` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`idno`, `source`, `amount`, `date`) VALUES
(1, 'cheque', 884909, '2018-05-29'),
(2, 'sales', 8910, '2018-05-29'),
(3, 'patient', 7000, '2018-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryadmin`
--

CREATE TABLE `inventoryadmin` (
  `username` varchar(50) NOT NULL,
  `password` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventoryadmin`
--

INSERT INTO `inventoryadmin` (`username`, `password`) VALUES
('InventoryAdmin', 49423);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_add`
--

CREATE TABLE `inventory_add` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_add`
--

INSERT INTO `inventory_add` (`product_id`, `product_name`, `product_description`, `unit_price`, `quantity`, `total_amount`, `Date`) VALUES
(7, 'Cinnamon', 'dried and powdered', '100', '6', '600', '2018-05-16'),
(10, 'Dried flowers', 'soap fragrance', '50', '6', '300', '2018-05-25'),
(11, 'Aloe Vera', 'frozen', '30', '10', '300', '2018-05-22'),
(13, 'Beeswax', 'dried and powdered', '2', '60', '1200', '2018-05-25'),
(14, 'Honey', 'unprocessed', '75', '10', '750', '2018-05-29'),
(16, 'Olive oil', 'hair', '800', '3', '1800', '2018-05-31'),
(18, 'Pill', 'abc', '543', '3', '1629.0', '2018-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `maintain_def`
--

CREATE TABLE `maintain_def` (
  `idno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reference_id` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `defective_item` varchar(30) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `total_amount` int(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `notes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintain_def`
--

INSERT INTO `maintain_def` (`idno`, `date`, `reference_id`, `user`, `defective_item`, `payment`, `total_amount`, `status`, `notes`) VALUES
(5, '2018-05-03', '555', 'Admin', 'table', 'Cash', 6000, 'Invoiced', 'dfg'),
(6, '2018-05-18', '443', 'Admin', 'chair', 'Cash', 600, 'Updated', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `maintain_equip`
--

CREATE TABLE `maintain_equip` (
  `idno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reference_id` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `equip_type` varchar(20) NOT NULL,
  `payment` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `VAT` int(20) NOT NULL,
  `total_amount` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintain_equip`
--

INSERT INTO `maintain_equip` (`idno`, `date`, `reference_id`, `user`, `equip_type`, `payment`, `amount`, `VAT`, `total_amount`, `status`, `notes`) VALUES
(3, '2018-05-09', '1111', 'Maintenance manager', 'computer', 'Cash', '50000', 10, 55000, 'Invoiced', 'qwe'),
(4, '2018-05-07', '4444', 'Admin', 'machine', 'Cash', '5000', 33, 6650, 'Invoiced', 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `maintain_exp`
--

CREATE TABLE `maintain_exp` (
  `idno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reference_id` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `expense_type` varchar(30) NOT NULL,
  `payment` varchar(30) NOT NULL,
  `amount` int(30) NOT NULL,
  `VAT` int(30) NOT NULL,
  `total_amount` int(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintain_exp`
--

INSERT INTO `maintain_exp` (`idno`, `date`, `reference_id`, `user`, `expense_type`, `payment`, `amount`, `VAT`, `total_amount`, `status`, `notes`) VALUES
(10, '2018-05-11', '123', 'Maintenance manager', 'Water', 'Cash', 2000, 20, 2400, 'Invoiced', 'asd'),
(11, '2018-05-10', '222', 'Admin', 'Telephone', 'Cheque', 2344, 10, 2578, 'Invoiced', 'qwe'),
(12, '2018-05-18', '54', 'Maintenance manager', 'Electricity', 'Cash', 6000, 23, 7380, 'Invoiced', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(10) NOT NULL,
  `P_name` varchar(20) NOT NULL,
  `P_age` int(10) NOT NULL,
  `P_address` varchar(50) NOT NULL,
  `P_phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `P_name`, `P_age`, `P_address`, `P_phone`) VALUES
(3, 'kalindu', 78, 'malabe', 716546896),
(4, 'lasith', 21, 'kandy', 715678456),
(5, 'anjula', 23, 'Ampara', 716978569),
(6, 'budditha', 34, 'kandy', 771117377),
(8, 'kasun', 56, 'Battaramulla', 713080829),
(9, 'nipuni', 21, 'Galle', 752646523),
(10, 'manuja', 35, 'Kagalle', 756975321),
(11, 'hasith', 43, 'kandy', 716578963),
(12, 'bbr', 66, 'Kandy', 776564534);

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointment`
--

CREATE TABLE `patient_appointment` (
  `idno` int(20) NOT NULL,
  `appointment_no` varchar(30) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `consultant` varchar(50) NOT NULL,
  `time` varchar(30) NOT NULL,
  `patient_status` varchar(100) NOT NULL,
  `critical_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `idno` int(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `phone_no` int(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `appointment_no` varchar(30) NOT NULL,
  `emp_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `idno` int(20) NOT NULL,
  `source` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`idno`, `source`, `amount`) VALUES
(1, 'cheque', '125000');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(255) NOT NULL,
  `eid` int(255) NOT NULL,
  `month` int(5) NOT NULL,
  `salary` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `idno` int(20) NOT NULL,
  `productID` int(10) NOT NULL,
  `price` int(6) NOT NULL,
  `purchaseDate` date NOT NULL,
  `purchasedItem` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `total_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`idno`, `productID`, `price`, `purchaseDate`, `purchasedItem`, `quantity`, `total_price`) VALUES
(7, 3, 40, '2018-04-21', 'pill', '10', 400),
(8, 1, 20, '2018-02-19', 'capsule', '10', 200),
(9, 3, 40, '2018-04-21', 'pill', '10', 400),
(10, 3, 30, '2018-01-13', 'antibiotics', '10', 300),
(11, 1, 20, '2018-04-23', 'capsule', '123', 2460),
(12, 1, 20, '2018-05-10', 'capsule', '11', 220),
(13, 2, 40, '2018-05-10', 'pill', '10', 400),
(14, 1, 20, '2018-05-11', 'capsule', '12', 240),
(15, 2, 40, '2018-05-11', 'pill', '21', 840),
(17, 1, 20, '2018-05-11', 'capsule', '12', 240),
(18, 1, 20, '2018-05-11', 'capsule', '20', 400),
(19, 3, 30, '2018-05-11', 'antibiotics', '30', 900),
(20, 1, 20, '2018-05-17', 'capsule', '12', 240),
(21, 2, 40, '2018-05-17', 'pill', '12', 480),
(22, 3, 30, '2018-05-17', 'antibiotics', '12', 360),
(23, 1, 20, '2018-05-18', 'capsule', '10', 200),
(24, 2, 40, '2018-05-18', 'pill', '12', 480),
(25, 3, 30, '2018-05-18', 'antibiotics', '5', 150);

-- --------------------------------------------------------

--
-- Table structure for table `staff_information`
--

CREATE TABLE `staff_information` (
  `id` int(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `Dob` varchar(11) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Salary` int(20) NOT NULL,
  `Post_code` varchar(20) DEFAULT NULL,
  `Designation` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Date_hired` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `job_title` varchar(20) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `image` blob,
  `pwd` varchar(30) DEFAULT NULL,
  `ot_rate` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_information`
--

INSERT INTO `staff_information` (`id`, `first_name`, `surname`, `Dob`, `Email`, `Telephone`, `Address`, `Department`, `Salary`, `Post_code`, `Designation`, `Status`, `Date_hired`, `job_title`, `gender`, `image`, `pwd`, `ot_rate`) VALUES
(1, 'Buddithaaa', 'Rathnayaka', '1995-02-25', '90sbudditha@gmail.com', 771117377, 'Bibile', 'HR', 25000, '91500', 'Manager', 'Active', '2018-05-11 00:31:05', 'Good', 'Male', 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713121115121212151615171517151715161515151518171617161617181516181d2820181a251d151521312125292b2e2e2e181f3338332d37282d2e2b010a0a0a0e0d0e1a10101b2d2520252d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800b7011303012200021101031101ffc4001c0000010501010100000000000000000000050002030406070108ffc400401000010302040305060403070403000000010002110304051221310641511322617181073291a1b1c12352d1f014426224337292b2c2e1154382a21693f1ffc400190100030101010000000000000000000000010203000405ffc4002911000202020202010303050000000000000001021103122141043151132232056171148191c1f1ffda000c03010002110311003f00ebd4e84a985ba96d9c3280a6cc11a059585ba70a0a795ecac121ec17bd8a95240c45d8af7b25224b18ab5d90bcb3e7a292e4e89966edc21d87a2d24bc25205100c75394dfe1c2997928d829103a805190d0ad12a17d1051b35110cbc931ea5140051544b3f4187b21bbbc652617d47b5ad1cdc401f15c938e38f9cf2596ee731ad2087830491f97a8f45bbf681891b7b2a8f6c827bb206d3cd700bc3da13ac98d3ebbfc5459648a77d8839e5cf76b2753ff1cbeca88047b84c78eba1e5e2aed2b274c384831af31e291a10fda3488f0da7c63ec8a680d31b637259a39ba1e7c8f81f457835ccfee8981a8d4870f2d35559b41e67283ac18dc48fdeff00f28958e0f5c896b1d046d1b797820da0a8b66bf82fda554a2f14ae9d9d8635d4b9be3e3bfef55daed2e5b51a1ec20b4ec46a17cab8c61f5693c0734b4c489e5e52bb67b1dc7c57b5ec0ce7a5b93a8ca7ddd7ec8a6069a74ce86578bc94a5300f4a695eaf1630d213484f298e280489c146e0a473930ac6222124e490a306ad80853282d9ba29a15491ea49424b18492492c6124924b1886e4e8a1b4781214d727455ec9c33143b0f4607da77b48fe0ff00b35b37356225ce7039583cb9b8a09ecffdacd47d5142f5a087186d560221c760f6cede2143ed9b04356f19529b266986b88da5a4fd8fc907c07870332123bc1c08f394993368e86c381e4567d06ca80891b2f4b94164efc36f90534aa933c2bc95ecaf0a5afd8d635cab55562a3801256178878fa85bbcb27311b81ac2d2a51e46826e5c02fdb3026de8813ad42207f84efe92b0feccb05eddef7541393413d4ea56a38f71ca7776545f4cc91586bd25ae0414ef65e03595073992b9a5ca3a71fe415afc3d4b6c81551c1d45ce973568ab3a4a7d22b9bb3b92b47b87e0b418d01b4da3d02bcdb160d9a02544e8a7694c84971e8e7fed47020fa1db01de61f91d1647d8f02dc40b43cb7ba4100c074723e4ba671d3ffb1d4079885ce3d99d13ff005407fa5ce3bf4fd55f17a39b3fb3ba4a8ea576b772bdcc85624156e88165f8ab2602bcd322565e8b7bc3cd69a8fba104ec038a8dea42a3715820ead54ca9a8bb451566ea9f44e88d1ac9525e4a48d18336e14d0a0a0a75424cf525e12bd58c2492496309249258c4375ee94246234a8b8baabc3446ee30079945ee5a3295c67da76284bbb2074dca68c369204a551615e2ff00683686ae4a67380357812d27c0f3f341f02c7295cdd52a6d3bba7e1aae5d74e56783ee4b2fedccc7e2b413e07428e6c51955f46c796504e8faca9001a23a27029b42328f24e4a6112136538c26ca1466ca38c349a4e034305702bdc20b1ce35353264f55f42dcb65a42e798a58025cd73799d572f929d2a3abc5ab7f273ec36d83a9566b3bc065791a48d62478ad9fb3eb70ca156b3b405f964f4681f73f255301c1e9d1aa5e3f2ba47503bdf647b06a4d16603448cf5089f171227e214a325ad1d1a3bd8a175c5d458f232bc89f7b298f8a2f83e2f4ab896381fa8f30b27c438256a9196b1064130ecac8d24651acfa999e4a6e14b1732b3b9b40304efca24c094b24a8a45cacdbd6bd6526e67b835bd4ec860e33a0e314dafa9ac4b5a48f8abb8cd876b460005c0489d44f92ca615c38f15cd4355e0658c85ee10e889e844eb04231aecd3be8d362796f2daa53008716980e10438091a79ac17b34a2efe30558d03329307778040f03a1dfa2e99616e5800710e23f9a23e410ce1eb06d1cec0d01ddab9c7c4173b27fea42684a849e3be5f499a4cc87dfea615b0e542f1ddf0af37516ce48ab69140bb29f55a6b677742c7625560ad5e1ce9a63c94f0cf7896cf8942a89aabb4589e2fc4abd220d2708e7216d2aac571661f56b38066dcf45a53d6489a8dc782c70ee2aeab4733fdee689db5d826166b0dc3ea5bd320c9f456f0f73b3cc1d7c0a49f9294e29766589a5c9aa0e49576d4d125d448d25ba9d436e54ca84d9e10bd49258c249249630924978b188ee5b2d3e4b81fb46a45b70e27985de6edf0d3aae21ed3e0d4041ea15b0bfb89cd70733ba3a2870eab96b537131151849f00e12a6a83318024ab361c3b55e65c0b448dfa4ee864928f2c6841cb848fa7f0ec6289a2c21e0c811ac9d9218e303a1c0b4722440f8a17c2b875ad0a0c0d2361a93a9537116216e29192ddba850db8bb1d257546929bdae120829c405cdb03e31a347baf777791d4a3557da1d881fde8f81fd105922d7b0cb1c93aa356e41318a6d3a46aaa61bc7d6559d905513ca411f50bdbab96bdc5cddb92a27192684a717608ab6b0640fdf356acaddac6766dd1a0cb4740e931f1948d4129afab1af2d8fd973e5c4aad1d5873bbd5905c5209f878190911cc6882e2f8a861cbaebf79d07c143638e0a6dcae6b80d49d3504c2e3499e8392378cd8792aeda8d2627541ed31d75400526c81b983acf49faa1988e30d6576b4168a8e896b5c1c75db3346c13d316d236b10aab581bb6e7527993e2aadb5fe7a6d746ed923a291aed93c176432ce9522e35c99716d9883298d7af2ede72c82adc35c9cbca7c105c612c71d5c895b546b1a1b2b23757e6624a8ad2f65e078a8c726283d57b2b25966adfa36d52e1a994aab5c60054eabbba17987bfbcba288db0b3a88e8a3fe1dbd02b098e5a81643d98e8bd4e491004ed8a9a555a28371357aac2dc8e8077558ab27274cd1671d5786ab7a85cf5d7758ef50a659624e65c303de48718d4a3a8363a38294a6527484f0806c52b33ed02febdbda3ab513196279ee61698959af68ce3ff4eac034996804f419819f924c9f8b1a1f923885efb40be78875531e83ec83dee24faad25e64aa359a178e3dd843c6a5329997da47657829556bc8900ebe4ba951baa75a90732351c9720abb423fc15883db54529ee9f92de562dd5fc07c5cbabd5f66c3b02340e31e65455a8903745af68966bd50cb8ac6365cd0c339ab8c4be4c9083a9329d1b60f0e93b205734c6526515a37d05c167ee6b1ef0f12aca0b5f445cf9347c03679eb171d82ea551f9468b0fecf18d6d2991256b5a73b95b1c6911c93b64d45a772bda8c2e868e7b7494fca47a7ef54ea0401da99868247f540267c06853b8df02a740abac39af05951b20f7483eba151e1d60cb70293c39f4e65a7390f682412d9e606b09b678bb6ee8bae1b1a567b0c7f41807e047a427dcd46bdb19883c885e6ca3ab3d5c52b5c87ed8d2cb0ca72ed60bdc481ae9a499d156bac3a933bd94677bc3dce8d491b7d00f454b05041973dc7c2447c82b7795cbded68de7d001124a3419cd25c1ed9361cd686cb3b4630cf47188442eedcd2765dc723d4296c2887546347f29ed0fa6827cc9f92337d4da584bf61acf48dd74e2c7b43fb9c19e7a4ebf633ed7a75d3bb854d52ddae0dc822413be81bc8ba7650dce1956a532d61683d49d0f94028bc525c0ab245f2636e6a6571279cc2a56b7e0551279af38903a9b831c21c342b3176e39a65795fd2a793ea59e93cd58ea8eba6f98e6887724ec2aa77d73ee1aa849d493eab6984d5fc5017a319d9c128d1b194c715e4a6b8aa1312499997ab0020d7421fc434f35391cb55743f5014d5adf334881aabc1f04f2239e17acfe3170438386e083f05a0c428b9951cc83a1e5aacb62cfd4a2c54760c02f3b5a2c78e6022cb9ffb30c4b35234c9d5863d370b7e1231d0a504e35a80585c03ce9b80f323447151c768e7b6acc89cd49e23c4b4c7cd24bf1632f67cab5c09559fe0b7d4f82aa907352d67aa8d9c0d5498c81a3aa9619b53e532d95271e19ceabb52c3aab9b55a586082ba0623ece6a8d43fe4823383ee2955692244eabaa538bece68a68da5a5f97d219f78556b541aab4cb19ca112a5c30e7419d1747e9d9a1084a33643f51c72c938ca08e737953f14c21f59a7bda2ec77dc1d45cd195ad0eea009f52a85bfb3e6b9fab8c6e7c972b69b747426d2303c096f735eb7674b30a60fe23e25ac113bf5f0f15d5ac696568ca4c737189f446a85b328b452a6d0d6081039c8dcf5284d0690003e5f0d13c71d204a76cafc51745b6e29830e7c0747474c0f802ac57ace75a5681a8a2e007fe31fee42f1919de2769d3d0860fbfc568703a3349d3fcc09f4311fe957d6912be4e6dec82e87f0f5e8bb7ed3b400f30e6b5a7fd3f347f11b22c74b1fa1e4e9d3c8ac4d831d6959d50680567d0779824b67cc4ff956c5f8936a346baaf1e6da91ec6349c513d8f6b319c0f1009fd111af7d4ed985ce327e2e71e4047d1037e201826568b853875ef78bbba1a8d68d23fcbd1ef1f9ba0e5befb1c7196574bd1b24e1856cfdf468f856d1eca66a561156a90e2dfc8d1ee53f30353e24a931fad2decb3466d5eefcac1ef7a9d879ab75ea6504959bad50d4a844e8089ff14489f06b4cfacf35ebe2c6a2bf83c5c991c9b6fb0cdbe573413a34096b4e93d0b87d95c75c01b09f97d509cd9e32e8d11aedb6cae51207293d4fe8b482811c59c36dbc01ec764aad1cfdd70e8e2363e2b16de0d7ebda3759d9758a64af6b500e1e3d572cf0a6ed1d11cd251d5fa397d1c0df475634957b01edbb719e990d8dd4f8a7123e85475375392d241888f30878e3e68de93be0b9f548aec5ae2bc6af29d50da14e5bd609401f8ee21cd87fca5686871b5bbc4b847985ebb8cad7c3e09d311a32afe24bf07dc77f95c92d4fff002eb4e83e092d60d4e82c6abadd952a255c6b9563e859946ead1a1af711a90b836237c4d6a93b6731e52bbb7115c64b77bbfa4fd1710c46d3b99f4928b60a09fb3ec4fb3bc0d9d1e23d42ee14b500af992dee4d1aac7fe5703f3d57d13805ef6b45ae0770103052155b8a9b8e4ad2a955baa0fd0d12ab837a2ad540e8af16051546048399fba99843af19c8ad25c510500c406aa525414066d2ef7aad35a83942ceb9d0f0569ed1e0b410840cc7e556880d6c7c7cd369d2913e6a17553b3b43d7eebb31438b64672e86563a83fb90a957a7127c737c75571c540f3a47a7cff45d29106c0589d0399a06e7ff00c1f33f24fc5f117d3b3afd8987e66d2611b8eeb648f21288dc3438877413fa2af85d36b98f044f7c9f8e9f64cc08c26096cf7b6a53b9a551cca8def5510e739c272b8877f3b67de075e6275215af732a358c25ed2f6b0120b09ccecad9076991d575c141aca4ed3ddcc7e52b11805836add31a750c22b7ad3748ff00db2ae69e0848bc33ce01d761a6dab32a0a2c735a660b8ba797f36c4722b7787e234eb5315293816ea3c411a10e1c88416e75699d74ea105b26bad6b01440efff007a2203c9d0127a80267a2e8d22970a8839393e59a3c56eceb1ae5d0742f3b0f21baa6db414d99267f33b992eef3c9f3d47a852dcb435ac9d4e7603e6e70cc7eabda5533169de466ff4c7cc14fd0abd96a8b3413a7874ff00956e98508e8ac52f00a2caa2d314cd5131481c946b39f71e53cb7321b3998d27e6dff6a01734db93dd0b4dc68f9b981ca9b47cdc7ee166af4f77d578d9a4d6475f27a98a37057f054ad634833316a8c61145e03b2a214f568f25e830a7bba29a232b7586303c81b0292217a3beef34937d497c89f4e3f0771a255c6aa2c10acdb3e375ea41fb3cf9a1988598ab4cb1dcc42e757decf6aeb92b48e847e8ba6120f35e823aaa71d9369d9c3f12e08ba03dc0ef23faadefb39a9569d114ab31cd7374d7a0d96a5c1c4e9b28ab59926440465142c5b0a17aace74954ab527e52334154b0db7a94f317d42fd7e1e0965155c14837d860a8ea2075b88435c5a41d3c12a7c42d76907e0a052c235567ef5bde251737ad23741710ad248092632602bda9a9463862f330c877419f6e6a3dac060b9c049f15acc3f0da745b95bbf371f78fe811c18dcddf42e49a8841d580d39a8f7485209c191b2f491c6cad528c0d3e08257bccb50309d4c91e835faa3d5964f8c6ed94d8c7ba330780d3cc4e87e4555226d97d971f8409e40fca579803b57b7a64fa195468d7068b3c40f9ea7e52bdc26bc3ea9f2fba9cca44318d696f5758963be842cdf01e1fd99ab54bb70ca60e5007746bb40fcb2772ad637549a6fef6ed223cc29b85ab65b4a5220b9b9c8ff16a3e44244b919fa0ddc540d124c81af8f80f8c2a16465c5e7afcf73f403d556bdbaccf2d1b3409ff0011d40f4067d42933e5047e56807cdda9ff004a7ee842edcd59630f4a8c27d1c17b8037570e4c2593ea4c7c0843a85c4d274f2328ae14d2e602741ef69ccbbbdf4202d7c06b90be5853db3e4e53bf2515b4910429bb0f1db6531cb2ce853a02f0095e93094c73ee2f616dd389fe66b5c3ca32fd5a567af4f70ade712d8b6bbda4384b5b1a1f1959abde1e79690d32bc8cd8a5f51d1ea61c8b45608b7777427547a9bfe97558d82d9f2556a5370dda47a2e77168ba69836e8f7ca49b71ef149131dbda52a8e9044a89ae552f27378110bd48ca8f364ad172d801ef3d3cdcd307741061ee0092e3d536c2dc5407c3454de896a1e76254c73503f186f255ad2cd9b1dc2b62d98392dbb0e852af88971900a8c5e39da00afd56000e8a8e10d97b8f8a56c3442eb0738c9684e1851e811d2a37949636a08361a21189b435692a940af2d4d4786c18e7e5cd2cadf083490b02c334ed5def11dcfe91d7cca28fb46f39f394c7b0c40392341aeb1e8a3a14aa0daa66fe97081f1dfe6bd1c58f48d239273d992b585ba8d4744f7b8c666fa85583da4900963c6a5a0ce9d636213c5570f7b5e8e1b7af44ed34259e56bceec86cfac2ca63956deea93bb5a60e493aeed2398211bc45ce01d91a5c4ea00ea82e198339ad73aa882e93977dfaa4964515c8d1839333f4b102da7469c6a447c00fd515c36afbe7abbe884e236715d806cd13fbf82bb49d95b08376931aab82ddc3c1d3aab752edac01b22000002390d37434540049ea3ea9eeb5fc4756355dab48c8672ec3f4f89282660861e0069a8799353e3eefca15365e66a65df99ee8f26f77ea0a8b19bbece8e51b981f651585b39cda749824e51e5af7893f12993ec0d06b00b4755cdc99b1778f41e2b5d4e9e5000d80854709b234a9b5a082403e12492741d3556cbaa8ff00b7a7810b28d9ae89e9d5215c6ea345469559f7da4156ede27459c5993458a4774885e848a98c62b10a6ea751ed275067e3a8faaf70eaee23752f133bfb454f31fe90a9e12fd0ae1ecebe8bd79705b1a4aaaeba61f798ac5e6c87540958c3dcda0752d092a442481ac17ecf7da0b0d27b2fae9b9c3a699768e2d2356c810483b73d555c6bda9d4ed5dfc3d163e8b0c10e2454279911a05c88804023a01eb0251ec52854a069542ea6eed28308734407020101e220540349e6079abea4763ba607c42dbcb315a9030e111cda4684145f0719580735c12c2f6a53a27b17be98dcb5ae2d13d74551fc4b77cae6b7ff006391a06c7d1f5c41cc3d5586be44af9bedf8caf81005dd58e8483f50b6d807b46b86340aad6561e3dc7ff9869f25b536c752bc7c309506063bb3d579c3f7b4712a0e7b33d38395cd3060c4e879882117b6c23b36e50e9f30b3414f9185ca32e565f66e1d151bd639a364b4d0c9a1a44a8dda181b9fdcaf69d631037552feff00b2649d5c486b47571fb0dfc814f8694b662e4e5523dbaa94a9fbfabba6e7e1c90ba9c4197dca407998fa051dc091a992752799284d76ae7cde664bfb7847562f131d7dc5dbbe226ba0b985af065ae6c1f31cb42344eab8d537e50d7b9ae7e995a0bb513248e434dfc420370ddff650dab427f7aad0fd467552e433fd3e0f98f06b307c59b9c9a95091b3496803c498d519ba70224191d573669acddb291e3a14eb6c7ee2918eccb9a776833ea3a143ebeeed8afc7d57068311a5273f469f91ff0094269924ca85dc48ecaf6badaa6bb19dbcf4f05ed857a95746512d6f37bcc0f40375d91cf1d55b395e19dba4797f57dd03f3b7ea116756eef4fa292df076c82eef386a27dd07cbf544ae2e5b4db352078c685425e6a4ea2ace88783292e5d190c61c5ef6b40313ae9a2d060d49ee7d4732746448dc4b9bb6a358695eb3882df56e7127c94b471c6b58e1443aa380d1a0f741ea4ec13e3f2db7f8832785aabd91a7b6ba2d706ba0831948d247875fde88ebd9241e480e196a2b5105cee8e98d41d09f5cd2513c3ae0cf66fdc6c7a8e5eabb9ab568f3ef9a2cb9853d8138a86b558d399492924ad8ca36e9133aa81ba8db5648f3fa2821442af7a47230b931e773934970744b12846fb331c5af70b8a9039fd821186dfe59cc2168788e99fe22a1f11f40815c3041d141be4aaf4187d4ccd0554aa53e93bf0c2af59cb188495e285cf49001c228ecbb2f0b60acaf87d1655a59b353d8833009823a6904150607ecc830871639c41906a1103ff188f92e9987cd060159f4e7697100780857f64f94711c67832e2d65d40baad0824b46af03720b79f98f822380709d8ded2ed2854aba68e698ccc77423eebaade55a2d25d95ce275ee8eefa2194ed5957345986077bd51bf86e33d5d00fcd60d1cfaff0082ecadcfe35e767e0e7d30ef81d5527e047276964e372c9890dc911fd47baef45b6abc1586d27662d05c4c9906aebe6656870fa74c3432dc31c3a169a60790688457f20d46fb1d6d565838d4a795cfacf31e0d0da7afab0adcf6ae3c96730fa4e6023b36b0493dc738ea4c9d078a96ae34ea66032ab8750d07e4754f62ea1dcae2aa5fd2206aa1b3c69cf121a40fea696a8ae718a6e391d56983d33059bb4149a60aac482855fdc1354177f234479ba64f9c003e2b4828b1ff00cc08f020a138fe184b7f0b7f1fa12a328bd1d16835bab0454b8954abd61cd41569d56097b48f2ef0f88e4a8d6ae4ec67cb55c524fb3b535d170d409b22501af7a5be0a36630ddb36a9751b60fb5e2354d001d8fa68850bcf15232e3620fcd0a0ec186520771289dbb400825ad6d743a22946ba0901c8bc483be89f5ade93d991ed6bda46ad76a14344b5db9fb29ab5b35c203b29e446a83f632f452c3f87eda902da74f282660f780f22758f546a861fa774088db659aa8dc4195218ca35a9f28796541d64110511763d5e9019eceb01d5b91cdf882bab167cab84effc7fd39f2e1c4f97fecd2e0fdca6f61d3a7fc2757a05e4b81873431cd3d1c0bbec4fc502b4e21cfb537f916fca51bb5ba91a88ee827f7e417a5e3e69c9d4a347067c108c768cac27865e8ad4c3b9ece1d1c3423e2abb892e27c63d07efe6a85a576d2ae60e95585c5bd2a30093ea1c3fcbe2adb5fa428f9ee928aecde2ab764d56a656cfee76085e1d5a5a67f329312aa4069fe59877ae80aab66c82f07419e7e3fb28f8f8b4c76fb3659ed3a467f8cb1f7d0bfaac2d96770823c58d2a0b6c76855d260f428af145953ab59dda30e6868ccd9db288d36591c47865c06667787868e1e617249cadf67424a8d6b5ed2dee90555ae0ac1f695e89ee3ce9c8eaadd0e2ea8dd2ab24751aa0a6999c1a346e1aa485378aed8ea4c78249853a20176f224b583a83f68d54570fa7481355adaaeeb90344fcd7a92eaae192bf435d7545dab4766e8df2077c14e6d1e449b824113059f626124928c077ddd06ffdb0f70e6f1947c1b328ad85dd678d29b033c0e5d3d3f44924a12abaa5b35dabea070d0969711f3d5582facf1146b3437968ecdea5e0a492d16667a68dd910e34dc39e703fda558a3614cb60d2613fd2207cf55e249fab16f92963b8a36d29c536343ddee80341e24f3591abc41775dceec6e21ac76479753a6467072bb28ca0c48701e49248c55c5d88db52447715af39dd9f4a54c7d904bfb7aefd5d5dc4f5c94c1f8812bd4972b3ac13716754ef59e7e1fa2175b0524c97ba7cd24914e846477142ad26970aaed39183e49967c435c10d86ba4f924926a4fda06cd7a668387b1f170ec905ae00b89ddb946e7af4d16b4b8b080e33203811cc149253cb8a2a2da298f249b498fa799c4004c93100c6a8bd1e1aba7410f6307f5f78fc1a7ee924a58b1a972cb65c8e3e83b67c3b940cf59ee3fd20347dcfcd18a568d688d7d494925d4b1c574733c927d8861f4a67209ea9e6ca99fe51b473fd57a92ac5b5e894b9f657ab855173c3cd305cd9832e11220ec7a0531b66f4f99492425f77be4115afa1afa0d23296e9e654156d9ba11a7cd2491d981a454c4ad1d51f981034020cf2086bf0ca83511e87f5492536865260dbec2b38fc4a7afe6044acb62dc38e6825b0478c4a492494132919b4669f602764924973973fffd9, 'bbr', 500);
INSERT INTO `staff_information` (`id`, `first_name`, `surname`, `Dob`, `Email`, `Telephone`, `Address`, `Department`, `Salary`, `Post_code`, `Designation`, `Status`, `Date_hired`, `job_title`, `gender`, `image`, `pwd`, `ot_rate`) VALUES
(2, 'Sasmitha', 'Bandara', '1990-05-16', '90sbudditha@gmail.com', 710318934, 'malabe', 'Products', 25000, '92500', 'Manager', 'Active', '2018-05-11 00:32:12', 'Good', 'Male', 0xffd8ffe000104a46494600010100000100010000ffdb004300100b0b0b0c0b100c0c10170f0d0f171b141010141b1f17171717171f1e171a1a1a1a171e1e23252725231e2f2f33332f2f404040404040404040404040404040ffdb004301110f0f1113111512121514111411141a141616141a261a1a1c1a1a2630231e1e1e1e23302b2e2727272e2b35353030353540403f404040404040404040404040ffc20011080235035103012200021101031101ffc4001a000003010101010000000000000000000000010203040506ffc4001801010101010100000000000000000000000001020304ffda000c03010002100310000001f6da658063ae7a5cd0134b93af9ecf3e95594c06000000000000000000000400000aea68d1aa15270c1a8d626cb8f197d0e3e1a8ec78e67a7af83d15eb2c76b0010a4c602a4d0000d32e6a5201ca265218260000da63cf48206449484a824a44cda246086086098c4c0a698803602ac032b9ab9a69cd2c76cd3cd69ea58300000000000000000000000008001d4d2ddc5834453c3ce97bfe76b29a6661b5e02f474f0b4ede5c91d1dfe56b5f4afc2f62e76684a0144d02681a65a69200940280000069834c7179888468b2ce3a1e1ad5a7212c964690000600000c7534200d40ab0666d1736d39a51a4a79635a962a00000000000000000000000000021b4d74a9e397af93cde69aede7c8cdb432539b1898c965e6ec8061d3c7a1eb76fcd77d9f40d3b949a500134ca06998d2830400000d30698f9fa39ace2bc74cf45cbd5c939f7f5f375ec45e72c2c3966bd3ae7dd96000000034c7534001a09d5b4c8553736d39a13479b9ed8eb36d318000000000000000000000000010ea5acf93dbe567512c96ab272d4ce56699aab1024d6b9c5dd4d9a2cecb9057dfe7eb1f49a7c97b1acfae9a0004016d3484d28321014003130698f2d653863a716b2e6eae7ccecebe2eddc33d339ae2f33d3f2e6fbfbbc7f55cf7043130001a63a9a000b69d5b9a262f3b9d5cd4d09a3830df0d66aa6860000000000000000000000000043a94bcde374f26742712d282c57544b01d66c24413aa0acec2e688eae6d658eae7e83daebf1fd1d67600134554d1335200400500034c1a0a4d26187461758f3757361bf7f97e9ef159eb94d71797e9f9b9eabd5f1fb35c7d67cbb4ba12ca130698ea2c002da7555148b1ac2ce8be40ebcb08262e29d4d0c00000000000000000000000001c11782f8d9d658dde74c5690251630b335a669aa9d173de74971ade1737a22747b460cba7ecf8bef59bb0b9134554d13352022188181400300a4d26386b85196d19d72fa9e57a7ae7b67a437c1e77a9e667ae085ae3dfd99f566959d1752c6d30b9a01853554b2d79ac941728add707d8479d1d5cd454d0c0000000000000000000000001a70bceeff373be2c77ce58a158e258d4e83554673b12e1a7435c36d3ba58dba6e5e5cbb99cdd6eecf0b2f638ac8f733b66c4f504d0ee2c9ceb897a4e0735e83c746284c627434ca4339b9fa392cb26b3be3f47cef435cba66935c7e5fafe667af046996b97bdd9e67a79b93a834a9a1830a9a180554ba19499e3d59d91be7a2b412e5c1e8f9d72dcd53000000000000000001343103001a52e7e6f5f9b8dce40296599ad18b5c834bcf69adfad74e379d5b26c0ba8ab1b9a29aab951d13accbd0130b04d0ee2cc7c8f721af12fd825e5db57719bb6416125026330e7ed56713ec26bcaebe9771258bcfc5ea4cd78f9fb65cf99e85d4b94ef319d5021826030075354ee2c33d2115c58d34b3e77a5e75ccd4d5300000000000000000134000c4c32d5cbe0e3edf8f9dc4cd425d097091dcaacf52b7cfa73bebdf1db1b6d318cb1dc51552ee69c95b561c9acfa82570d0289a1d4d0d129448512144059016485396a49926a621a98a5dd608e85806eb04741ce1b9886a66cb2594e68a11155354ea68734933d33d29a6a55c1e8705ce552ea80000000000000004000000340da707cefd17cecd63bf2f5677d7a38e7db2e3f40d63c9da74df3ebed9df9f596386f9f3b3b8e02bbcf3ecedae2de36e7bf26ba7d7f2fd8df3d1357200000ae2871a42206218218218000da6b396d924aa1655220a508612a908650c60c60c60d318055458ea6869a22e2aca4c957176f1d9cd5356368000001880000000000000001b4e0f13dbe29af04732fb797277f3ef96d1a9e3f4ae9d73eed13cea39ba665e3ae8ce966a6cc67a2c7d99eb2ebcdda5caeae5e9d6286b58402800aa68a8b944000000000000da6ab3d73491a54344a7031302990b59218c6d30600d31803b8b1d4d0d34454d5cd029a397ab9ece269d9400000000000000000000000031387142fcf61ef7919dc6bcf52f7be1db3bdab9fa0f44879a0031019e8eb3b0281a6ba63a6a2e8e4ebb9d1335cd269400553454d24900068000001a60d3522e12405434679eb8a3b8b2ae68154ac0d140c0018030077163a9a1a619b0b9b4d4d186f9279ed3d46d3000000000000000000000001a70b937f326f3c94e6c3cf5a5b73f54ba75bac6f57352a6494e05d2250dc86b49d8f6c37b98eccf4df3a02e52694004c0b4d24b050010c440c4c01a6a4d4a480a8688c77c51699e8554d0d34b034503130000620ab8b1b4ca0080573604d19e929e6316a534c0000000000000000000000069c1e77679935c37ac675355ad9c3be7acbe8eb8eb8e9579b2f3a8954dcacd283a32ce6b3aad12fa72cf59f62bc7ecebc3b17351bbf3b05f60e7de189cb40d24050000040000300734920051342c76c5274cf42aa68698b09a2c0000000007734534ca0099a9b9b69cd24d1e6cdc6b34d3000000000000000000000001a70e6b92dd39f6238b5ebcabc88db931af634c7a39f5490aeb166cb352996ba1cd7b45a1376f4f473ebd3878de96be76f97ac6744f36ccf33ad72d7ab7c3d51a5661d3af16f9bb0295a0010310534d04d1000269565ae699dc597514500b0aa4a698021800016c0a682c0262e2e747352a1a5f3f1df0d669cd0c0000000000000000000000a4c9f23d3f2abd14e0e88d11e479fe9f9b8d7a3d9e7f573edd1146759373609c8c8674caa9707add9bf95e87cef5e5f5f8727a5be7c5b19d375311cdd599874645755e4e36d22cd6f1db344c950d0031b4d04d129a001567a418d4d25d4d1402ccdc14d3130000003425c589d534c98d22caa9a8134bc5cbd9c77355154da060000000000000000c4392841879be8f0d743cf63a419e5f9bdfc59d6dd5cdb73ebd3a61ae74e6e652595cf5ac5cad310e89cf9d17069975e5bfd3fca7a1acfbdcfcbad5d6171430c636ccb736746996856dcfb45819a00002b01189909a001545c1934d2ae2aac085170aea680000000236e6e98a69d511439252ea2c134bc9c7ddc363a8bb1800d300000000054210584554a439689e5ebc08df3e82da678dc9bf3cbd3ac5f2efb3552d56572d46a8cea68a9a691cdd786b3c1cbe8f2f6e18d46c7a5e8e7b599e3bc2cd2214521b546db63a89ce15df7cbd18b404000c10da64cd4800aa6a4c9349753554d385352a54d0000000063d31714d675b90c4b4942e28698bcfe7fa5e6d854d58da06d30001000052e766d6a69c39183096139ed893d3cf66e79f9c72e44e9dfa6f18dcd5572ed13b294716674ec9b9a4cf35b74e7c98f661d7970775779a5351134852e496994c669ae1ad2ce986dcbd71b09e2800d3436993352002a552633709771754d385370aae28600000016222b2d9d2b18954a2a8b180b9f97eaf968aa2b5284c6000000008317d25726b7ca754e3d04022896396d3cee2f6bce5c23aa8e29ebe6af576e6ed4c6852db9ae3de16939dcd00a2b22fa31e7efe6eee6ed773e6f7ad2d7173133504cd4852b1940b4c34a79bc4e8df3b8daf0df34021a6034c517000289a32cf484aa9aab73504d4934304dac94c92825a71a54baa73413522a9a4602cf99e9f9a6552f59a681898c40021d2b1c934e291caba703530dca59595481e3b24f2b6eae25d33ba36df851e961a5a73684cbacb7cbd191719d467799a74ac7d1e5ea5874d8da72935244de64a28349b1b41c978aadfa38ba8b31d637d70d2350acd4c626029a44942c94889d42284512a2c84ba28468b322d425d0cc3568b9d2a6a9d4d09342a8765889579de8f9d18b97bcd098340c40f49a14b290d00808a461aa92f3de48d3294e8326690e8e07dbcd533552e3d3199dd9f0fa289cd4b3267c7d32459d7c3ea7177f2defcfbae8d50a5c0450654b41b10c4cf2f1975d7bcf505150368e8d78fa32b192a8ae796de64d68a02d485128a2418914910d206814103106e06b175354ea02d2813c16b3da60f3abe0df90813d66840c40c4cab58d742c83551613724aa808b91e99d046a9305b409caadab070f3d9d625b39f8bd4896b4f27a8ede4ea59be76fc9d18ebeb72f4f3f5e39ef95d6d78e9090d13523794aec6745b03c3ede7ebb37bcea5bd31d4aa961483a9e1be6e586b8f3db685621188010ac10d0000020000410007401bc5d45d18edcd64cf22b36cb29b3adf0c47a11cbb2db4142062066906906959c5a30cf6764f472652fa131621684cefce6b586c895a226d19c6c8c9b8ae87cd51b0accf83d493cad77e25e9cb9baa5f5f97a79ee5b94b57cb15d91ce1b4e7436513541ad66cf2fa78f53b34ca8d9c691779516d31efcf50a038f51a06229a0000010c4001002000134001d206f1571747374f3a78e44ef3a4c4866b397a37e0d0ef7c54763e30ecae2f400d95139680e20dccc2b9b52ce1e9ae25f47a383d18ed96b1ac39fd02cf3ceecace55b655052498d518c744d73bd615e9849d99f3e89e6edae12faf8c6b662f46b8ba6257466f40caaa46d05e77ce9e6f5f077cbd69d51ae2474d73ec6a2653972c01c7a3103100000000002188000010021883a80de1e99dd3c37c53e662b2d4a490214534d5b4231155ee79fea8d0aa32dd10ca31ad1139ec8c55ab3caf77c7f633aefcb559b8eae0d0cd1accd98e5d8579d3e967670aebcacc16924149339d8ae4c7bf9a5e2f53576234a3376a0251a480b3d1564a92be3e9e2387b787b23d0be6b3a08a29c86959337acb4c6930e7b00000000043100000818800400a0017a80e9ceaf3d29e5ae67cc73f5725cb152a7aeb672bea0e537832e9d3d236402614a582040ad2120467a4561eaf8fee675b45ce6aa40d0131ab585a48de68d4c2cb94c8cfa1a71c77aaf1f8fe920e7e7f462cf34ef93974e8e64d172e966ae1d34858559c4f1f4655e7f56feae5e6de8ad9d5523a029191da63af2e8c0cd00000010000080050000400a010020ec03a737a676545cd7cdf0fa3e75c971475747374696488b47de218aa5a1a4861252cd1bb811c326b2cf6e3b397ea3e67ea33a68500c131000a002621a61197428c4d830ad00182006087c7d9c9a9c46cb598b88ad56326d9e730eb3e9acfe87c3f6f27f3ff0045c32f8971bea69ae5ae375ae3af3e9aa632000000008000100a00080040208100007601d39bbcf429355e0797ebf917254b5e9db9f6b2c9aaf531685d1c88ea8a412524b24a9a82d54f3ec3cf4e7b62661eb7156f3d8b0d358b00010c90a4818980108004c26845210aa45a8a94d3cdf4bc1d4b8e6ade74330d1438a5217d9c5e9d67ec717764019be073fd07916eac8e3def48d13602e0000004c10009a000102880404080104002f634faf22e2cb4d578fe1fbfe05c8e59bedcfdf47a292da9a9625b4e6e9cf3b37cf57341a19d49519d294b3bcf9fb64c75e6ca5f49f06e74d72eb67669c9b74e7ab15c808622193431021c14d000026086291799afcdfd17cf6b3ce686b39ba9190d6c9497ea793ad7d0f579fe86680653e47672f3ed967139e9d9d5e3fb3ac30260028004c400026813049a513400a000404a803b40ebc9d4d16d15e6fcdfd3fcbd8dc526feaf1fa8d4ec1cba004a8681850d000065a49c8f6cb3babe64bd73168b93b9570efbe4746be7ed67a35c3d1be7b10d9a2428963042045098212d210c4045666be47a9c1bcf31be77311a073e5da8e55d3273bde6b4f7fe6fb23dfc33f3b976db9f28c7430d72b9dbd9f3bd2b901c82608004c10d00024d0805400808008402820ed13ebc8b8a3468b393e63eabe7b5394dd59d5eb795ea73ea018d0028a940c2c4340295a4902c5e77a61b5d9e72f4b25e7d72c4ee7c0e3b631b5e8acf5d67aa83a7118034c001340020421a9996c8934cd456be7f5f1eb3b28d2c92d19ad2485a226934d09a0e1f6571efe2fb3b3b99ceb2d60d95636010020000000409a100200404a864204a210c90ee68ebc9d4b3469d98fcefd1fcd59332ebdad9ae5d4129ab2516a2a28955a4cc952a25d0406564d731d3996f952f59cda1b654ee79174a57ddcbdbbc6ae5ef93134001825963426a548a424c3356132ca8e4ebc396f25b19d4514496d325d155cd5d0ece7d342c015938e9859330abd6a0e5b0004d0021a00040843429588869228cf29779e2c6bd0cf843b0e42be81a7d39152cd5cd599fcdfd2fce572efcfd07b924f3ea0966b52a5aaca57658a3578b349cb3d4a7e63df2f54e5eae7daab4d53963ad5bc87696709dfa59c5d9a9be6a877286000008a2114449a66599ba814f3e335d8b8dcbd77cb46990b875ad7123acf373edcbd67e5eb677ae7d6cb1339b2ee93cdc7d4c8f257a999e5f71d92f702e7a692aa520c995b59671d271e677cf9ca5f4638ae35cb6d25e35e8070e9d68cada9406200ec69fa383133573564fce7d1f9b5e09ede912a971ee4acb3ab9ca2dd9f2b4df9aaf78e73b2ece1e8dbbe5e4dfa4d633da75b1c91a95701585458b54d266d85304d821a000534895744db15799d9e3e77e7e9d5c917593d4e9d78da6bc9be764b6c4ad991bc19dc2cdd88f579f4e4e8aca5eadfc98b3ddaf06acfa1cfc793d69f3a71af423828e9c8da3923d3a5f2abd40e0dfa5c6556910c1340d215a48a524342188aea61df8b00d282c98096d86a7273870ec20e7b48175ee0edcb541d39a001009050c0ce40100d859400c04182b00680000021d00660bcb21cfae5cc1cf532164c86b2906a241ac9a059588635d7d21c7ae9a048201484b3212c815ae8094c2c60580008280010001080548010000082000ffc4002a10000202010206020203010101000000000001021103101204202130314013221432234150334205ffda0008010100010502e4fed7265ff237e493be2459e4472465e8bef3f73fb5c997c7f873c9b4fca812e2879a6c8346fa3e64c728de3e26488e684bdd7ee3f3c993c7f8597228c5b6de9d4b378b2c512cf169ed66eb9472cb109a6bfd662e49f8ff000259228cbc44876c68a9152d2c4cdba23ff5bd98b24e263c919af659659b8de6e168fd462e49787ef4a71892cc4b259ba26f46f3733ae94526783c9e746293233d937c518b2ac9ec4d9bcdc498e4cc62d1966ef498b9192f3ee67944935bbab28a451d35b3a32b5adda79d3fa3866f77af93c24218fce3f1a324c593ac5fa2c5cb3f3edcba991b536db7d4ad2f4722cea5b14cbd2cdd6783fa8e9c37492cb06465197ad22babf2c662f1a3320fa3c7217a0c5cb93cfb791e4b979b2f5b1b369d39548a4c5a2e9a7f6ae9377c1747eab19218cc5ab321231323e83172e5f3edf132a80f5723cf2514ce852369e0f244ff00c8c809754da3165b8faac90c91898b464c9907d60fbcb462e5c9e7da6e96672dd7a59650933a2e4b7a78d1a1746fcb178f3289fdc3c6392b83f5592d248c22d19327a4262917dc5a3d132cb2521fb73f13eac6515cf6d6925423caad7fa8ae91f2754395383b7ccfbd21e92443f68e8cc84b4b31d8bbd265966e2dfbb9a5b63265f23e4e850c8b2f4a1c0da6c66d36b16396b9bf5c4be9ccfbd2d11217ef1d19909e8bce345775ccbe4a66d63f6f313d2f4bd1b12d2b4ae48908daf8cf8cf8d90c4289c462db9a3123827292e765965f6e7a4491ff00a86b949e89fdb13e83ee4b5a23028a271f6a4ccb631a3a9e0f3aab656946c67c4d9f131622189092d52d78b8dc3047b321cc7908e413ed4f488c7e61ae426868670efa21f7369b4a12e49f8f6652a272b197a56aa25ad11080a26d369b7b1923be18e1149f627e36ccd922309114fb5246c3631c18f13211ad651b25899f8e3e18c587689146d28aedc85c92f1ec3744f2a324ade9d0e9a50ef5890eec23b5515d8da6d3695dba2b4ae5a28a2bd090b918fd8ca9b8cef9af4bd11121dc45fb36596596596596596596596597da62e464bcfb12c31913e8f458db2585945688446245771c925f26f97acfdc62e59f9f6725ee31758e3566d64f1ee4d35a231c4dbdbb279544dd3cc61c6a11f59ff8593cfb39bf7303eb8fc7da45d13498c898d74d5e5823f211f39f39f907e423e54c5227d2325291830108ed5fec65f3ecf150a989d38bb57443f7c8ba53bc4bac3c692dccd87c68f8e238e144fe2231b2288a26ae11811e9fe257ad97dae2637028c1928e8c71da27b9655f6c285a3d36b1c19f1bb78acf8e284848444ad23e3fd8cbed496e8e5838bb3a32391a149b1b274cc4fb1b45136ad624b48f8f71fb997c7b59a1bc944db5a265b67f50ebd9be48922c8f8f71e8bd57cb93c7b0c9e492253949b37099641362c72211a1775ab8e28fbcc7eb3e59f8f626ba486c7a550cc5e573d965884faf4d53e90551f79facf965e3d9cd9556892192202d172d962d254c6da23924467644b5a5a37a3745fb6fd67cafc3f6270de65c32890c4d9923d634938b2662f10fd79ab4dc751a368b198e14f8872818b36ee49c459a70219a322fd87e9ad5f2b25e7d86ac50a33e2b6b0b4e4ba6431f421c9b8bd59b2ca923a95366dc863544a2a6a5178b2629de8f49c6ceb1219197a7546f90a7e9bf59f34ff6f632e414a86dbd199c879c6fa1e0b1e965eb451d50a4634424999b12c91c77170f165f564a278719965e884fd27ee64fdbd793a4ddcd78aa194712231b13d1f35e8d1d449b71e91c5976673242cc52ebfdbd648488b2f913f45facf9b2f9f5f2788fee4656f4e2fc22027c95ca9eaa894ea176f84cdb9138597f67ab5a2e8c4f58fa2fd67a2e4cde7d7c82fd882fbe9c67ea88e89f2b43132c4cb371c466bd212709424a7132ae9195f2568b45e05e8bf617266f5d923ff5fd63f3a719e622168b96ac78c78a654d1f627635af0d9fe36f8b6c864cb21c6852d58b58e8bd17e827d85c99bd94bab462fd74e2ff007868b54f4ae76ae525d5f46230c04b4ad5f247552eabd07df8f275ec65f1dea1896b7cbffa647f5d3897fcb1f2b45aa10f99134645a638ee94152d1f3c355fba909df7df7e22ede4f1dfbbd2f998fcc85e34e23feb0fdb695ca87cb374a1fac8489e3da70b1e8863ec447a7f643befbf5adf5ec4fc777264d8433291d1f65917d659b1c47c644fcd272dd35d1d26a8ad6b9e7d44ba343d1452d5f67fad2edae9df7e9575d5f2cbc3eee586e162497da2466a4b9dab32c4da6d1c46ba1c33bc7478e46b95b21e4db64a0d097d97616bff00ad25220ab45de7eb3e5912f3de68712390feb9a51251dad146d1aa3845f5f278ec3d2d45437e5969b63dcbfe5637f582b7a47bcfb14514515da7cac9f9edae464a22c8d09dab3cf2ca369a716b471470d4a11f2d15c8f57a3c6a621ca8abeebffb6ee8fa8ba17a265f768da6d28ae5b2cb2cb2fbacc9fb76ab998d117b59e052e594532b66bd50b3cd38e45218f99eb3990e77cf3fdf7907bb249e95a21776cb2cbf49f364f3d9f05f6191d18a427c8d5a71dbaca362219a89ed4b5bd575657da02172be7cd2fba232da24d8b922f95b2cbf756accbe7b11d2bb0c8ead6965eb563857238d90caf1b5b64b47d06f4c7d65549aea842e6a172e5b79631210ae6445deafdfb2f5664ecdd09df3be44f56b54f4bd1c34ad2505249cf0ca19639359f42cc3fbb25a21733e66ef2c156ab9975d25ee5963659b8523722531f610ca1498e5429c7b2b92b9132ce8cdad69434a4a5096370ce2945924a4a49c5f0fff0046316898f92c722cb2f5ff00dc44f55cb175a4fdc93371b873379bcde6e2fb3e521ad2503ec88e52f916962e56b92c522b4a1a4d4b1389d511e20ca94e3c2ffd243d6cde6e371b8be4b22f4fee12bd16b7ca9f4979f616b90de6ed6cde2909f3c11921d5157a32e48e8c94452941c649eb08ef72c324534597cd456aa429ead58e146585119389c3d3cb3f0b4b2cbec50893e9663d1722e443f732f8e465898a46e37165962ea6e66f67d472379d0e8741a521a1a96378f26ed30791a4c9614c78e4bb34569b853379d0946d4951c37fdb2b2cbd28a28ae4b2cb1191fd5b316a989ff8793c37d771b8dc365966e371b8dc6e371855c2868f0d3b1a3ac4e8cdba791a2517170c8a460d2f5714c78c707cd451b4da6d2996c5333183fed9722f91532b5b3a9b4d86c361b4a284667f5310b4da531313e47eee4f137f6b2cbed42351d1a1c4451b44c63421a1fd27c23b814cb757c9b50f121e3653e7a28da4e2f6e04f7fd99054aacd86c4576b3bfa18df3d9bc4c7eee4f193f7ede0c1bbb35ab567f59175e0ff00e5aec12a3750a49f2b821e21e366d7cd2f1c2ffd258636a45aecbe4cff00a98f442e68af7a7e337efad14572e1c7be5d9be4b69e5470cab172d2369b58ac72eb7cbb51f1c4f84f899b648929b315c728d1d4dc298a65f61993a94405a5f347de978e23f7d1091b4da6d369b4c7c3b998e1f1c7bd39f5c5ff003ecd236f59265b42766e45ae6db136a3e347c48f8227c1132c36962917c8cb19e4c114e52e0e0384a0743a1d345a4b22898a4e4bdd978e27f7d1111228a28863dc78e7b2f9db3adc3f5d2bb9b50e06d6548b92232bec67e6b370de88c7d271f0d26668fc79371b9916cbd17bece2ff006d111d2cb20b734ab5bd6fb1438997a28f592f1e9d763279a290da3716597aa2ab247c1c4e2df1d828f22f7d9c66a85aaeae31db196e2393b4b95c533e15b93efdeb4573bd3364a97c8cdccb2f9e6baaf1a713fc7931ce52696b1f3eff0019aa16b1bbb996d928459194a1a33c73b2f5bd2cdc5f66fbefc99dff0025965965965e91fda88c6deb971472c562f8a5d294b487bab5e33c6ab4841cc5048e9a6e44a22938bbd14baf928ae4923e49445953132f4b2c52f5ff00b333fe42cb2cbd2f4b31cf72c7c8dd29753a31c48cac8fbab5e2ff005d51870ee2e312e4cfb6928589344a16414e2e8d8b91b2f571b2588fbc4594523710ea6d645fadff00a7e26ae5b4da6d36f345d18325f266968dd0e7d3136a4bc7b8b5e2bf5d60b74a737171857765c97ab821e392371198a64597eaafd9f868a2b463895cb09d3c53df1324f68e4391213e905f6f756bc4feaf5e157da2bbd4388d1d4de29726d4c7891b1a1392164134fd48f99781ad19b4a369b4da6c361b59832384f265a2590dda3f14618fdbdd5ae65f571eb451c377ecbd289631c2485368f910a48b3716366ce8ba3f4e0647f54f468aeced464f3262b660c144387854b83c52238be37fe065f125d6b4e1a3f7ef35a26596741c223c2878a48dd347ca29a7a6f175ef5965966e1b20fa64fd4b13e6ad6cea47635f170c296289f3a3f218f8898a5292ff00032789fed659823b71f6ac6cbd5c4a1b92165377252258d0f11b5a12662f1ddb3a1d0746d1a5508aaca514cdb22a5cf4cdac51d58ef58f8f5acdc6e3773cfc65fdc4ae5dfb37165263c687068dd247c88dc8b2f55d48c6976fa695cb2f11f191e965e9523648d86c46d5cee490f2c079d18f26e9fa766e43cb043e2227cd367f333e2cacfc7973cfc67fdcc0af2f3d96597c93c8a263c9bd3d2cb2f4a46c4381b591c7362c691b5771a4cf8e27c71292d1b2cb1f5489eb04bb2f28f3c912cb90df3d7a9c2ab9766f5b2cb1ce2879e07e41bf33366667e3b170f016282291d34be7978e23f7387759796cb2cb1b2cdc8dc89e4a89d48e598ba90c3291f8e7c07c0cf80f88f8a22845762d168b46e46f89be27c903e481ba26e88e51279123e547ca8f962473d1f2d92c91bdd12d1bd0f3347e531717117138c59a0cde8bd5c62cf871b3f1a07e2a1f0923f16670f8dc3b166e1cd1f3c07c423e69b3f999f14d8b8742c5146d5cd46d28ae77e389fd84e9a95a72149166e371bb47348790f90de2b124c58d8b0b1611422b999451450a25236a36a36a36a36a36a36c4da8d88da8508948a47159f61f767c6cf8d1b10ba28f559969d4b65bd28da8dba6f685c46542e3242e3202e231b14e2f925a5966e43cb143e2227cf265e667c7959f8ec5c3c458d236a28a2bd264f868e47f8588fc4c06c8c4a290e08f8cf8d9f1c8db90fc4cf317ff003f29f8123f0a42e1664314605965be5b1bd3a17ad96596596597c8b5cb936af8db738d2d6d8a4d0e4d95c943546e3733ecc5866c58d57c311e043e1cf8a48fe642cb9d1f97950f8acacf9e4cdf959b72b3e093170e858626c46d2bd75a4bc2a3a1d09d732f8487c7d8e82ad3a1d0fa9f53ea74f49eed3a12db5fc47f09fc27f09fc47f19f43ea74d3fa9d6d5f111f805b0e9cace87d4fa1fc62d87d4e9ecff00ffc4002d11000103030400040505010000000000000100021110304012202131034150511361719192222332818242ffda0008010301013f01d870e0a8a47a01c1851b88f4e8b3170a6f49f409d962b3622e30a7d027759631d9daf110413bf8e50b30a1450db09dd26d3fe6c9c16ee85a4a8a9a1d804a2cde7a4da0ead8be368de54ec6bb4a3e213be54526d14286ecd349a81bc8cb1437426f74736cbb34dd14064500e761fa28a4a7669be0a0e5e7bcf69dd669ba2a3bb0538c9f4a151dd8718f4c95286ee29e29f4e086f7e61c26a1b2284a39e6fb7bdeff00e3e80701be247681dbe21e233850e087109a67638c9f403d6107426ba79a1eb12142850a2cf961b5d050e53ba3f4be060f089c384c769fa271fd37c75e8e0f11e96290a318779a36c285184dc39b42cc2850b4a8516db97a5c88210bc770ab593c95196c6f9d2116a8ba770a3449a1eb121682b41505682b4041a145611088b8770a3079fbd1d8604d89d9288f645b6cef6f87e6574a51c13467562292a57143f3b676c2841fc745124a8c22a10db165e78b6193caf861686afdb5a99ecbe27b05aca9381ced1dec85143c2f8867e483815a9ab5b56b6fbaf881179366142d28748f2116ad2a368db158516a0a01453fa45eb57cd1737eab51f9224dd6b653b852a692a4ae572837dd685a1682834a850a303ee9bd55ff00ebfbc10853ecbf15f82fc57d937fca1b7ef7ff00ffc4002b1100020103040103030403000000000000000111023040101220312141505113719203618182236091ffda0008010201013f01e0b0e49d27d817fa34d99bb514e73c762ef5596f1d9ebaaefddbd6cad66f55ca49278ab8f576ddf77638c11ca2f3d15d8d256af9acd5758fad13d1e91a46ab355d7a351a4f8e0befac0b3560458f429cd575eaec212f1ed4f57615241047b4c103b14738f67a87ce8b0f1d5fab9a42561e3abf575ce8eed3c6581551f035c7f4fe6d3c6582d48d4704a15b78abbc26a46a345de2492492493617786d48ca7b575e8de0c096254a44bcdf7dfb3c799bccf5cc7a4938d57581375f19249bab8d78704597664dc6e371b89b75f797b9123bcb9542d2bae3a13f23caaeaf4d55579727a3aa168b124de8de8946f46f66e7c5313b8b93d2b78adc2b902fdee53cdd5a40f0510576e0f37571924694f685089fb8f05137e956eafd487107d67f08fa95b3fc8cd95fab3e9fcb365242bd0cf1f278f9e2fae68d8a06a0dacdacdacd82a6cc926e2aeca7c3154493c5d8944924bb123a8dc4a3c0a9369b5fd8d8bf7152be2ebaa05e4823584783c15569747d43ea23721b24946e3712efd7deb47f5fe309e9f91f99f99f91ff004aff00b0ff009fe4587fffc4002e100000040308020300010501000000000000011121103031021220405051606122413271918103a1b1c1f0e1ffda0008010100063f02d47c1088bd98f463c883726f115830f2530b64dc21b8457db909bbe360f6142d9fc30579c56f58eea414b8eee610983986c4d81037e06aedc69c6c412851a61687786f6c1877c5d14cbe8195a336a4dec3d709717de2f85b1bbf63ac0462a3c4d78a211a6d3da0b80c30b5df14fb9741b605f61371f5849015efde26e78fb9660a040fee1705de31d437c1d0eb09821f705de166d0b29c45ab89242494145859fae22e164d66f46f022b5f1e24f21a791ec178b57286460929cad388b72d48365893899c0ce2b92e877c4ce07677874124b635838455e277b782ec14bdc1434a730ce14b8ca8485d3a1870b642c8ac2a37e34643b83605e4bf582bc9eb8583e414f932612e28967f7111e43ef0d7887504829c127b860f81483f11232f61e7560c2a3b0647ec27a95583f08428364d47d0efd0ba7c55b2864743829545d3e4ea70b96aa50bc55e2e590ba54815a0568a0a5c49f0114b63c09812d7c4c7859fd1e4449c44f096829c14e051fa9e705824e3e0a4784f22863a17b89a070e61aca8f803b5b850b3130a14b2c09adee539609b4c5c0530b029eb8c10e75a98a7417be360a9159ea7c016627b984b42f5179e5677e03d49ea2a550e369774ab3ed1c3eb85f58105db5fa14e8171b6499cc3f09ffbfef5052c376dbd81e34cbdae1ea41f0743bcb5a22df5a60f99431d6e3cbf430708792b5f7ae3c18c25acb38ea096c5e2c692cf57517b0d06c1ea10e98583e47a0a1b84b070a1b15db4149ca279448170758b0ef121c2fd9fe6079551645dfef3cf4a39a585e0d8120c172a712d60e65eb549a8798fe05ed64e5f4559ea0b2b405c1168410a7a02ce34b431e0c63c8a42e91d648b20d9943065ebd6be80b472c0a552d3502410e7b8232d22ce03d8e8134b683d914ba12d53d1e98724a05d6043065582691d6040dff83fd4a60e5a01cf50b05d1ef5af8840c1e3b8ff00013d4b683e74e7dd2d248817f4ec92853ae5583e9c5a09e05d85ef79868be86e10b4b3df28c1c5712e8cc2f5aa83bc4aa3609a2aed97683e8e96e1e24283e23d07d14bbc9bc97e187022cab69f582265aa183141cc56514fec77a09a3ce6b2661eca0a90ae05c8560c41885439c2938a777060f654503f890a8a8a8acea8a8a8a8ac86c4c6281c54570b8a42a2b079750c18a0e61c5328a166b86b30ae5291a0a46ed8f90a8a8ac1ab0295f283907151593583141cc39e656d18f62810a982a2a2b17321f221f2cfb5429e379ec2b0a0a0a0a41cf48751e29a2be1f63d8f785c3ac1b46fffc4002a10000201030303040301010101000000000001111021314151f020306140718191a1c1d1b1e1f150ffda0008010100013f211668fa85b517aa42ed326a160dc1ab0bda10b47edfcc99275aec2f4a410410411db5d0b357d2250bd52175c0951e65c09b936bf2c6035ee1f937f3f23b454782e1fdd67f68804ff97f43b84372cfa576151f717a72ec0ba12fa2f5485d58611b0f0db99256e7c89aeb24cd9816a86971f9293e9fd90a56b9599a82109de1fd8c15da8bfd1a8b4c94eabb0a8fbcfa249151d1f6d75e7d24b86217a942e8b2fc087aefc3fa35c2407a06e1717808792ecfe09d1a11a771dbdc417bb314df65f645d4f2d4a8bb0843ee2a3c5761a0a4377cbbb19085ea95104b132cff00ab1763d8fe8d545c849a13e034f7fa122c9ac5cbb5c6b4fc37f6168d7fd2ee1ea87baf6166b61a847ff02653b93bff00c176db3b287de8908a90d2417212bb284fb4bb9626410bd42a2212622c004b756c6f7285ee0bc06906dbc21b4b2c8ee7c9f435f625e1dc982187cbfa36d3d81a8db235f833e6acfd89b8a2bcff00e8bb0863eea4b17d890e9518843a63461138bb2ba575cf065a2f50a8ad231e564769f99227910dc2cbf83d08b2cb3c91e0f112e7064166c87fe0ddac2f8f92cc2f82646a32afb86e7d85cafa8e064d3431496c92b04331d6a8fba928b424515b98043a70638ce87ecaaaa2c531e93aabd42a49a8bab7f91b7ceec9a7b92dec5d97d3ec68b1f635bb0b70926069ed621e839d44c8f2a4c9fa96136863547d0447b13f62d0b30277a1a505aa704fad51f789712f5dac21d383332e0fd9555458a6142e84a57a854b6ac84db78b0b7f71adcfc221508b884bf843d6de08f9136c41a07b90652136318619327b04ddb8994668cd792f7c48959e18d635f13d4a8fbaebe0356331a7220a74fb0aaba1850aac69a17a843ac67086b29a186c7b86cc4341f625615c37e49f927d87c19236f8b0a1c337be1d0588d10c7dc44d5b8f4f0878337c32771e24f435ce631edd2a8fbae9c46a5526bd2cc69c8566404e233d6a8ba49bd54048f2e8bd56cd8d896a32d0cc4a40dcf8d4cf61b5eefc0e5e485a381645c50ef9ff00037cc5afc318ef34f617f81b8f0103ee3f01129ee49816878f4d4070e7d9f4aef9d188958b45a70a90cc64960909898ba9515174ac86e18e8bd4bee94b71d37643dc53ec2b7b8aec7d1f24fd6837a217e088f920eed2ff000b0d8c6a856780923081d04cd02702b0921e4ec4a4fc09566a0d45691a88b17ad61d2bbe74b662625831a90c86cbc59461442e954546390dd9354e182517a966dc869484f82ed04d22cf714bf6a125cbe9f924f3f41c6126e949a726a23ec5a04981afb8d98211781f34c5b0f76571184239658a169d2aa619453ec21d0dd180eca6021896a5b204265341042e9545462dc8205211a890686b517a84245f51c88b52187fe516f265d86e2c857727b06e72c8436620480b517c8f62d916c2208102b0988dc63afa9d888174aa34217466a53d686603635c7b0f68f610c4b53688d39254301442e9545580d07165c1552e18bd439250b7de992f28693c7d8f37237a2a4d9c115912d8aa49322f622241048555442f0a7fa254ce8a174aa4a50373761ed8bbc5024c8641041144324436121d03ee462090d100686c358ea5749528208aaa2aa7507917a7524b31529a14e838a3c0ce5091504216e20ba53e9465763c210d1122428820823aa08102080956288111276d5167b06264c5e9d95082daea6482db90bc90910d06c9374416e43a90ba9059ec2e9924924924926ac9ec83c7b3f1248a8a8b35c7a58197d4b89c3f0249b0bbd6c25b0ce313529c963866021244d87100ba912492492a782685ea4d3ad0c927ba6c92592c964b2592c964b2593d9545d3850aaccbea5e06b8cc8da5e467b03328731646772d8f2357a67c891090a8974c898e859f0ac6cecb2fb0863ef1fa65d2f021752bd3bc1678c62a5e8b0893ce50db5a4147f892d395a909165c1088a58ca31e82495319b0b5d09cb12137b8f7c31af3f819714f3d8547dd63f4cba5885d42f50f626287ad7213a62fe44eaf46607bdc74a32f61cc4ecd165612866169f44f5a166e6304322b5b1103c741d1ad206e692c76151f758fb5144769756a2e8cd517a8f693233a91257449f667b31ac2f944659509b087a90dba978485540d98706b98812e5fcc3e081196e3a4b345d61aa7da151f758fa58d93444103545d85d5a8ba16d45ea12c70c84bc0b18bc07b1632f2dc2f042d458446e18989d89a58fc51a4c69452085473227b32a3eeb1f51b10842a318bb0aaaaf22ea57a942e21ea129b4487b8d432be86f0a4b1d1348aa6b631e2fbd090abb0a8fbcfa8e8421518c5d85558ae42ead7a76846a092dcbb6c43d9b1312783c8b9c46b31488f2ea918d89b14d13b9ef686b7a0bb2a8fbcfac4210a8c62ec215157217467a2f4ee764a7e08e21fc9720c606b4427b9ea643c7b841269c7449351849b88bc2625318a9fb112f9ecaa3ef3e97421085562ec2151745746618bd3b692b8db213dc4dfc964ae38e5d9177b5188609a3c8c21b1e46e993c09b92a91e59b1f7e06624db49ffe0f212b71ab5a2b13a4843ef3e97421085562ec215174574d9317a74e4da25214ee2faf04107c8b7afe06bfc05fc17b8b9109d8c326f4d46a96e09684fc4648d87c36b22d49aecbf69713ec21632a21c511e45c8f1ec86e4aa2efbe9742108557d942e9602e8c0c82f511a19f10d40d8d7ec9d68c502c3725cb3b3301dbe4f286dc316ea1b134584b535ec2dd913a5a1671092517373b8b9421bb8c10218a8b99c5eb0f59b14f52fb93ac16e4880bb8fa5d0842155f6951570174332517a76a7f7b21216cb8d585912246812252f86083b1913191691dc4cbb8a286ba0986e9378e82d693bb43440f4e4240618da0c2f92c851310ca2c9184cf21c7c9911771f4bad0855745d854557810ba33517a6901e4a9dc49a7e5430a664089289b1ee3ba8c904ee277c09f4c3139a2e0c9c6c24924a4b9f9139522d48c5a927015fc8dda07b0892c16a850fe4568749976d8fae842aba2ec2a2ae02163a95e99a0dc13491f614812cf716e3524c634780dbd7ec6db72f04b9815854193dc82fa93160721ee7c393dd527688c33a99746870caa5ee6865db63ea310855745d8545d05d24b1d17a679502414f515757ec3ff00bfba89f4c8d82c6ee23e449be0b030aeff004f07668b0683c894e9e5c9c895f23534774311a8f630c6b0581efdb63ea315155d175c8ba5f534517a18aa1e0936e3043454a805bbc55bc686cb9094ab0d46aad3212ef01a0699e311af1a0935233510a77f098c227f22c12998264a378719a90c3a5ea046427d9547d46210aac62eb985db6145e812269372656209239f8256792d0b9eeeb89e3fe1a84662e90d08546ae41f12a811c146353720435286155e4c8b6a9645b6d686d3b0a8fa5d0a8aac62eb7157c0b8d922e84a10bb8b71617a5d1bff00c1b388b1e7579a739f43e73e488fb285852e49149996c4a9602ab0350b4422068596e5f931afb3a3149f24251e4423518cd7c315ad53623208081d6a8fa5d08421558bad21f4151a92059e85beabb690d35757f024b35d9e481b4bd845b9cf041cfdff000ff39fc371fe4311c42c8b6743c7e450c082502444910c6a20484450132dc4998249065c85dea6e10946f1d18e8a8f0a58aa244618c2b8f6eb547d2e84210aac5d82a6913562e8ce310bb6f845c5f7b31a0738d10fc1228e73c539fbfe1ce7d113ce6e60dbe043f01b9bb2b89e6f7589ff00e8d2a948d0269723d70d49659d08819567734111566d0bb1ea2c709794427953e08f4c2da8c6b40cd0744453441859351d8be4580afd4a8fa5d08421558bb53b8488eb6632a2edb15259227aea6aaf60812cea858bfc8d5e924ebf3cfc1ce7d1ce7d9c9cf618d40aea75cb04d2cffbf34f7763f63d07e1cf820445042b3ad8102c351a6d8991b897abc518ea441a1e06d40886c79c3136fd87ea547d2ea42155f626888176181928bb694524440e6c678d63bd84f3ed8d73f0265b9cd91ce7d89f3f3fc14f9cd8749a093ce6e5ea79bfe870ce1d98f78f94324f22518791cb4739f07b73ebfa4cdf51391a23a0c4ded2106cdb162cb128a5e82b890c7463a21211068783092067b0fd2b4a4c0ce7a951f4ba9085d12244abc22d442a2e92ae065a2ed26b46e894ec6fec444c125cf9fd96e3e0f7e6a4f3f1fb13bf3dff008469cd855ed79fb3c2b46326b9cd08e73cb1e4d3c7fe88dcf36dafc1909d0df9cfe1e7f3cfe8af7d689d079252ff00822a58c0af27b2135df434ab18e90242abdfe1171b4cf708912d8653f910852e9547d1040e74aa3021162c4f60042a2aba2ae064a2ecadd46fa1669bbc8349d18e5b9cd443e73632b9cd4d679bfe8f1cdbfa3e7fbfb42c87ce40ddae13b79e7f4b7c73f44330f1fb640a0d73682dd96cff004247b0aa7cf3e44e1fef7e7bb139247461e44ac40e5f263a89e6e2e863a908544334a6708492932e3a582558bb77fa1309218b911d99249e9092492492492492688545d2557dbd249e4665be8d06352852f50f9f8f235a7d0918e69bf819af3511faff001782679cdce73e88fe7f8bc0bb9cd7f63dec1639cd84278e6c4d5dce49fe44349bdc785d68f9fd14349a1da86c6ee5aa2f1bb4f08b1b9e4d9cd0ddcdccbac9097444d0ee98f2e751765e0ea42c172e264dd809249249249249249249ecaa2aba3774a6a3bd097448e8b62cf822573c23363563cfeff85d5b9b0af9e6ff00c168f8fd7f44f9f9f1b9e43448e68873e8edf9134f9cd86a0c919ae730655f879fb2e2eb6175ce7fa4e9a3d046de0b03658a2e0e4e781a07b73c2a235dc64d20ca04193443a45a3c8e7659dc52f9d45b8a88819ae84d086c924924927d12a2ab32104c91c697d97f10b0cb104104550593bd8b5cf23538a71fc7ec7e39a9efcd3fa6a737fe13a736fe9873dfcee4ae73c13ee7fe7ec4e2c2ee73c90429f39fa3c99f428db6911f3ce64cdb9cf844bdba3197951ec24f3ff772f8e72c58f9bbf6a18dd22889dc981baa1db912c4a7916e27d44e3034268f6f52ba8584134903cf61aea96f32d02960f6c586b0c4e46c43a4c131369e6a6b3f6369cd3fa44e0891a5ce781e8d71fafd8d399e6ffc221f3d89e7e7f8588e6dfd173f6c8e1f1fa1dc68679cf34678a7cfe9f8d83d59657d857726878544c6943138ff0044bf3c0b9f9f62e7c8cede6adaa64a7010d28929376a20b5246923a26468e8dea5562a5d320a93ec98cb82d1ea3e8f24c4e9f07c66ae3d84b99cc17bf20906e8c96864ddcdcff8ff0011ed4e73ec76bf396387e3fa44f3e7fd647d73f489685cfe04b5cf2fc1078e684739ee7e4429250e77de29e559ee40e2f95fc25acc6a86a0d2dfe3f22e7db34e7843cf9bfb89225cd06b4b33a5c962692443c09fdc616aa8d34566216e89bc87f585aa865b9247125d9096ef82744d3258ad91a2ce18e5644956e7fa61dc85ee3f1a12d92345142ea98c64c2106a1da240b8fb62973e3f43548e73d88b739a9e79bff0e397d87f6e7ed8d7d73f44b4339f421ae7bff0b73ebfa679cf02121dd73f44c16cbf2329f92d18f256b95b0d0ff812fcdc9e7c31c679a8e6b9b122588839f9109584a8b481d965c7bc991a04fa09d5a0697ea55720ddc9246c6e832e93def0b2322561614ac1ab020f25e59a9ee157b1a6fb3a1050be475d94460ac797e3fe9ef6e7fca35ce783fde7f48e73d88d39b7ec7bf37fd91ce7b0f8fc0c5d0990df9e7f452bf39825bca12cd2ff0003dfdb287b9b9890e2f9b927cf05ce3f273f8108105a0b092a3490354c12d644539166934d3d52ae6109880c3a16114174bee0d486d41ce8988b3013ad99f3217ca36d08d703783f2356b28d8ce1a312a664d44aeba009d047c90d0d739ec3bae73539fbfd11a7363f2e7f47c7e7f83dd8e2fd0f8e7963da44248cd4838dd66247b9fa21b6e74098b9c8228b0da14b084984f347b876648ad6a4149014cb1d419451a10606ac8aa408c3d52ae718ba08df4c924b258e5f6554bc9f60eda8c9190dd39135988355d0dabe887d89334324a8699812a1a8971a9356cd063022b71ab2b9c425a736fe9ce7d8ededcfe11cfc0f9cf91abf39a1c7f9fd38e7c8f5739818444ffcff00c1a9aca4daf7831b5f2fc928d63f5ff4971cd85ba8244493d0ea997021495c50d598a934b0a279097eac854ca5bdc18cad2e16e4f441aa359a3178a22ed486fe817b3a0b12ddba48d263499439bc0eeb624926ad26366c088d2b1ce31f3fdfd1cfd7e8e731b9acf357e44b4e69fc138e7919364b28598a1ccb4b0c461a8a52a9034c8e93a48f30150896e33c330fc5122190840fd5215458e9932443e87df2249285843e866946892a31a9b1607744b6fcd26c82e4d1b323588442d43b0f3b90c048c9ac21b741b869a0d03d272e5b25023d86af1f76264be38739b899739b514320cb3ac8c7472d124351226c09b8bfc0989934451ead0ab243d5282ab6185127e41392dd924d1bab1520c0c6c792464c21613e06496e89268dc28c90e3b6042d7529b52513584376941b474c46b884d513d06186ae20aca1853fa45b60f3a12321084c4307966484a3d5a1545e85284286254bc049242b2a46e5d795bd5ffe9e4418dad04ed56c6c8a5ec5d37ab1215e29154d208a4935843621d102ce480d60ecfb173488b73de937131ba722718965e449c69562182531ca72bfb090a824110d522c95bd5a153113a1613a8df12c88485491893db26ca3c10d08436c772e18b171fdc1f26d18065d134820b9249623ae51662458ecd01820780fca8666896391a18e9cf3420b42d854791fac54c04bae951223426588899195ca7f05dc2cce0660f61decf3b9759a32df26149244cc188f4b73021aea92690417e94924190128e89a2dd5111c48dde06ecba924d2457702582442cb702c22acad352849149a4fd62a3c096e953a2baeb1a74917fcc8a6ecda3ffc1a656c3fb25356a14889f7226cc9871cf8264685654252518a1313a14f22d84ef48e892689adb3d2d518a88c1daec123e4dcc84bfeee8fae6f62e859a92089a17d79895ac8e263eb7b996fd87e03f095c91e87b08f0dd6af8205a6ba9795e048d4a1b8bebb0dc8dc8bd5c89090c6c7e7224e9189625884d09d605ba4924962c4223a1cf620874d26849ef93d2d344960b81e4cfa14e6d0933dd72117128297c890bff804bea8618b83fd116164b434816e7d5117e1ee2286e1e48b1aacb544c2a587314b31d111124b31297352c3e63da096381259920b93d9d208208a5fa1f4cf520d713af343131b22e84455ed2855af3d17fec1e06c9121f197ff00c109793443d0eacc38d02757fe3aa04a3a95b5236cbc098a884c6d60732532b290593b16724d710927b0cb5249e86eb90cc4edb1942229909264104098e534264d75a42859a93ca9300b42c8b0bff80492c9d1089be82eb6cbbaea1a3810d6d49344926b91e10dc0b2c698c23a5cb972fd0fa66b346651af2268c08ea357d19b918b0b07663181cdcb196db11850339fff00053317b5e166aef3a62cb0d592d2d665f9109ad454aea0ac33c8b785d16e87d73491bb0d99207213351035d1810921cc9ea3b527ae28a3e11b7e08ff001d6c2914ccd98e9f631929cad1fae42a25e5cd0d0e6da53b8e899221ca19420e438378322165a916d418264c89b02b784256eccd2491c2a38902cd23d44bac104102108413d8268f207313f629c3ec87a0ec7a3f666861f9260f3f8f52d93d0854c83c3d0c7945cc7d32493561142c99741b694199c5824649258986c52c0b554c87bbb32269903a4090c4824240414449218f10b60410c8f24108b1f02d8a7064b1625a50665a4242fa691868331dfa10ab5b43cc0e04a140e924924d24924632e84ea4060634320164dc5a9616f0977a1b3665d847bd11d11d561885b90210cb181ef1ed3013448bbd09b4a1e6e978c85d592685ec34a99040b1e8649a1a32cce21e78799938d408a795d085532d3da37a3ac924d474646c92daafb0440edb44684c5b296c4a7a13e94d0b0e0d8667302ebdd891844104114b97ad8b08219eff00d9e77f6252132db88dc8ee4371188b122f684882e24b162c41041034929129c7c00ca3c2966801bb25b4dde5974ec90db3c93bb3b33449352265104f591cb3b1e9535711333b13f260108f4a25101550ba43dc16246e9248ea551a43c83de10e8cb04c8a0e7231d9f12092997882e9fb8c868667c6136a2ccb37198044928944928944a3c8790f3a3c23c03c43c43c43cc3df18c3189ed9ed9ec1b15cb92c4125a3c88f30d1a9fb808728cd1a06f618051330c8934c0a46036e2c3d01a40d3a48a1c61d6492492465a09e58d03466c62fe31676790a3123422b7219275622aa156b4c8d5a653916b4d480843518622266a24ef27bc9319fc18e4b1ec2bf07828dcfa18957de8dd2c365ec4cc8a4344a8dc3c4780f01e03c2784f0a1ec0f1a1eca3c610bc0f01e01096a797b17eed713f212f2365092416c2c5bc96da93b8f2d0c91d8f1168935ab434ecd279314373068dac601189a109090ec48c32d5ad19a2b8f331e962804cc8c50d385b446a4104104565124922aa15312605784849cb7f9ff841adfbb62463841a0f11ecfd87e41e8b0c56a13915d45bcd8d00f912b210613e89776a37300a5eecf026482b0d9227519134d486e7bb146ac86e43721b90dc8112231354d6b26af7c1317dbc98f44924bdc4ad4b3262b8a1041614c4acb1aac0dd82312638528849436686c44686b8c8c2c7971671697294ce4783035ee05981ab12d04a204482156492492492597eb5d4950aa77c705ab6d71e0bdfef8fc1c6bd1c16ad8b0c6c0fa73e07c4b16f05bc16f05bc16f05bb0a2bb50389be47423a4c3f750f77d3fe9eefa7fd3dcf9f27c8b085a5df06fbe9ff004d93c2115058b1620798c79d52a16ef5cbf67fffda000c03010002000300000010f2c880e38d410410410410435eaa918f81206d7314fe321cf1c1da43093c5100b76e56410c3af6fcf53cce8ac84410410410410414efaa91effbda35594447f005281cef0cf2851e856921435ff31faacf5383e8ce864104104104104107fd9661fad936a44ab968ec028ef4c3cf28415cf714316f0c7fea8c372006811454104104104104107f18335eacebcc955727c7c03c1fccbcf0801b6c46022321dbfeb0ff00f085c843cf41041041041041057185bb9b69e5c083166eed014f94fbcf28123f047f75c7aff6eb2fff002d7929c4f4104104104104105b2767a657a4c9cbc03b06481458838e03c5137c4ac4a12c8f9eb8f3c00f5caf8f4104104104104106bef70490b98a02f36eacbf214a3d14f4d8a1abf6e511829650db0c312f64c72f74104104104154d06ecdb86eb68cfd36d3bb0bc014833cec21472a34ce79788066b9a9cff285d6537e4104104104157d27a70ed5d4864bed4a0e433701453bcf33cf0c66cbd9e414324f3070e5140f852114104104104df7db7f571ca8a386bf31847cd4e028b336f3cf37d69d83671fbc30c0073c71410442cc2df7d37df7df7df435bd035d8dfaa49a94a6e7a28e131cf3dffd6de6b2cc24538326f00f10519138415f7df7df7df7df5f780619a129da21cbe09130a8a13ff7ff00fad23ee9a79e79a461e40040043553b029f7df7da55c7107fe092009ead68655701587bbcd07882cfb8c2bca995ad7ba4e2200c01400df3b92947df7da7104107faaa2db8c51f9864cd5a617356bb2020bef96efe585ad3ebc00253cd10009a2c601055f7d04104107f227e52fee4445ab74c7a6abdbe93864ae383bfb589cc7aa080603c40603d26463d051d71041041761b41c5781685cc826f018089f3470a04b6e83ddf2887c35b40200bc39ea308d4dcdb41441041041dc3685f54b7b3ac1512c69ac6a3cf739b0c30932ff00abc0ec5d4a0208cee8f252d4a190690410492cdc78ba927d901088e0959f0b5f1b0f2aa83830c7ad70bc4d0fe880208cae42379d0a74b6905df57d4ce1c9856cc170f9ceabdc4022e8ff00ced1850b0d75ff002a4de9df4b020821f88217805cc651f6134184830eff002d6c8306620165abd1a1b14128243825fb5d7b806f86c7c5ae8c4e42144802249390756c5100d8e893b835b2c8cd3ec9dbbef18f0e634db32ebfcffa462c5f640bf821e083c10cf8ce2005ba4450e9363f72e5382eb1df74d2c8421839ef006921f3be479893095b7d22825fcf20706198141065344c02b26ed36571719b00f19bce8bfe2fb6c423aab809e43cbfa66b03206b24dcf0a4777255415e9e99c9e892af37d34633e75b14c6130f203385206a208d2e6310c043331fb5ff000c0bc68ed251ddbd5e68a854a5a7cb1974e1934b4e848e18b20121898aba68054f3ffef71cfcc7fcd0ecafa8675a774f05ea86e95ca70c37c0d1daa7d42d792cf5d9c18657d86d9fd7fec31cfc4d3658f2fd8f9728888cdd3a589a31e9397bf7288634d1b126c168db844f9dad0dc248617b0c7845f38926abcde6d971f81eb244b36d83b7ac83df780c910dfb8f3fc7a5a13c0f11e6ad927b74b05d07c81823a6714da1bb09710c88e5dfdf0e7ba15090f0c24ebdf9d38bb47dd5b7c8d7f479161f7b47957960889d6f2af259bae6030dfb2144b047be83d24f7b6cf5e78fb2a2e799545d482beb3107fef9695515141a1abc5d7bb8afcb4ad44210a7f1277fd2ac2c71e7ed318e0ae237bcb1fd47c9475794ff00475af1a20fc3a0e2e71fd684f445a3dc0276640a776cb9a6abeaa2c4e9b8538434f150fa251c091fd845c61a6cccc70c1c7ddfe9f5146fcf775926ca88f3cea93dc42c6e08398198637e09c823a01495654e7f54addabadfd8e32d07498fb96defaee81cc40e010f0810c1080716b4108be6661065cbe9d566cff5e3d78c064c8ecdb4fc6ea6b46e726a45b720c63cc78d5e672cc20571715dd69e788295babb98e0138d79a58f0edc1fdffe387d7c10a209e83c71e79e87c70073e8c102275d03c01ef018dd8fdf0076377d76389e7417ff00ffc4002811000300010304020202030100000000000001113110213020404151617181a191f0b1c1e1f1ffda0008010301013f1018b3daa9e0db927c0fcd13bd59d30ec5331417e0a3dc9b8d10e64b55b8d4e2f3a3c73a5448be4be91bf57c0d272602a636b42c19892713ce8f1d8e8c57a5d294ca66178de0f10b81198bb58b85e443e748865f44d36e942594351f13d0c06a8cb453df85bdc4c6ef3256333a37aadc48b284c3e9aeb68c7ac602c8f77d24e247cdec35ae482767c0275929466c4cddbf43f01895eb5fd353ef43163ae51a9a9e791091606f48212b31837d1a18c630e87d6d68a2445297a1bb428d13a51104f69c186acb9138e8919936ec18b4a6af4864e6842109c0f1d81e63a4b462defe44b716ca14a5f92a25364aca36c9776b3a97267f679a2e9fc8d522ff001ac433f142f270a6ca85d93eed674c395195462f810d7c8e3a269348f441b7bb79d30e555a6e789912c6b0486865ecd7818cf8eede7478e59ba5e89099747724cfe8a5297b879d1f355d0fba174210d97950437ef7eb4fb579163b2b6da4289898cf5e05da963479e7cda3016906cb026fca1928d5d7c09f68c58d32e7788226977d763098c5d69f66c5a78f2ad70372f621aa9d42634319b4f2c887c0bb378d582e55a3d1cd5fc095abf227b69b64b2f8d764c5d809e90639ea10905327d3e44e75464ea04274ace8ff00cb9e9746875bc7943a44d3a98f3ee72a7a50842109c4da45826de4448b8df5d1d6e86b6f964bb4f2b990bcc78d60b890d3e1a9e4837878e6425b2e563c14a2d297832d1a31b7823ea878e65a9ccc78213b0c234d135f1c2fa577bd937a2f0af5c21049251639ea5d2b176704baf6ac3208c38294bd18f0be20344b642c733d3de8f47d495bb2343a12f1b0d967970275a2212dbe8cdd8f9d533c2a7d231f1c62f26c2f336c4308505369bfe8f8889b8b5ba7571a30eac349aaff00c13e46536f7d8bce960925b2d5eab674544a466e4e197418b2b8bd9e3d5473980d837a65d8bc28997bd6eb059dcf81ba1315e5684908e3f0294a5297a73e89a2bd31b29d3e8da9288b596bf9159befd8a51049b7ad2108209287915454c88688cf0623cf5d2b2b2b264cf22f732797fcb227a7fb258bfc0fd1436fa453cb1a12163ae10843637f0993d3f7d0fc183ec48484b51a1a1b7e05b89f4160ed28bda3f106b5b567c62f82d297a29454b4a6a6d442b62a47cad164e84dfa26882451f62222d76e869bc083dc2423f4561966cbf24bc8417b9ea49f81acbd5f042194f025c4a9f5116eba57b67c8c4dbc8bd5b1cd6e6bec97e50dfc0fd020f713967d888dbd14bc6b1e7f0318b3f911e0a9bffabf5d8e5e3f3a16061973fa639fdb36fe9933fe8fea0c4217e743fcf37fffc400271100020104020203010002030000000000000111102021313041405161718191c1f0a1d1e1ffda0008010201013f10a3d536f0e144fc8bdbce7aa6de0b690dc9040b04884e7c16b8faa2df3b7036fa20c5eb908c06c8d0f42e25aa2f0a910a914820ec95c68cd188631b3035c2b43f01a588826f6489f123416831d06b1c296068492e66f1625636492362158ef894350cea9aa1b9e14f802b26888d3a228921e06eac64dc87c8b544cf12752d7231a5ec5631bacd1091b4d8d48d288208a48d18b0a28d123445eb7569c8d4a81b2a6689a3186eaa92372c92492493c0b63e775371d8f58e87a32640841226049b7e85f2df3b4a4824752588986fa54c9263f5e04117aabd536e678703498f33a8269349544c64fc855ea9b72bd74266c91088653ec524f2d6a8b7cb282048d28eb0246099afba607c469af216a8b9624d482581775688260931720687e9e2a1f321536129241144cf6e04cf8887ba69c5145aaae1319154d3d8d2f649820e04f055244c74d782082288744961d1915c94684377a77e02aa1d35bd2b50c9a21e707e86270d4552a265fe07c3a702e35b1d3bdf37320545a431ed0ec885c4c4cdeac8bd6c74dde12d218f68641a3ed0ac77b536e0944de04d9d8ef171c55691fc11a70c4fec2b9566a9dd222492492781512640d883374714d22894f91c967d8ad8bd8d40e172216eb23b15cc4d3e18f439255047120dcb72a16c4b040ec83176944c84a4ded70a76b430b955536abf1b6422909e37ab8f88172ab12a244703eaf92497b247d0484048dc5cf04d8fa7ae656264937c6e2448f4e4db9b7bba0d9a686c35e4c697ccac54445ad729a109c0def2269eb977e0c83ec79363be65621a2db8a2bda774a1f4e47d4a06cdb1b111e992d6c64e0930f91483366f491c7a10944f82a9901b6dcbaaab1a32268947c0787909a7ae3ed735288f0b64488682e177acd0d98f54822c64924221d3204b13ca8dd208a410459ad6492043da44a35fd06ee932d2fe0df85b26f68196e7349249268cc3211925926cc92af8208206b9251f23e90e92fe227dcbf8897a7f45eeb12bdbfb20d2427048f2ddd248d9249f87d909b426c91b0636364922125a5ec781dfb1ac2f59f089fd09fb684222b0411570223426ddc6c681c48c6b4e9893591b0ec92497e86fdb487ecfe11f4d93e92437f667b64222a894b6404a6d431cbe0f90fb187b25d2135ec7be5fa23a4aa5c1249d4d8f096c81012217a3e04349d0dfaa18284fd0be2d099d89dd896b07e0f9887cb3e0a965ed9041045e87bebf45f87d5f8316ff00ecf87f93fe6f5c4f5dfe50f7dfe0bfd214853fe90a7ff7067fd2253fe115863aff0005f82e4fffc40029100100020102040602030100000000000001001121314110516171208191a1c1f0b1d130e1f140ffda0008010100013f1026970d1345e16b656784ff009c84d7e09c4846311ce54d090ba8d68250a1ef55f918ce5b76ebeaf8426c5f3fe1313c5da0c7f1908c12a54a95e10618a952a54a952a54a8703a70268707498784b9c4cf09ff0041357824385c0b175741d1cae595e9361b65d8c3f4c1112a3985847a86cda06afb92aaaa6e64792c28b2b618f685406e0e3f7bcc88511d2bf2b0f9331e5ebf847f80f8869fc9381838d4a952a54a89138570a952a571381e0435383a788dd075e03fe826af048702fadcade6f68ec02bb5b8a7276c42c75d79cce8077a7d183eb939386607e68dcf740e2948d0961743a8349a33f5c88f4256ea8505445d8be0783a0b22a6cec7c0383e21a7f24847c1b226562b951545bfe7086bc446cf05dda833ff00504d5c269c062e952ebd77742585e6e66f9c3eb2ddd6d7cd9730579f39cc3de03aa8eb53132df20228ea3b4c15d3712145e5d94523593dfb4da2e44082e2c4cac4b2748684532b44e92dd502da17c07063e168e075fe43294af389846f04d5cda4b8e0a0d91fe554381a70392683c06d76869f7ffa821af0d816e0959e1ef09b2e8fdc86e89b1cbdd372bf2fdc436566c14a745fcda9db7688debc8452ca5f5b5f2865636ce13d6056c1d6f6654b147fd3aba44e4c1c0ec09780e60f498135d0fc43c57653c9da3266c6aeab67f1098b1637eb498098aedb9cc87063e035e23aff00191d258b1153931a03a4256e04565447116235402eb2efe51c0d0e066821c45b828baffd60d638c6c0e9b9ea4bc918b320e7514d51a6558635ef11f0205d20f76039d79104aa0e510c77c8cc0f1639b59f9975836edfd2129b51a393f72d30db7e706a91e74ebe52ddaad75d6fa3e4f795a35b9d399cc8765699f2e91c72675778b53f20b485286814333cdc52b6dbc89f1159c18f80e26afe323a7042055bcc04d312908c0e3834c7699ea5718acfe41c341c0e268869c4da82a47fd410c950e44a092c39820b1aef8de307b6db33d17fb812b43ab2f173d047305317266d835618234f26accdbf318e4535d1803b9d971068396a7a32dc8575c8f48d96cf33fa8236dae4d4951ac33807a9ce20b1668dbb909135c9ed2e8600a7bcc4514ef30e16cf2ad212ae152d88321552634f58c7c070b357f19369684aa3c00e22bc034f08c410ca908332f3f88781a1c0468869c74305387fd511b48774dfe865941b7539cd5b46ac758c9a6d055a6eb2bb1de16d58d1e69736ceeb3131bf57796392f3acc5705621c7719a59f5e529d114966ea6fa8fa910eb3be8625a1dd201deb1f6de2b1bac7447227785a97863c9d220a3a02fbbafbc49e448aeb07db901d4a7d6590d9dd45e0f80e166bfe3380b256a5419a260cc09a78347019cd74b9784dbf8470d1e1a73471749446fc27fd0206b4d407235994b06f71d297d44b72a8db3329463d6a744216e74e70aa25f21ab06280361b409cd3b544ba69dd66b6cf39739975d3d489cd65dee342059d33fdc4f1bee6cf3974f211cc94b9a363acb81b853e71a2ec9715731149457570afc4b43741f2624412f1c8311103480c53cb97bc7fe2c8708cb068f0a897951e09a780ad4829caa808660a4b25cbf10e1a3868e06e1531d9c5d10bb1c67fd0bd52c96682eec5605cba2833b44bc6768343b9f732a6e973a592dd7d252aa8737c4f380778894e8d8d3cd81747b0d3d65ef0fabf53429674fda55b15e9711b4abf35e9198357a2611996b77991a09a1a9ce174e5d9e702eb6077ccb1994d79462ecebc82260c27ee34362d7bace42852c3d880adb5ceb101b436dd5febff164384661e1470652c8b04d13521a5664a2458601618d613081830e27168e1a382a2155006a01886f0820c445e33fe726aeb8e5180b6f5ed0c70cf3749b336e8c2d675806f96f03ad5778b6068f33a1176c399bf9cd0021b1a3d250bc4e43fece60bab14d87cfde52359af38c819f279ef0592350e39773f7142a39dcc20eef49909d1a7b9300c21f760763df23780a2e828f2cc6fdaac0a068d4f797a2655559a793fb82a5423fa6f0ff008621c2a98ed92ee1d9445623a438658305220de0c08ac5dc02608a0c389e11d31421054774b1396cd518975e1780ff0094e04b213007240d68756b9b98d559a7371122869d0880d6740b0b63e501740354b2158f60e703943eacadd52741888041e86e22a0f741b0c3a97632a53258e47599cb268be4ea4d2f3e5000d8b9624a16696690cf44a2e9de2f9d95d2650573ad58e0a3151bb61c118d465959553372a0145db29419238e9e3e8e37fc042698ea6263b919474758ac4da0950c34f84c118322b1a3517010e0785545cc48446d8c2c2d9a01005d44358f01ff0029c15050b6337a0da0180ae2bb41e1ae3d666ca3a6f2d4d6ccc51b70bf115ab9dcf38754eb195fc8816c0ef81e8cb16cf4d10a051bab88f65bad6d050da197b32e6902b5bb0c4146316335e346ee6a50f64b034729ab6af96b0d548d3f310c2456f55dd0f5c47e5982b300780141dbc4349a2010480cb25cbf09c1a668e12d482d4163ac58cd10c4b439e1323ac0ed205c54f188703c2e888e107cb8154016200a0883495088f01ff29c2c4ddec05b2fb01cc16fb5c61581bf463022f5157589b0a39ac52e66fb11f90c11a55350d09b6e1aec86e72f3400b5988049774b25d2a8e7007a114586bda1e26d3682e840d46fc05344cc446d5ea72b3fa892bb72db39d48d8450f08d25ab04b99ca659a979081830e270689ad1ae2086644a13acb0cd3c363848cb0c35c9295715f80443c6d5e25ba998e304c44c6828e3776a6ae03fe525d1105183cfd629b69b54a65d7d985930fa8e1f29a8e74d9e91dcbd04c7451d665940d3bcdd8129d343625b88a6afcc0762e0aaef7072eaa72700ed28aae1165e60cdc226e244842a6a5ae608a2e0b72f0f08d2145aaa5c4b56266e6c0c2ce0c80a0a5a5a53c1a23b57077dda2885430e8c6ae0ba12d7315c370d6e2304ba586510f020783ab8e5183487136bb439701ff292923502200eb2d1307220968be70ad48d5d7caa5879a69407ae8cd30c9ce278704a857bc5b1e706b1400ef505542010a839e00cde1b42610aa3ca0d06f2b7dd88650895e1688693a33a303da04959594949528944a95113a13a1131e541201108888769d28f220368011a884c4b972e5c3c70626821c45b868baf01ff0029001b77cd3e512eaa393ac4d55eb141b074896cfa333bc3d23a028886aaed14cb98500b009738d39cc484067ce1983065f0710c06ec869d662ae0c58828152e931148f161af1592c964a4a4a78817c144ca4a4a4acaca4a4a7029292b29292be0a42e32687131a21a71d48683ac21ff00291c951d256df2fccaf95b272d194995cd98eee5ef3480669c7d9964044d4637759e91d35a4f2b2d6860988a51da6054d102e102542221c036428c44f437896d02d9ca16035972e1c186bc0a2ae5a5b2d96cb65b2d96ccc21c2d512e5f84c993ce9d69d68f3a3cc9d496e72d96c2e10204081e0486a7136a689a38e861a910ff0094e0a93c8980b277eb328e47a5c416a1e90030a48a1ed07035d06f134106b11bd661c569d60e43102d208413015c0a80f0543106b149417737cccb15a1c2e080417917563c4e0c38744d50fe2210621cca9512244952a544952b8102040810210e321af136b8747174869c3fe61c353b409f99f5626abedb2e452d9738ed841c169b18b956f2ae06b9850c43ba65d37d62082566369a604685bb455104e8c7b48a67baae4331d6a3880435da3da4be90d9eb97c0de2d00396f72ea0bb0208f9c4b444a72fd90720b4c543bc789c1e3748330fe22134c39952a244891254a891389020408108438cf0689a99a78b0517a435ff984233452c53a8531ddf39a9683116e03f221c18544817cd496524f54d568a496a160dd9465aca85441a7a42d757a1ca1f3a0fae3b40f2df787a926d7175d2a9d0cef98f40a6e6e42034411123d5a527b6f1d561194a9a56e623b0f161c1e374fe410e039952a544891e04ab8f1955081087138ce069c1d21aa69e2c1926fff0030870aa1ae6eccb0a6a7b451ea544cf59721fd6db4963f30197f30bba581b8f48da74cca80d391000e07e92da2df72e642c6dbc5968ed2d434dc5bfccc81ac5990ca307351f10e00a1c27495e9980748c16c8e18c031d255245638bc5e2dbf904380e7c0c7c02060843c227010f01c6703438bafc3c47acdf80ff90870d38da8ac2b73992e4a53ecc4568dcd936226d702ca36c3de56453a74849606e42238c12d1115154e90a6b9653a9874d634996a0da5fb453f10795118bde6c102359ef29794b8efcfc5f136fe51e259a2648ee08608c10701e138ce1a0fe066ed1d780ff9084597ca64a2c23c794507af2628bf44978b37d4d495a181b4322e02847a5f4d60b8985acf6731b53720cb80198a874828019d639c132a562285a1683f128e91d8d757cf8be21a7f288f8690e21cf8c0380f09c678875f160b71d780ff009084664cb3117c6e95e775a9a25cc75833a7596eccbda20d02f6a9c9c6ccd24c6812f4cea8f9c4b660988890d675817ac12522cc0bade008936c1ad65358d8f992d75e10d9610e0c7c234fe511f0d20c419fe083540f09e134f1d29afc02fb51d780ff00908462b06f0eeb477168c06ba0e53413df7d667034860140b3b4e673b2535691635e700d6c2bde19c90b0ad625cc713be31dd0c8993582694d583bca757360ca091c37bbf139f896eee610e0c7c234fe511f0d8710666bf08783543f88d3c764d678059749a9e03fe4211d2803558f3071463ca513595bc5c077e7192039d3597bbc98ed2c03ce58e57589d9933e70ca6802067f11093046c2918b185cb5b5e50331130d966e478beb9b2a0e7ae68454819aad9804a0510e5a0f9110cad1ce6802f2b8d3a785a3f9478af09ccd5e10f06a869fc469e3a26cf01b50d77b80ff009084300c393508553b3e601a4bd619236199b43658ae8cb020eaf43b1281ea8ae3657ca594d6abd2123a6bf898e8f33de5042e1c9caa2e35b2251c639c074805f985a70455a5610dd7bba44e0b4ca3666f52275a18265916847b2561340d90cf9a2009638872460a7246a569e92f321b30005e8b2dd04ea4139f031fe33c6d335cd5e10f00e61a7f11bbc16c869c45a828faf01ff29c0182c65ba1ed8a22d262bec4e6e5b49661626632db3d698939e65f2ac6ae8cee38c83ce06aae42c1a034dd62516b6815d65ea8eedb9d89ae6ce96a9422b9a97052d7e50f2ddec61225801b9bc3da5a26e5b8180857bc66ac4b5b24accdd60e4cc88b4ad480286639698216bbc61640adc79c74d03ddc1d460bbc4258d9e1b972e5c21c4f8673354d1e01e0de1a78c38f5bc75268869c46186bbb0ff987004f570a339c40346b5ad662ee81960507598e7171449427683888dba3014221ba0d0ea44d2d97170f22cef00be7ca2b3282b58e94f6b886cda6b5533245e3944bbeecc4bad03d12e00cdd0c71a72f563ea4357d7ac45aa93ce5107e88a75a30634b84148606192f44b009995c0b58c34348d25c2392a5cada5ef2e5f888713e10974c714508f06f3478d38b5f1d69a268e2e9057521ff003098172d65076182017889294280e8c164073ca560f34bfc7c4c4ca4e4ca04b1822b831715aa60dac554c1136c352b6b60da234fcbe65e11498bd2e6e0cf3960c15b2f2b85ef9c022170c5e379a8072ddbaa180de2a0a26dbc558960b982be5d221318efa4b021d32f288ab5a73a8c742726539662b4dc9802c685f45c0dcd34b83bcc43aff01c0e0d5e0608ebe084781d668f1a70135ff00986bcb0d62ff902f49758f796bda27cd9e5998b7569513699461766ded530198c253537a03331590cef06050366b1a80d812abbbddf38ceea5ed19b2f565ab18b319861c63d4d8c5c3ad50c445754b7de2d961c9f6b2092930309d6a0ed141f782541a62535b3312c18ade37418b1d239469ce874810f1fe0381e21871357821c4cd3e37809ab8e89aa68f10143fe2b0eacb74e70c6b825dec23591d28d9b9015b762e34256595888399ec840e91d54b89a11c988988d8cc8cce66af68000af7b886dc688614a36c73820ac8997932c051b3788db0037b2301b53bd86b3559769ccde5709d8c6f84307ae0e1218c7941d9da028de559369abdd2ca41c9b319772186222891b3c6703c4334cd5c2701c4cd3e3cf8086bc46255334780614758a1ff01b988bd08d0e0b66397560d6c5bd2a5915574afbca643505bda5c114b9a8371a0a0f6f89bc065e2d1ea1c7b434f49545b44d25e4ab2e59293116608591512f939264276bb8c15494ef0cb60f32100a9d768e65a99e0b151835cd8cf5c3aef1d63346a13b4c0a1524de6269fce3188b1a6f13167acd3de13630336d2af3eb28b0f5368aad2bae4c33e121c4f86cd135f821fc66c5f090837c18eb3578060c780d3f9a9826bac79259bc40cb0dea5d8c8e8efb7ee5acb5439fafc4714e58faf59726a4644512d56bb1886b34d35210dd5fd069f899d396618754564d349b2cb18d8c441cf060c18cc343330bb232963a388a9ea302f26daca126f4c0121541b690b24a5b2374e52f12c89bc34e6358798634cb69b52505b14598e94df7848713e1a4389aa6b8701fca69c35724ba66293266bf066c7f98dcc3a46e01513297911eb0c146eb6659706835ba7ee902d57217b7cb1d2cd753f3f24684e57edfe406d1d5fce9f9801ab0e1d9ff002001e7f7e585a112fd570871976cf94e477a499f78d175255b42f9cd1980311505c3af01eb0b27566099b7315bb46db6e8f2818261e5bd0de0a690ecc5dae44000691c24798f79c8de7b1302a3cca0bf70976ac9b3d226f05c223cd30a75a973750853c070781f059734cd5e20781e7c0716a380964a46a58855f0974987f22e6dd206af52f88bdb033a0202b12a068c09f7bc00630edf9fd4376df1fe45b4f2f3d3f2b36b3b904069e8f8fc45cea35eff00eb2a0340f204e5da790035d7fd6200e280a2544e7b7e346569dc4bef45cd2ba58f588bf0875144dc98a5b812b22efa4c1066104bcd94ddad98b897f894c177af2ad234e7bfa4315ba3a12808bda5acfac41654704d14cd5502ca7dfefdcc1653b73fbf732abfbfbf730348da239c476f588d232b700b3547c36f01c1f1890cd7357843c3abc611b9845a206063055810d4d47805f626af087f02685134850b6f0ca76853477951ba8a5d6e116c55ea75d13dff0031578d753ef9fb47e4f8ff0021b1adf47be9f9583b9aea1f4451a797969f851a33abadf371d37837a06bd9afcc0b6042e745b87d1a33acf68e618dd1fb47309bcd74fa4c01944e57b47d68c1e53136b076977a86cefe81d215ea7333042dfa809a665aad1b469937115ca017d65d4042a340410660d084bc63910407de24c02a959184967b39c0a8ee251771eb0625c2f68eb73934eff7ee61f4fdfb9898adcfbf7ce2d1716db13bbca6261566314c62454be2707f8419abc21e1d50f19ac4b276297998134e236f00b2e90523ac380843f83717e19bb1b9d62da886a9d3b5dc58954a4c25f4ccbf36ca479e7f3eb28cb57c8bdfe7ca5a3f7a4d54ef85f6f959a29ae83be6b6dd8c09cbe3fcf742f26ee2bab8fcaf4802f7ab3f3d36878944ba475208acbdfe601283a7c7ee6c8ebf3f306b03465ea68a0993eac3b384cd72872157edbc073beae5f1004b0a797eb484d1888690e12060b8972ba10d4b5dbb414d3f7efdb856b4449ab73c2d5479f2cb0455a6a766563efea2620b4434a8a98aba57df89424167efefdcc0d7efefdccb589f7efee58f216a8874e4c24c3300a357695fad310e501a71383c0f03e1186b34780780d60cb972e12a68839991293471d10869c45b828bac380e07f008eb1ae5090f58fa519196a6368bca3edf6a10391a4e9b7ea516f5d5fa1da0a63531a9cffb4612b5dbbea7bcba3cb97481775a2e1efa74dd4dcf30fafc2135e469b63e4cbc8cdcc215bba77d3aef08c0c6af6fe83796d02d4262f4e7d6e5e591043718c361a53e505341bbf268c1659ad35bf2dfd0410b55734d3ceddf5829a573727b6de97285c48eada2157028cc40456d31cffa3de2b6445529bdc1eade2ec98eb05ef4d8f218005eba4d1354b0d74dfb3898bdb563f2e7f7cbda6bd13efded0d35b9cfe7ef39427279fdfb9831f7efd6726ce7efdde04cfb6fbca0b99ac436f66d2a561a1dfac3097282d88be871383c0e9c0f89de68e0506312e74211256e701ce052a07c0e8e3a21a4d1c75a0a3eb0e0385cbf05cb99ede530e5d27f411e5f586e9bcb1b35d93ebfad21b5d8181ecff703576d4ef4f27e91cd77cfb3cc6f0640e75bf3f812eb3a357cc17c10434eba7afeca05abb8410d2d34faec3b4700cea31ab4fe692a4e5fc95ef2d1b7c7f9cf1b14eae3cf481016ad2b53144d3625263ce3334f285139bf7f30bdf397a6909b5a69bb8f25db94185b69adbf2dfe7cb2e399e8f6c1ed700a96e9326197c380ae72e1b581a9ebf7b91c0142a834a348951ddb4ef1ad9db61cf68510ae1db6fb72fefd66afbfb83d18eb5c758bb69dfefdcc28f479eddfef38869af5f9fbce0b2bf3f7ee61a635f7fbfb9f98e53a1dfa4185eb71882ad8742190a05403066b786b6b6f68316e794112d82c2e54136e046e5329968b8f0394c090294f0dc565230c30f00e0d3e1e98693471d482a0715cb972e5cb9da6f79097ce7bba4bbcf2d20c4cfdd600fbafb7ee1a69ab8efe5fefa4046a993a387f3fd4b101ba9134345dfa41886d5cf355c9de002f07f77d368aa11cd5639d0737783166867caf98e4205dbedf8f942694df21d5b8150634cf2d391b46fd370f2d1af48adaf917affab796c171aaba6bf81eb29da912cf7ff094d3a802ff00c3947af7b7b9ddbfdc4d705ad4d4995141a0ddfcfa31d666b41d8e3cd79fa136594d4d1f4c3ed28c3771c4c9323caea500aaaa3efdecc5ba1b2d470569ae7e2386abcfe7f4970e5cf1cbd37818473f7312aa9d86a3354ea97b3e9f7fb899ae7cfefdcc174fe7e7d7f30163f9f9fbce1c74dfefdd6362f3fbf33298a415e847609315d588dd1a094cbc8d583ec87e662ae0e5099df9c2710167004ae1751498964b25257c30c3c7b2cb2f0de01e37a20c78e3a61d7c097c2e5cb970b5a379787cd00d0971b8dac5ac6df7bfcc1fbd3df1ea4f73f8fbe529ededfaf6971d39f2ebf6b5958aedcfe6fe7ad316bce867cff28cf6ca6573d6b6e6c575a34f2fd0a50b1d77fdfa4a40f45b68fe13305ead5f3cd2f5de6c6eb4327615fc72c0203aeadbeab8ea9779aef7d5c91c6ad17cb52fdd9958d750f7afc26146bcbcaf3f97482958dbcb1f1c90dc3759f3d7f349707deb69cd7c4560a6caafd4341ee2c2f4efaf2d47687001b2555f959e82c5aafbec91ca155cce8372cdbe5999d4647ec631f748b339a56f5dbbb9c156741a3dbf7100d59ad7973e89672e8fef9c73e567cf2eb1fbf6a27f51779a2f5474fbe9356b5e57bfdbf7679c3a75fb7eecf32fefcfbc30ebaef1ff00268951b0eb0fa4614da6e8eb10ab54bb5b34f57abbc1c433bb2ad3026ec1c17c0b2bc1acb7f13e1f082e5c5972e5f038f5f1d30664ae2b106ae041972e5cb97032fca17447faca34815da38d7ebedf12b5e5ca52ebedcc5fd73fbe7de685fa7d3e3d213e4dfefaedacd0bbbc81adb3bdc011a268e9a51f32aabd5d2b4ce39f259558c1fdb9081c077abfcb0f76612ef9e5dc748c637abdb9e30b5852cdb28fb8659d45ebd06f972e684565c0eff979b2ac737e8d3a4c56c6a6f5cb6dbdd16c6bb57e7d51db49859d76796f7bf787417cba6807e1af394054d2981cb98a480ae570031d4abaf482eaf65fdb7f93da160a5686cf2c76d07bcd417b1e5d19b49bb3032d767489a195cab957ce1ad4bc9d757cf68d6741af25fca6d06b4e1d36c3d89923adfcbe7317e0e5e51d74adfe91ff001f7d23af7fbf7ca55bbd347b4b1619bd3ef7f79619cf5e77fefbcc0fbaca2e9b6235848ae984ed0e314575f5e683ecbde84a846b055996235d2217b90453af1b862aaf8c0b972e5cb972e5cb972e2cb972f81c2459972e3c4a0a15c062261780ef060cb972e5c328738d4030816b9961e717cd15504b0fbfbf7a44993efdfa416763efdd34837aedf9fbfec6cfd73f7cfbca6091a9dfefccced92fd8ea3760750b0df7437794c6fdf6efb57297b55a957ae71d7ba837eeafeaf68d9859d2dfd8ee8a3b133472ec7b206afdafd3960bdb5b2cdf28fb820a6741ed81f2da4b618e9797fb223af1bf24d3f1f99405369bfdeb6f28be4d7bf6df9d6bac6345bbedebcbcf48274b71875747d6024ae635e6d3e7b4723a1a9dafd73e6f6440dcdb4e476ac40ae75761f486b3b373f70ca1f69915cbbed501c8616ebbdd98fd623900f6fa08b4dffa3cf9c7417a7de912059ccd3efafbcff49f9f9f481a7a74fbfa9846bbf6ff00255f5debef3969469f425e476958989da153afa8430ebb99994ec90aaa24698738335814c457a882237e153eb2e5cb972e5cb972f8df82e5f8ce13850de539c3aa8637047594b2c6ad6506a5eb62e60c1972e5cb9433ce3072621ad97b472bcececcbc21d373611dc60e849489bbac58fbe5f7de3a3cfdff007efa6b0c29f8f7982bed7dff00622e52d2b3f23de5d15831872bbe7f330ee6b9de50737797530dcd77d36983ae85f3db6e6cc8dce5d0cf5da709a3536e5d1cd30035c97edc917c1a38b2faece82cbeaebad75d99eb48981c697fd1ee978a99d73cfb3d489e9ae5e8f5725312cee3c8e7d1826bd777f2fba8b15abfeeb1ef5af38b8770efcefdd6bca6b06ee0d9c9af783172c53006b5d2f5967c61e467a551f99be56eea3e7f2f9461ac68f3237487dd999c2306aa98d77eee90b0e418f3fdd8a85d37e5b2fca771a39ee1d794c806059defcb991aab74ebcabf5f983af3e7d6ff006b05934d7e7f011a1ae74beba75e6c0473bbf7bf89652fa7ee07dbec5ca287ed42b44c54a90d43eb021015b7974cd8ee430700a76823c33be877e1a44385f857c172e5f8afc07091d220b96e72ade57bccf96073897796ef1b4b83065cb972e35a2eed63846c188c5e31005d63ef4956b16de89984b45eebc8ad76ef0fc8a1a6b1a3a9d0f677882c6cabfbf7bcb33e9f7e9a470d9b637d7f3f778af06ba95f7ee2c965a3263a18625116d74dff007f104a79b7e6f5f2230a1d71c9ed1d620e777cf9c4bb1d1d7ee768dd6997cb28f6de418366f96057a6c20253a697e8ff001ba2c59ab9f37cdb10a29c95b6993f27acb0d94f2cebad7ad1182af5c5e7aeebe6b2e8e866be8d88dedc637d9eee4cb8e5c26bb9639f44c6ed852fcde9ea86bb47d7937e557eb5d778cead2e86df732ad52ba1e7f7ca386871fbf0f6a9504f4f2397f58ed2cad66beeccc8a3ede233cc868eb5cd7ca5840d3f49cde502b2ededca26a0efcf9f9c6d4268f91d12cf4feffa89e79fe9fdc7aaeff04bb3d4fcc15a7b4d076f881e353fc96bf779808c13d2309cdfe60652b422da328675219a489c1a31b782a5241da6ba4d7b461962e90f0df82ffe0118ad650de1bc3208ba199358eef018241832e5cb83c9ec89d8a748917426c0ba3a4b7473ce0b6ae57d204290ea5d95673ed36f7870e757477941c4b2d9c634be46d0656df0e7e3a414b1f9f6fbd222ab15f1faf6ed1377aaebf1f7de6704032ed7e91e5e9b0ff737b6e61cce9c89566c317b6b5d0e642c2f46b5ebd4ed1666b0edef5a4e65f53b99e7bb1055e030ed8c1d36514d77aabeb83f2f7985a773cafabdd1166e68ef8d3d8e35d7d3e4c68bd4473ac79f47bc177cb5075c97ef882df2e2f1bddb4e6accb36c874cf37222ab86a9c3ebd1d52ad7cdc77d7f2eeda242c1df158e7b3de1f79af2d91e91106af03a98fbe72f055e1721c92013aa3d574c3896dde93babb328d3bd38e8e9d65435bc697d4e6f380875f876e5193b57bb9c6cbfba8c17d7e525d33f7114fbfc40c4691e9f0c0a569a7b0435fbcffa95abfbf73079349d201800db559930bea89f2e1d090bf33589ba66c32ae164777b68cb961e0bfe0bfe59c0fa5323bcb461e2c50cab78241e701ce079caf3948f5f98a15c30608fd3f3e231b6af6988c0eee3f5d208a141cfefea008d52f2da2743d6bf31a14e5000d3b1c61ef2cd40e33f6eb5b4beadb78cbe752de3d468dcc87ae21725d805f00a89996bae8bf7697558d3cf5ae6bde0b1a0ead4adde86d1ad3f7f2e902d1c1f15e50da2fd3afe46f297cc1b3b7bed3996cedf8eae6854e6735d5beadc6d1264303ec7f5cb116b7d33cfd1bacab6a353b25d7a511b314fe35fd9e84b22f15e75fe7e62f572dfae79f5f640a0cee1ee1bc55a790efa5f7d85f38f02ec39abfa4fcc58d52aba8400db12bca30168dbe9fec21c66feb42522aeabeb3da16539bf24b1a9ca0d95b7c467cf3f96018e97edfdca647b7b84ab3d4f76680e5fa095fdff002c36eff7f72b9fbbff0052b0f2d676d8cc01288b015df796f71b315a3305300e48f097398831694de1c6ff0081fe2be3ae1c0fa50c2f463cc81ce14096b108c4eac173875c1f39df07706be4449c79a02602e6a07a1bc1e95b867f51775bb97f5e7b4dc7fb3dcd994aafebbf96f05aacd69c8fded2c1455eddbef5c42a1ba0e7b61fb982a3a8abb4f7b8e00350e8422b976eb0df00920e9ac112c9aeb02c88c55ebb4db69bd7bf28a325274f3fcc0d350df5c69d76503d47f3efbcb92cd350edfd1b4055b4d1f2af83b4b2268bf2fa6f2777e67b8e5ca02c3430f6eee8a2ad867e7caffa250bb350e95a7a51e71b74e8ebe6e7d97d2792eddabf41eb0052b2b0f43d76bf59b37f27fdb260ce15f9456460ba831a7b47855ffabd6345d2bdabaf3885795dfbdfc438d671f1fdcc2e67cff53301b7c7f7161e7fe7c4561beafe6694a695f10327af1eb0c0cb6f8811d6cfeee20c5fdd258a72b9e496352132de23268e9011a4b39c4b663b433d5d6d10c18ade08c32e055c07f35f897c1ae1c0fa100b92cb454544977021065a5b843346acd28517de2c5c7684d8b751de2b9f2bbcadf7a1f7fa8e86bcfac60955e5f76e5102397efcf5d25bae4acffbeb0472d6df7fa8374d1cdf1a7da805355a3ad74e706826ba9dd8abed1d25eb2b87d15847d274403a32e61d66b6272b7dade280ea3be7e584a201a1d0fe86d305b1787eaa2dbe4fa6b9e9b880d1a3f07a6d3b6f7c2fa7c9de59b6add79eb9ebb88474190e8679f23b448d250e174e4b97285aa6ef7dfd779b30c6e18efd23380051f3378eef580cac63b9529414bddca9ccc29905ee8e90bb4fb708f360f5aafcb29cd59f5f89df8dfedf594110ea7dcf495d1d2e2894fa7bcb34f2f88d23d65ebef78de33d3e22bfbfcca2fb4abab1ef0d531ce39876675359a55690a1666b58d0decc00f78caae006a17a1d63c0421ff0b2e2cbf06b9a380bec4343acb8b18b0843c24958bde47c4a05469cfdfbeb297ca54cb5f3fbf7bc4a6fbef716fa9f7fa9871f7faf682b7beaf5fbda1b9ae83f7f710db6c7dfa4e5ce626f05eaedf7fa886e167a9297623de2d40335626c135516db700ae512b46a01c8f1d5881a555c1bb74ebef70ca327c60fc133477cfae7e605369cf0f45eae48d6076a1f2af926c6d676d48b9a0bb179fd152b76535cb71cc8cbed59ea075840010873c933cb222939d41a588d595fd7d209a7a3e5dba4399a6fd332acb35d7cff00d8dfb3f7aed13dfe7df762875c7df821b3bbf9ff005959a89788315e7f303f7ef595bedf7f51a3110739a62c532b5d7a4431696b547460b4395a30cd9134348eb1a9315acbc3551e61fcb7e1be0be1d5347036fb7015cb9acb3081c2a925cb8481bcbe2002a0a0807b92b6fbf7ca7e3f32fcab4fb88b969f3edf12857dfcff0050ce37d5e7f7edcb3234edf7ef69923e7d3ef945b3ad67effb302b77efdd6087627de705bba748550c988a705597eaf053b4b3d61cd2e03425be1b9b306a4433410c81de69ce620d5963a7053526be25f62aff00bfdcb36eab27e668d4d63f075852e4bcbcdd39c79a17d6ba9fa8ca666b36c91633bc0686071f1fb89393e99d7a6e2265b837e87f50834f6beba7cb324e4faf5e90c4bfbfedc50e9ca6d5bf2fbd58378fbca5324cbce34a5fbbc747ef4e0953a4b39312aa8b1642c626b9a9319e672626b286c86d4c6cc2d6a64778e57fe3783c2f8eae236bb4ef2972e592f969a43a23d13a73a31350f022ee6be2b7a0aca2d6fcbefea1fea51036fbf7ce5e0ebf71f7ca27be0fbf7b4182bef6febd23cdbcfcbefa6b32e2212d2ab4fbfa7ca0aeb50d7eff0092bfb3f77f7aca2df289af3fbf7f33634554e8d1fc70577252d194cccb7808b23b6eb325639408ee4b0c2c70d2921736d56b0259841b46534b971a62fa8452d3666ea2fb4daa2969d5bf98695b5f4da59b75fbfb89a542e4ed9f8860cdde3dabaf38b6727fdf886cdcc7df5858ef173dfe66581a7a66543da5f2d5b44a94bef8a60d76ad355e51ec65e0e579c12b4975388f4e330226f14b18a6ad26033b004b402e83aff0be3b972e5c597c2fc2d3c05a95df8eb80d40a84110663dad679c22741404a753ca3630beb15f37c86a77de58963899cde9f3f7b4596febaff7eb285eeab6f975d7e67ed1f6fe7da5a3dc6b5d3eb01eed3af6fbe51c81adfbca0cefb7dfbda723434fa7c7a425adb7ed00dda35829d4fccce8508f0bc905094de58c4cb9a46c96959772875201a1571009aca9c21b418521258bd624536748728a96cb972f88cfa8ed300a5d67f3d501bad4bfd1d79419dd9af798e8fbb4db3946a17889c1d2064457bccef331a96a465b708e458c8e65d51eb2fd439f88e4075890e66f1358f39cc6f0aee102800391fc2ff1df0be17e245b94978acf031cb70d6b4d67c412541a13de2b435993e7efde701f7eff00916d74ee39ff007356c4db7fbdae5d8538dabe2be3d20d1cfeedf199597aefcfdb3e8eb12b4f3cdfcdefdebbc4baedafd7e7d601ad5dcff7e7d65b05c448ad264e0b5ca5e5e90a7e41f58683904cc9c860f79632915b4b041cab2d444aa847c086163a4d334b571c4ae1670367a7f9f3163a7df8208cb9fbdf762c1ad3f7f1283b349799f2c6a199735ef32de32be831b55caa7b33860ebb139bb8897ae3aceb170d50f3829268c241bcc00e07f3acb8b165cbf09c7a9286ebc5e638f118d400a21cd965e6c601eec7df5848f39dfa914ee79ebf7eb03fdfdfbce5df383674d3ef976984e6e5a7df8ed0a6cad8b67efecc4a0ac5f51f3dfcfa660ae5c56b7fdfcfac78a4cd7b7be3d4880a3b39fb7c635c4cc5771ff3e3d2283577d636a09622e902a36695835d904531cef118bc05e1a4c3112d28417782c5652eb78d5d2178a2d8b386a50d6e5c5c42af594989921a869101b03b401a0fa39c46ecff0063765dd1ad23726897985b0ed306daa1144728da0129d000e34a3736d9d7de5a261d1e50141b6f12a0b78ef0da6af13fc2b165f07c37c4e3d698cf597c166398a2c6318377b114109ef4cc32be7fb4a06d5320faa06e5c586f9367f30295779bfbf7660bc27df3fbb389acbf8fb5ed106eab93b7ebee2142949a2393957c7a54ae6d26946bd69f1e90e460f3cfdeccb55eba3cfae9f0eb034eeebce00209a7520c41a5cca618cd8cc23d51dd570b68946cc60b8b2f94b92fc0588691896e6963b4c7298989668d4aeb0b5346653051341368f40e9896487547566526c954806561f2d4b8902691ca6141c550d264f550d2295031895e6d2c55cdae8c4c4c8b1d7c57c1f0bc2e3fc67168665bcb85c7c478da8bfe703064d06d15b36f7fc5c055d4e4c5fa7c415ea2fb9d3ed4c850decbbdac7ea6146b9ff6483790d4fc7df4863d0f61f7c98646a1c9fafbd3488002ff001f58ba1679ebed02f99b60c6ec501d6232d43589d441bd89ba4095610f8af298d70c1bc905c3462a81c0579caa20e23325ed05972c8d32994f38db897379930ca422d845a5da3a7b38444b4b4b33ae023d7048472661a7c49a9da1c7448171bad53ea86db66bec9919adf0c30adf1d7f0b1f0be23808e92f4972e3cf0012728de536bc4063e49aca0c65604d8bc81fb667f715158683fb820018facc0e60b1c274fbd25847a036b3ca0af994cec98b650144b25dc0c79c5a05de1454c7170c51b74949c846d02bacd11b9b281ce84059592868242a516ee61a32d2d29865290cc348cd12dbab86999533ca764b977148398f78afb09427489cd9fe663ac4ac104da67226a44314660cb21a4a8d5f99887154660cd6547cd99dab3712ab82475698287f33c5fe33808e92eedc7265c5355a23cb788e85056dd639a9e6b6ec9573a1c35951b428a65c5cc2692a0d605a822d139c4d2e50998b2aa56d12e0b5ca6581d61920161a235b6ba4349594964b39cbebc1be0b166734b65b94b3b4a65b2d189b41e714a63be811576a610d5664d20d44c01683594304d425923c2a18e85530f071c0e01665fda1655b5d58c2d301d6b1db3ca59944db0d13cbf918c65f0b972ff8c70f254b05d66785dd30eec3a0e4f438df066b2b817184b8e8add8b8736d067b600e5682996c63d89d9805a63a019af4ae90dc18005836605983acd34605ef2b632a2a3099ad2169125ad2b1ce237a4174654719b865ac6e2a398c8e2269895654fd203226f468d453552d5703532091c311b4b2609b1259b065d30fea474b54658c12d758aef0cc65748c46ec75ca2616863f958b18c63fc1708711c2afd2303d597852035b90c74954072e1af0a95c023c1cf0b9937ca505bda735111640e92085324d4ad1b476d1d12d851b99003c039a512b29c119c8364520d8ea4761885729475805eb0b6f31490d231155c58cc458e516184cecc4cd5b7c3688bd185082f4661344a654a98208a31da38c91e1282336f06d7388b08bd680b8f5b919f9be61329c5320b8061cd1f9a7cc6ecac5f73aff002b1e2f8d8f038ebe2b3b10cefc441272591eec58bc2f9cd654aae0cae1a264de64ab970102d5c1620e06f06a4d64999c1895bcc1d420184532944a8b1b8c058a80b2738802b480de8c2f93332ea6d0d23125b945794b728f44dc470b955842d853ac25a4b93795588d79b2abb90a986014b99ae2246c44eb2b5c0d8620d229805f289aa52ae0ea2f6f49ed4db129d43a0427c410da07587e93604996d441fc6c5f03c6b83162c095871d7c46fb5003d62204c90f9ad22ccbccbb6592e2380c209140b81004a3c044338850c651eb2d263057587eb10e8ca5625a9bb099702210e00b30002b990560eb0a9898989898951253933014ca4a5cc546fa49760801684c32c0896c4421b16cca28d48066ec6720cbb7660dc7b894b356759cf4800cc53ac4369436853a0f489d3db04d71de36b5c3a2272474c7d23df71bbc3ba3281d3f8d8b2e2f8ae2918021211bce9bd61c75cd1c05bed03dd458dcaef5300468144198d92dc1699778468625ee372a27ca645414e905e8c691634c1f300c17c319642618d39c762cbac6e863340c70993310ba2e998a0db35472d60894dca603bcb739a198388a4b79c3ab1a6ac0b548e89ee946f728ce2e51895aa26346252f7b328ecc02b3cf2d1872930d057bc135420f77ca03adbe701dbe79816804ae15c16690bbb15b1be90f76b93588e300730503a78ae5cb972e2c58b165cbe04c49bcce01e73e514162cfa11daf353976cd413a13fdc871d7347016fb415c0133a27d070598b2c94a8d380c26aa95335402701e49e886dbbcb7006bcdda6536826b29d505ce30e7348c388c0db45b240252b393b9986c1ce59a484b4b4b4b4a650d197ba1a45c47ae77c5ad875cceafa91e43e6963b4736d8bfeb02043a4283eae025955505c34b443498a362585cef8c68b76b94742a5ce7bca6de0ecdb83346b2f02f27e66000eaa21a9acf29987f266424eb7516c03de38bb1c897a1a28e2b2e5c58b2e30899f0222621aa13461e7349bb9198f8793cd9cbbb391af299df3e88da79a7c10869c130d2a3c3b471d5c79a869cb8365c5bd4471e05dc728d26e4657a115650d4d72c4b64ea9da186035ce758a4ab6bab182c06890806398ae21367728dd5c9bcf95b443e5237e0fa7f7324366f9102aa223919a49dd94275a1cc94e73a84ea13ac4e83d6749eb10fdd13fd8443f644f5f5221fb20ed66ef07d90da9815832818ae71de8b63ec6678f986b00c80bac02309ce0b93d627243e7341a3d18e657a0b9b58e989ba639f9d67cd49a72f9c1b718166394d23ee21549cf29ad1ec63b5fce20c6f4a9b5a32c832e2c6197849219bc16f3454f39a889a267a1306a75667d8cf6104d4d9756198134d07940860949b4cc6da705df42bbcaefc25c56669e1ad0e5e071a843ca3ad61b202cc5d948f70e205d2c00c31d05829630a545c544c23483476f48b6507223023ce732b5039a1f94debdbcfc40df7a0a999b399965c2d0f3985ef0010423bdd88e6ac321b4b0265d0850ceae90aaf2b849d14e8a7453a4f49d0fa4ff1a03f4114d03c89b8f4099fe026f83b12ad9e93a4f48bc96c035fdca4a855b960225dd66e5bc881ea3de1db40d50b53b6b52a1f5217b5c3617ac0336f5966aac6f5114d62e80e459e7349ed196d26c163d9c7a93096769825669c575c4c97686334631612648766031ac183ce6ac0f39ab085c5d7498a445f14b07e53b452fce26a85f78369f481d201d080e5292b292929113114e02227854be0a3c70c9cb31f617e59ef9a0fc404fa17449915182d7f31ba8448a0ae53657dc497b8f560ff004ff536abd080644f4cfb4d4216e8fce273dc13f826909e82cdd97b88121f78b5f4a85e4ddccc5181e701d8ef055195f48699cbbca4c6b15ca0065cc4f396e07de2db50ad3335c172fcd3a12c5b0be5733d87687250e4a7453a29d7e0d9bcf348df6f697171a2cb723cb8882ad40dbab16cabb4c075acd60bac11a352fdd30440da020b6106c87041d6575c1cb686341d215cd3464dd8ec46e40bde578ec26d189d276048b6c1e708b2bae1cc87503e505b83904c13c84daa4e414c8320345f79a499a5040f6806d03ca013131292929c168ae05f347bcc4c452592e68e24d109b0d37ad6732fce726e38e3de6556bd3807646ba47ca19649b902fe4848ba77a07b8b31ef74fdb31b9cc87246b7af6988f3467993537ef2d51e7bf78fde63f599e5848e4fc274d421d5c5448ec98e931d262e62a1c7d49898985ad3a39fc4ccf32f5e0666cde7313d08f5fb4eabe44ea794fee26d7d07ee26cf4115b3d0426cf448ad8fa0fdc7917d3fb9cf83363b07e61b9eb44695b3d498ff0044e44c2703c0eccd1197353b5ed35613da726a722a1cb082a638e7c0f166630c6637c31313131313ffd9, 'sbr', 500);
INSERT INTO `staff_information` (`id`, `first_name`, `surname`, `Dob`, `Email`, `Telephone`, `Address`, `Department`, `Salary`, `Post_code`, `Designation`, `Status`, `Date_hired`, `job_title`, `gender`, `image`, `pwd`, `ot_rate`) VALUES
(3, 'Pathmini', 'Wijesinghe', '1986-12-26', 'pathmini@gmail.com', 769370047, 'Malabe', 'Products', 25000, '56200', 'Manager', 'Active', '2018-05-11 00:33:32', 'Good', 'Female', 0xffd8ffe000104a46494600010100000100010000ffdb008400090607131312121213131515131615181718151815151518171d1818161618151517181d2820181a251b151621312125292b2e2e2e191f3338332d37282d2e2b010a0a0a0e0d0e1b10101a2d251d262d2d2d2d2d2d2d2d2d2d2d2b2d2d2d2d2e2d2d352d2d2d2d2f2d2d2d2b2d2d2d2d2d2d2d2d2e2d2d2d2d2b2d2d2d2d2d2b2dffc000110800e000e103012200021101031101ffc4001b00010003010101010000000000000000000004050603020701ffc4003c10000201020304080405010901010000000001020311042131051241512261718191a1c1f00613b1d1324252c2e1722333628292a2b2d2f16314ffc400190101000301010000000000000000000000000203040105ffc40023110101010002020202020300000000000000010203111231042132415161132281ffda000c03010002110311003f00fb880000000000000000000000000000073ad5a305794945736ec0740563dbf87ced5149ae0b3629edba6f452f2fb91f29fcbbe356608f87c6c27a495f93c9920976e000000000000000000000000000000000000000000000000226d1c6aa51beaf823e6fb536854c4d46af973d525f4f0345f1362a529c6943f1ceedbe118c6d76fc5238617654639e6df3666e4d5b7a6ae3e3927759fc16173718bdd77c9bbe64ea7526a569f42a7eae0ffa9727ccb1afb313d32ec0e1beb75e738ac9f3456b2c7aa15b7baa4b26b93f52f7646d27754e6ef7fc32f47f73337b6ecf8ae8cbaf933b4aa5acc9677e2af58edba043d978af994d37aac9fdfbc986a97b66b3a00075c0000000000000000000000000000000000000e58a9da2dfbccea43da92b4575c91cd5ea3b99dd67639d7ab2e5bb05fe55bcfce6fc0976281ed471529de9a8b9cf394d47f3b5c7b09780dabf334b77494977346595b7afd2c2ae854e22b28353babc5f3e1c511f6d62a59c779c525776d5f5232bb5b6caa13f972c34db71debca69bb7371e1aac9d878dd7a3ca67eab6f88a693925a495d76acd7911e2eebdfbe447d8d8ef9b868544ace1959ff874ff006fd0ef92938f06aebb32ff00b22bbedd8bcf86313d2ddfd4bce3fc334a61f6457dd9a7ca6bcf27f537069e0d77966e69d680017290000000000000000000000000000000000000acdbb2b4176bff008b2ccaaf8897f65e3f421c9f8d4f8ff28f986c4d87293759a527bd5a294d3692949f4a2b83bdf3343b0f62c30cad1bddb726df379beccd93b654e2a9abf072ff00933f7138d5157dd6d34ccf357c7a6df09e5e909c14a6dbcfff004f55b63c66f7a4b79dad779e5de40a78a949bb425177c9b6acfaf99654f1ee39488ca95cbc50a6a9cb712c9a6fbe39dbc2e42c4d4dd54dfe8a9f2df637babfdb34fb8ebb471b6716b8493ee5af911f6d251855b68dd192ed73dcbf82895df66a26507694d763f0ccdf61657845f38afa1f3f52bce4f9c7ee6ef65caf4a9ff497fc7bf763373cf4940035330000000000000000000000000000000000000576dc8de9f7fa16243da8ba1ef9321bfc6a58fca3e7784a96af5a9376bbde8fee5f47dec9353175a35153dc8a8daeaa3778be1bad2574fcbace5b570adca552394e09b4fafecc9582af1c4538c964f9718be462c57a3db9e321359baf08f5420e57cf9bb759070981ad3abbf52b37497e1a7bb157ff0014a495fb8b47b2db77936fb5dfea7e6264a0b52cb7fa3dabb6c4d59dbb3c4ebf11c57c9a6b9ca847c269fed33bb576cc77d24f8ebc23ce4fec48c4ed5756780a7faea3aad7149465f2f79707ab2b8e6eaf28fe297f4fa9bed8ff00dcc3b0c35ad9f3b2f5f537bb3236a54ffa5167c6f7547c8f5124006c6400000000000000000000000000000000000008bb4a3783eacfea4a38635f425d8475eabb9f7190c5d3b466ff00525fb8f9fcb6acb0d55387e98a9479acbd389bbdb78b4a495f2bdadcfedc4f9eed1a6b7a537c5b7e0ca387e3f9ebefd34f27378cfaf6d561b6e54ab49548c6c9dd5afa5b2651ed1af5aa657b2ead499f09de785deb6b39d9755f22e6960acaed7691ff001dd6ee72b3fc9338974f9fd6d9b2eee2fd0b5f8630d7c4aa8dddc22df7dac97d4d24b04b3cb2e0bdfbf48786a31a4e497179f62bafab668e6c67878aff00359b8f579793fa5c4d7e05cdbfb2fa1f42a11b462b9248f9852c5a5522dbc9356fafa1f4dc3578ce119c5de3249a667f8bfb5bf27f4ea0035b28000000000000000000000000000000000000516ddc7d9eead16a4ddaf8ef971cb57e46171bb4b79547c23af1bdf2faf123df7af04e4eb3e4abc655f9951bbe97ec28b68e06ae225f2a8c5bbeaff2c57393f4d5969b2ba52de7156c93bddeaf2f1b3f02c5ceb519271a9151e30b26badbe374cd931d4ea28baeef7563b2b031a14a14a2eee3157d2fcaf65d68ed52ae56e6eefb345e3995183c34be74b113d6793bf2bab2ecbacbbcb14b36de895bc0e4cccc2eaeab96225baaefc4a4c557dd8b968f85f82fb9371988df692bdae9463cdfa9df0db12f353a99b5f9754badbe2ec79dbf2f93c9f5f8c6cc59c18fbf754bb370952ac9549a71a6b4be4e5ddae6ade46ebe1bda6e96ed3945aa6f8be19f0e2468d04bdfbebf23dc64b46bdfbbf81b2706733a8cf796eaf75b64cfd2a76262d59536f35a5f97245b10b3aa40007000000000000000000000000000000e75ea6ec5bea3a15db6a5d1496b7bfa1d93ba56776b6f55e8a793d5fdca4dbd838d3c34f77576bbe7fc1a6ddf7ea67fe36925867dbefcae5b8c4951d6ad8adf86f0ea706eed59e56b65938dfc9f87596b87d9f04f9f16f5ee444d8b819c70b07049ce59e6f2b3e76b5d7dee68234d72b22db55f48ae95dddad345ebda546d5c53b6ec78bb37ab79e492eb65dd5ceebdff00e10d61d42516f39b7d15fa79cbb7d2e66e6cef93fd67d45fc7738ff6bedc68e0a54a29a49d79f4637d217d5bec59bf0edb2a34f762a2b3d6edf16de6df5b3cfcb7bf2971b6ec5bd22b56df5b7e4969711a0af7949c9f5e8bb12cbd4b71898cf8c57ad5d5eeba37d7efdfbcce3397bf7ef81d24bb08d5244d148c3567169ae19a369467bd18cb9a4cc1d09666db66caf4a1fd255c913ca4800a9200000000000000000000000000001b29717537a5727ed0ad656e2fe8554e597593cc46b949986f8ceabad88a1848df392726b82e3e5f53675ea249c9e492bb293616c6bd49632ab6ead4ce31d1538bcd2b7eae7e05bfa45734a9251514ad14924ba9648f533a339c9d80e751a59f1e5efde657c139d68f55db7f4f3ff91d6bd45f9a5e19f879f8226e1e8da37d1bcdfa23be9cf6f33a6bb4f0d9d26d70cc8d5aa28fe27ddc7c0475e2ac889559d2a576f28ab75bd7c08dbb9f364a389385377838da9c17f857d0c5e0a95dc63c5b4bc4dc423649725629e5a9e5e800549000000000000000000000000079a9351576ec8f454eddc5a8c52d6cd37e765e363b2775cb51b195f7a4df5f91c25323626bf464d27269e8b377bdac70c1e224e36a89466ef95f85ddbb5dad72e910ede76849b9d1a49d9ce57765f961694bc725de596ed8ad957b622927aba752de34db5e0afdcf9163299da3ccd91eb3f7efb3cbacf5567efbfeee2fc48ce77d3b7e8ffebe63d7dd3ddea3a61a8a72d15967e1a7d17fa4ed88aeaf6d5f25ebc8858694a52b41b504ba4ecb37cd7bebe04add51565923935e5f696b3737a729ef3d65bab947d64c8ed463a2bbf7c59eaae2609ebbcf92cff823cf172e11515cde6fc09c883d54527ada31f7c4e706b45e27077966db7f4f03bd15e2745cec0a1bd593e105bcfb7446b481b1700a953b7e6974a5daf87713ccdbbdd59200022e8000000000000000000000003962aa38c2525aa8b6bc0cc429ca594e4e4dfe26ed9f3d343498f95a9cbb3eb9199c563214d5e6d24e4a37eb792459847494a292b78f37c2efaca9da381e31f22cd4ad76ce5bd72c9f48d6731b8cdd942756c942ef7f95f269ae0eda16f4318a70525c55edda76c66023522e328a926ad67d667311b3eb61eee937382fc927792d7493d7bfc49f72a3e96d88ad9f7fac17a3f024d3718c5c73937aa4afc2d9947b0713ff00e893924d286ab4b4965bafaef77de8d05452692ba8ae2966fc7999b9fbd5f1cb5f04ce679ebfe2b71fbd6853492df95ae9f4a2ad7be5d9c09b520bf367dbc8e70a34e32deb3deb5aeeeddbab82ee38d6c653e32b77327c58b99f6af9f966f5f5e9eea4968b2fb119f4bb0fc963a92d2f27d845c4ed4b26ed65c12d5f55f817a877c4d6514dfd3e84ef86684aad68b6ba29ef3eab69e85361a6e4eef3e6b8777266f7e18c2a8d3deb5b79f92cbee4377a89662e40066580000000000000000000000000000e58b85e125d4cc55371ac939a528ef2715fa5c5dd4bb51ba2a769ec9524e54fa32e56c9ff002598d748d8ce46555d5a8a497cadd8ee3be77fcd7cc93176c8f2fa37be9a7f257d7c7c955a70507284db5292bbdcb2baeab64cb505dc6672c4b56cf9d92e6df039c25621e2f10de229535a284ea4bca114f87e69781ce9d78c261551deb3e95472938ddb4acd679bbb76b7575161397bf5206d0adbb5285ff339c3a95e3bdfb38318aa8da51fcbabeb3b216bdcaaa69cb825975954e69e6c9189a8f773d0aeab5b9b5e889c88bf2bc959b6ec92bbe48aa751cd39455d276b7f4bba7dfea73c5e32357a37e8785f2be7e2891b2f08e9cb75376cdae3a28afab02e364d2df8a717dcf55d4cfa761a9eec231e514bc118af8730b175e0ec93bb6fb93767df637451cb7efa5990005490000000000000000000000000000000029b6e6c5f9ce3283dd69f495da525dab497beb596c751dcfcce0e3add37a73f13e8453fc4b838ce9ddabb5749f534eebacb31bfd23a8cf46b69d9da79853fed653ffe7157ec726f4ed5d4516369d4a3f2f77384528b4dbba4f24d3e2d72e245a1f14eee2d61674e56dd56ab95aeef9b56d385ee5c8343b570ff00329b49d9a92945dd6b177e1cf35de71c736a3124e2310966dfbecb99eaf8979c9bba4bc1751291caeb5aab79b7f6465f6aedb4aafcb941fcbe32d2ed59e4b95ec7eedff9b5631709350c9db8bc9be97d8fcc138d55f2eb2e924d293f17dfa0a25ecac1c66ef169c52f48975429f49ef279bb5d3d324f35de5361f6554a32dea52e778be574ec5e50adbeb7649c256cdab706f357e406bbe0ea3d39bbe91fabfe0d6195f832318e516ddd3bb7ab7759b35466e4fc9667d00020900000000000000000000000000000000040db5fddf7fa327955b72a7e08f6bf4fb92cfb72fa64b6c463274e9b4defcd64b2fc379bcf9746cfb4fcc560d4f58a596ab55ae8f86a7ed69c9e262add154e6dbe4ef4d2f526b342b55cf08b75415ed15927ad975f12bb1582c9aeaf35eee5ed5a77f4eaea23ce1deadf4fe2e4a5719ea385b3dde174976e7f715b66a7c33b6bfe58bf42e6a61d3ee6bcb2bf834798c32b3d547f6b5fb4eb88d848b5d19f74bfcd2d7c113e3875752b679f9db33a469e7dff00b9fdce94e365fe9f356f4395d586c5abb9562d71767df91b13051a966adaa79771b8c257538466b8abfdd14724fdaccba800a920000000000007ffd9, 'ppp', 500),
(4, 'Bbr', 'Rbb', '1991-05-16', 'nipunigk@gmail.com', 778380074, 'Malabe', 'HR', 25000, '102905', 'abc', 'Active', '2018-05-18 08:59:33', 'Manager', 'Male', NULL, 'pwd', 500);
INSERT INTO `staff_information` (`id`, `first_name`, `surname`, `Dob`, `Email`, `Telephone`, `Address`, `Department`, `Salary`, `Post_code`, `Designation`, `Status`, `Date_hired`, `job_title`, `gender`, `image`, `pwd`, `ot_rate`) VALUES
(5, 'Bbr', 'Rbb', '1998-05-17', 'nipunigk@gmail.com', 778380074, 'Malabe', 'HR', 25000, '102905', 'abc', 'Active', '2018-05-18 09:06:16', 'Manager', 'Female', 0x89504e470d0a1a0a0000000d494844520000046b000002680806000000d16d6c09000000017352474200aece1ce90000000467414d410000b18f0bfc61050000000970485973000012740000127401de661f780000767149444154785eedfd4d8ee4caf9276afa2a7a098d5ec2f58ddc1d1417a15a4339d00252a8c29d7794f09f3b3a80032de0865440e30f0990e3e699e9a073d0212007393813b6bdfc7037d2f9e1f19511167c1ec075c29da4d1686428c37ef192b1ab0100f8fcfee7ffecbe00003e3a610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac0180621419d61cab7fd5bbddb7fa70ea3e98727c4cebfcd6bcf687dfbb0faf455b4bcb4bf716c777d3f8bfd48de7ef23381df6a99ffbdbc7e374a8f7bb5ddaa67dedbb0ddb76e2b35bda3ad587fda58dddfe903e99764bff2efbded5ffe5ff18f6efea551dbbad5ec774ff6e3fbe70d84f6c5f5d8e695f55f53eb5f1da8ed5e5fc7d46b3c777ac2e633bb53caef195737693ee7be5338f31fc54c21a002846b1953587fd6d61c1e9f02dfda0ff3127fb87fd63fd9269ef4bb77f895bc7ffa53ef2f97b99635d4d4c426372bc164c8c35dbbc4680d24c8cfbd0a30d4b86fd6bfbfcca59cdaad5e38be060b43c02a02aebfbe9d88607b9c3be7ab7ef9fcf22c6792e4889f3f6d26b65a97de019843500508c77096b0efbae32e3f0982687f1f56f6982fa789efcc7043d3eeb7fd06f2b398615164d5870fc5e574d5bedf6c7899fe96727fbab951bbfa7fdb6fd68db8f7d3d25a0f8bd3e64dbefd3d7fbd446e3f4fd72dcd96b30b1c98f2d8d5575f8d12d486edafe6d8f6f7dfc47c79fda1fcedbd696b766cfdfe947363e31bedf8701c7c2f8f5d7d7be1a5e7f53fb9f37aafc989c95e6d51d111e1c529ffa20a6db3edfaea956b854889c0e510d92ed6332c4990a55c20dfd3b1d537fb2ea93e6eb3ec0c88299e8d7b8df7dbbf1da5775d51de73edbcf72ff6fe85f63eef82e62f978f376927fccf697195536f5afbc8d26204a9fc57e8f711cb14e1eee2c5496b495423116dd76e36d1b31f6d9b2b48fa9b66635e7aedb3eb6abfab16dcf5b734e9ae5a9edd4d7ebfec7b5d86f1fd7e66800178e2fb718a6bc42758db0065e99b006008af16e953511d83413ecf3cfe169f29e4d9863423d98801dd3c47a10d6a449769ae09fb76f26efd713eed9c97e676e790419d531fb3cda7fc2ad3f6dbb3fce13955384277d58d359ae8cf93d1b9be8cfbfae26a4b754d6bcd5f1ad8dff55e54db3fc12a8ac2defcdf5ff503d0ed78dedd3f574b13c7ed16e1e30c5782c5d27f396c392737871be9de3d28966527f9eccb693ecc589efd5ad42210b5526cdf4afeb4fd50f401f60f4fde9dff7afd10ece154051b1929647fba766823f0e253ab3fd5f0b63d68e2f964fedf394fa9826fa5dff9b3063b48bd5ca9ae678521b69e7cdb6a7eebf99b930a13db7a9fd6e51d3976cbde6b6adf3d8af07526387aaeaae9b4e8437e918dbaf2f631d8159734ed2d7d187cb38a6f39535305705b316962c2f8f733375ce6fb7b67fe089843500508c770c6bae83819840f71386fcebc65558b3bc7d6f6eb2df9b5ede06072f136d64951f5930d05b0c5b4e7965486cff9a61cdcb8f6f71fca3f2a7ca2a813a118834dbac2dcf4cf67fa6b268b7cbc66365fcce7ded8daeafdbcd87097d75461316a489fb7972deebc28038e676729f57210cc386f635112ecc8620bda9fe4d87034d7ffb15cfc14bbbeeecf65940333c861bfb3fd9bfccdaf135cb47c1c58426484a7dcbdd12d6ac05057361427c3e38a6bcade8f3a82fb7ecebac39e67c5c47e39bb71fc7dd7564d0a7b4cea032e7ea1cb7e68eafb7b6fcfadab95d539995cefdf8db067801610d0014435833b97cbacae3d94ebfa7fd3ca5b226ed3faa5cb2ca97a9637b6958f392e37bd7b066356c5a1fbfabf17c6e58d34c9c97c284537d3c1eceb7430df6d94dbae3f6a8e6bfd9b2be72e55c7c9126c5c330a71393f1c910a433d9bff50067767f8dcbf6f97a79d87373ffd7c6efa6e35b0f6bda3e0fdb2936ac8963196f9fcbdb8ff1eb3a72e9538c451af32c05b9ea6f67eef87a6bcb5f12d684b5f6812712d60040313ef46d50fde4f9746c2b29f2c9f4f8369c669d89f0627ab27f31b77cfc57944ecd6d3ad7d52d7322ccc86f338adba0c601451e784498b3df75b7f64498918e253fb6a97dcf6e9f79bbe35b1effab30e7956f836a6f5bba0e7c1a378c5fb43b38d6e786353361425b55535d8eb10915a60392a6ba61d89941981255214d25c570e356ec7f2a04e94df6afdb6f6aafdd2e9ecb320c9362923cde5ff359dad73fb380e512d0e461cf13fb3f317e676bc7d7ec6bbcfd7518d18cff68fff95f906aab3846a14ff47b70915e9b0b13e2f3c1ee466d0dfe7a55ba50f3a0ec16ed6d5533a3b616d634cbd3b176bb8b5bd9a2ca66eaf4cc1d5f6f7979771e6e3fac2b6bfb079e48580300c578dfca9a631b1034b7aac4443fff99bc0b0fcecba232256e674913eaf681c3b17d1be25c6f9fb65dbc4d666d79183e0077d7f4f7f6c97c044fd560fbd1f1254d8033d9ff98a4640fdfadbea7e38ff7c380637efbb73dbef5f10f6b0f105e5a7e5bff23b0392f4bfd8f30acefc2d2f8e5cb9a096a1ac7f3ba3705366d18d1df4292bfda89654cbee3b6a72ea488d7d46d50491fea0cc726fa78d936428643b35eb4d305175df8d3efb759ef7c71acf52f193fa0367bd0f0d2eb7ffb2fff7bf63e4da4fb36aaeab2cfd4dfa5fefff3a6fe2d1ddfd075f5461b12f40f3d6e5e135534e710a95f7e6e7eba7f977dccf5bfdd47040cfd67cd36119874ef07e7a81fbbd8778cd7ccf14d6b6f33ebdbdda5f317e33c18dbd879b7ef68bbef577c9cf7319ee7d386757db0b27c7cebcb3b5d68f494a31a13d6c02b13d60040313ed46d50004f96558f942ac292cf164a4410f9e2d3d28576021b7825c21a0028c6bb8435cd2d345d25c3f8392e004f35b8ada810e75be0228c38ffe9ed4fe215aa6a803720ac018062bc5b650d00003f91b006008a21ac0100d802610d0014e35dc29afffccfffecbe0200e0a710d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443654de7f1e1aebe7b78ecde01007c32c21a002886ca9ac6d7fafecb7d3d15d5448873ffb57b0300502a610d001443654d325555f3f8f5a17ef8fad88535e9bfdd7b008022096b00a0182a6b96aa6a1ed3b2bb2ff597bb875a4e0300144d580300c5d87c65cdd2b36a625904350f7777b5c7d900004513d6004031365e59d356d5cc3d92e6ebc343bb2c2a6c1e3cb806002898b006008ab1e9ca9aa5aa1a00804f45580300c5d87065cde362550d00c0a722ac0180626cb6b246550d00b029c21a0028c6462b6b1e3d341800d816610d001463d3cfac0100d80c610d001463c3cfac0100d810610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac0180626cafb2e6f1a1befbf2a5fed39ffe547ff9725f7f6d3efc5adf9f3fbbab1f1e9b0f977dbd6fd68fd7ddc2065fefbf2c2e6fb5fbff72f7d0bd7f5f8f0f77e763cb5f6fd1bfd9f1b9717c01801b096b00a0181badacf95adfdf3dd4c308e0b17eb8bb1f7db62e828dd70913da3e3d45f4b70d9b5edfd57145c8f50e61d2eb8d2f006c9cb006008ab1d967d67cbdbfabeff3a4e3ebfd3014f8fa50dfdf5daa6dee1fa66391d93061ad32e431c299acfdafa3b06669ff597550fe1a1c4fd67ebceeeec7e1d4b2cb718d43a4f4bea902ba6fda6faa9362ecbacfce5d581bbf1b2b67843500f04a843500508ced3eb326028f2cdd88f06698093cd68fd9fbb85d67108674d6c284e9e51180dcd75fcf1f3f36fb1fde66b4beffa5ca9a87fb5195508437f7b757c644bffb30e5eaf6a7262c6ac7ebf1e1be0d6cd2d7c300ec2dc70f007832610d001463b39535e1e1ae0b68a66ef1499f0d2a53d2d7af16368cab78c2b80f37ec7f36ac69c294ebca9bcb337ad65dfa3daeac49f2bea663f9d2752cb639f7f12dc70f00783a610d001463bb9535a10b4d062143236ef5b9ab1f2ea52f13ebb49e1536ac8635b7ed7fbeb266226079a2c5e35a0d6bde78fc0080a713d6004031365d5953d78ff5fddd5d7d7737be6528c288f459f7e163f7fc95d70b1b224c696f1d6a8d6e83ba71ffe7caa0246e47bafb72398e68ef6ee6393bb798eaf7391c5a0b6bde7cfc00802713d6004031b65d5993cc8501f1f9f9169efb87fa6b7a7ff9b3de5139b2749bd1daf264ea01c3cd437adb106479ffadc7a8d0e9f6d33cdc7770186d00d4b7f12542a9fbafc3506a46beeffc15fdffbfb2636b429ad487f83ac6b0df2e3e7ef3f103009e46580300c5d878650d00c046086b00a0189bafac0100d804610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ace1c37afc7a5fdf7df952ffe94f7faaefeebfd68fdde700c033086b00a0182a6b567cbdff52df3d0c6382c787bb2640b8ffda7db0606afb123c3e7eadbf3edcd77777f3fdff7adf8ec35c98b2b63c3c7e7d68f611eb7cb97bb8acf3983eff7257b7bb7eac1fd23ab78cf76b9b3d7f5fef2fc756e0f9056083843500500c9535cf1481cd7b84073f5d54b7cc84154db8d22f8a70271f8fb5e5c9e3c37d7dfff0f5b24e26c677b0dfb97ebcb3ab7e02c04725ac0180626cb0b2e66b7dffe54bfde5eebebebf4bfffd725f7f8d20a0fbec9c27a4cf962a279ab0e621aa3ffaaa906cdbb0b27d546cf4cb9a0a96abfd3f34fd6bdafe12fbbab4de57f6dcddb7db35eb8cf71fc779ae5849cbd23efafdb58be7db1f980949aec3aad8df43f7f5faf2b4427dbf907645554ebbdbcb710cfb317d7cffaffff3ff73e3f95d39fe95f3d77b7e5893ce7b567914c1d6fd5d7fcce1b17ec82b93d2f2b687e9b86f393e001813d6004031b6595993dd6213d51dcd84377d1d93e7717e3037198fcffbed426c3bb7deec643e4db22328686e118a551ef32a93c741c549843b79df9afdc7e4bc5b67bcff8798f8f70b5343711bd1b01fcbed9fcd84354ddfcf9533113875e3d12c4c6e587e779f0526d9b1843eac69fad57e71fbf1dd747e6f3bfeb530666df99cb62fd976e9dcdf777d0ecdf1e5cdc6f218cfe6ebdbaf5f003813d6004031b6f9cc9a98eca6896f2342856e861b13eff164776e327eb5ee284ce82d4ee667b66944e5491764b49515d761cdecfef3e3eb8df7b5d2fed9421fa30fe7ed9be0250b6392a5e5fdb24bdb8ff5c3431746247d58d38632cd07b71fdf2de7f7c6e38f6de68e3fac2d9fd6062fb3a2ff139de9c7a4597ee3f50b0067c21a0028c6762b6b6e9cecce4dc6afd6cdc382cce2647e669bb4a0adb2c82a2fc6fb5bdc7f7e7cbdc1bed6db3f9bede3d84a00315a1efb8bca9bdc398cc8bf8e6339dfead5adbf767cabe7f7f6e38fcf978e7f6df9b4762c66b78afe4f74465803c08b086b00a0182a6b5626bb7393f1ab7567428dc5c9fccc366dffeecfb7e9c45f4c8a2a907c7f6bfb1fdc4633759bd04afb67737d4c2e9fb6cf5f193ff6657979dba7f3ad40f96d3ef17669dc92f5e35b38bf4f38feb57e2c2f7f6c9f2f93dffed589dbaef2ede2af6fe57d58bd0d4a5803c053096b00a0181bacac89aa8aae522366b669b2dbdf8e1393ddf8fafffd7f5dd6c95ffda4bb5f2f5ecde4b86b235eed047c79fbb9e5f9443bdf47dc42d43ef3a59dc0afef3fc4e4beaf4849fb7d18862e4bed870813fae5fd6b5009f3f5e15cf112c14756a4d25a5b1eba80a26d7bb44e0412ddb358d29bebf062f6f82e633b777ee3e3e5e39f3e3f6be7ef3a9469d79b0a6b9a63babff4e14b73bbd76000161f30dc6cb3707c007045580300c5d86665cd064518918735258887e79e039f9504a2c4e303809f4a580300c5d8e6336b36226e0d8aa0a30d3b169e9152a8cf7e7c00f0aa843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b286cd7afc7a5fdf7df952ffe94f7faaefeebfd68fdde700f029096b00a0189badacf97affa5fef2e5ae7e78ee0c3d4df46392df4cf4171a89fd2c2dbfcdd7fafe4beaefdd43f7fee759edffe3437df7e53ef5f0695e3cfe2fd5f4bbdfff63fd70f7a5be7fea41bca557babe5ee7fa9bb0d2bf773fbf005c13d6004031365d59f370f7f2c9e4e3c3dddb4c86af7cadefdf21ac794baf31fecf7575dea2cae603260b6f797d3ddc3d3d641b5beadf7b9e5f0026086b00a0189b7e664d3f998c09675f2510d52bcdfcf2eb437d7fd7de22131502f70fd3d3dad9c9ea42e541bfbfbbfbcb6d385fc613e7c70867b2fd7fbd8435fdf67d254854314ced674e54918cd7efdb3857efac544ef46dccae93f5bf597edf8d6b6671fca3dae5fef2f95dfa7c7806e697df32be5fd3b66d972ffd6c8f21bd6faa98ee9bcfbf44d5500439dd674d1b4d55ceb072a4dfe7edd54fa3fea7afe318c6a2ddc9f3ba727e169777fdef97f7afe75416cdf62f593ebf00fc74c21a002886ca9a3473fcfa9026e331111fcc221febc7ec7d84195393d9a5c96a985b1e9f3793ff6e51840797f52240c8fbf3d82ccf8380d87ed09f081416fa311093f58983b90418176bc7d798d8f7c3fdfd70521ee1cdfd308c581aff7ed95913fe5c26fa6bcb97c7f772accd796dbfb82ccf6e917a4c7d6b029b66956cccaf8e396ea54aeb75efd6b4e37a794e4e3c3f672ae8591bff972cff599535d3df5f00fc74c21a0028c6c62b6bbea449e497fa4b9a815fcd23d3847d501992be7eedb066366c99083fa23f79e5c5e2f63788897aac1d63d0563b3c0ec28ededaf135c6fb9ea9dc68428f6e95303bfe6b61d2daf2646d7cfa759b4021d6cb97e7639d3e8ffe85619ba370e689e39f36185d5fd361c6daf8bf64f9db87350bdf5f00fc7cc21a0028c6c62b6bbed4f771abccd5a4354da4a3b2229b3d0f27ea17cf9d2c5fb5974ff6a726feaf1cd6b461455b8dd27cfd301d80ac1d5fe36adf6dbb6b66c7ff2786354d5b5db074ae6cb929ac49ce6d3eadaae6cae3636afb3356d6cc7d7f01f02e843500500ccfac8979664cbaf309653359bf3fdf06f5d83dbf66221f78f664393e9f0f1322ec48fd396f367d1b54bf7ef42f0287ebfd3cb6cf5f99fa6b4d697fcd443ab6698e7fd49fcedaf135067d6f457fe3369f25b3e39facdde6b4b67c797c578eebd6b0a60b691ee2369fc9b6e6c73ffa7f9f8781d1bf8913b036fe2f599e8f618445f157bd866b2e5c3f9d9bda9f38bf00bc03610d001463b39535f99f16ee1faedbdc8ed24d3c63127afeecfea1fe9ade5f1e28fbb599c4f6cbfbd76552bbbc3c6fbb999fa7c96cfffe3cf16dc287aee223edb779c0704c9cfb10215f1e13e134d91e6cdfe8b6999a6c371525fdf1c4a4fc32715f3fbe915110d26a03a6f3b669e21e6144bfd6daf8c7f62f7dc070bce6c7378e3f1d4ff3364297eb73db8434ddb6b15ddfee205349cbe7c38cf9f18f90e77e303e7d5fc2daf8bf7479ab0988fa631decbf37d7fff5f6d7cf2f003f9db006008ab1e9ca1a5ec75275c547d65693b441c25455cb4d26832a00f880843500508c4d3fb386e71a56564cfd59eecf2eaf16b9545c01c00726ac018062a8ac0100d802610d001443650d00c016086b00a0189bacac51d903006c8eb006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b5ec9e3c35d7df7f0d8bd0300f860843500500c95352b2284b9ffdabd99f5b5beff725f8b6a00800f4b580300c5505933e3f1eb43fdf0f5b10b6bd27fbbf75354d500001f9eb006008aa1b266c1e3e3d7fafeee4bfde5eea19ec969125535004001843500500c95350ba26226829a87bbbb7aae7046550d005004610d00144365cd82af0f0f75f3b89aa8b079987a704d5b55b3fa481b0080f726ac018062a8ac79015535004031843500500c9535cff6a8aa06002887b006008aa1b2e69954d500004511d600403154d63ccbe3e2438701003e1c610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a0028c6262b6b00003647580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c9535f096be1deb7f7febbee6ddfcf8cbbefec75f4eddbb6df8f1f7aafec71f76f5fffaafbbfa1f7f3ed63fbacff9f9b678fdf1413d21ac71dd02c0fbda7065cda93e54fb7ab7db35af7d55d5fbfda15bf67a8e556afbf0f17ed839ecdbe3bebcf675f501fbf961a589704c82ff1693e0f4036d3321befaa1f658fffac7f4c3ee1fabfadfdd2763fdb67ffbc3befeeda7853aa95fdd24bed9f71f9f7eddf7fdce5fe3e3fff1972a1d7b7b6ccff981ffdf7fbeece36561431c6f35dafe32068b7dfb7668028fab638b10ae3bbee71c5bdf6e7f7c7f4bfd1b5f236be3f7ef3fc7b99bb9b69af6fb6bea54ff96daf9f5efcd9201d7df3cd7df0baebf1b7ddeebef65e7b7d93e8d7d6c1f63f3eb93cff1a9bd3efa3efcf970b9febab066edfce5d77fbc06ffff71d3bf7f00c04b6db6b2e674188613a7e3e12aac39ecabf423d36775acab5d7e7c6d78f594bc666d7c3ef5f8e53f64773fb80e27c33141ee262051e19026045393bdf841f7dd7ec88d6348fd8a1fca9f3a511af73bda18ff303f38aef47e2a2c9895d68f49d48fbe5f31397dcaf699a5315e1bffd5f3333ece5bc5d8a789ceac1bc72f265c539f5ff57ba69fabc7f7965c7fabe3bf7a7e66ceebaa37befe6ef569afbfce73cf6ffcdbf1ebdfbbcfbfb5ff963c659cdb762fe7f7dff97eb2ca9ad9f33738ff13616f8cdde2bf7f00c06bd86c654d8435fbc331fd1832e174a8f783aa93f655653fdb46c54c7c165533c743d5ae9f8713c7eabcddb8b226f6dd7c1ed53cdd3a836d1bc7baeaab5f6259dac7545bb34ed9f6b15d75181deb38ac69fb753ec6e321db3e82ad6ccdb5f1b961fcd6fab734beb78ddfbc7efba9d7cde3dbfdb0dafc809a7e581dff6678fcc37bf3c3f3c4e468f687f9bf1f46bf59bdf5e85ad16e6c9bbfc6bf418e75fafe4ff6e14653c77035015a9b1c8e9cfb7616bf697efa6fc09bedaeaa1a2e66c7bfb3b6fcd963b7321eb78edff538b52edb5f7e433fd5cfd9e373fdb9fe5e70fddd6af6f80abffe7a4bcbc2daf2deb9afcf3417d6ccb5bbbabfb81e16fefd6b9dba0adef46ff3f3871700366dc3cfac39d5c76a7f9eec3761c1e8078ad5ca902690496d54c776db53f7df4c1b0a5dffa4d20406d17eb7a8e94bb6de61bfaf0ffdc2d468fcd0737390901caa6a18ce4438928ef1621cd6c43ef2ca9ad3e058223c19842dc94b2a6bd6fb972c8cefdaf8bdbd9884753fa0363fb83eef7680f91fd64f97dfea274ffd0df6e087ed6fc7fa1f7d95cf59fcb6b49f449e9a89e8dc8472511cfbc4b69393bda74c76630210ed366d4449ff3e4d089e3ec6f3e3db7ae9f2174d96bb5b14da89643ab6c1f9be6dfc06e739d36fdf5c37d1bf997ece1f9febcff5d7bd094fbcfe6e357f7c655f7fbd179fdfb0b28f796d454c9cdf41d0764358d36cfbe7aafe35bd7efbfb71702e5ab7fcfb27ac018097daf0336b864e110c3cf536a8b4cd5a40b014d60cc28fbcada84c193f3fe7867d9dcd54b6343f3475abc40f5bd56059f4276b3fb531a87c495fbf5a587353ff9285635e1cbf154dd033b9ffa70562af61f687f5f40370ff9be5e687edf4f5e587eaf841f9b2ac7f4d4e269b1fa4c71395242679d90ff031397b7afb69bd98e475ef72cb93bddbda8fb1e997c53317e6f6352ff6b3bccdd264a97966471abbc507443f77b23c16e3333a1fb74c969bfda7b11cf7a1dfbeb9152fceeb4c3f5d7ff3edbbfeba37e189d7dfad3eebf5d77bf1f96dc6e1a9d7dd48dc46958eefdc8ffc01c3379dbfd3687c00809f65c3953563e34a9382c39a3896d587255f1fef452ccb2a7b92abfe26cf0e6ba2fdd5fe256f14d67c24d33fccc7642126d997cf63bd27ffb03c375149e237d55793916cf2b22e7e6b3bdfa7abdf84475f9ed4fe584c8c6eb866324b13a5deda3aab6dbcd66479747cb78edfdc75719e6c37d740777e27c66ffaf85c7fd75c7f4fb9fe6e357d7ce55f7fbd979cdf26cc497d7a56c5cf588c457f7e6fa8ac1987334d5f5ee53a03009e62a39535d7614413908cd288fcb6a053f3dc94d1ad3b6f15d624835b929e711b547b5bd0d20f9f0b614d1316a563ed76170f5f8e2a9bebb066797c9696aff72fd96a58d3fc605d9d4bcf7f74cf6f78d264e56aa2924fc6daaf879380987cdcfe1bdceb7e8f26b369fff95f3079ce6f662ffd6b7fb3db54880c9c9adf804ffe46bd59b67e3c2f994c359626cb69d9dc2430267ae307800ed6bb71fce6265babfdee4caee7fa6bb8fed6c72ffa373fae4be3d3fab4d75fe779e737f525c63bfb7c729c57ceeff901c5a9bd08a7ceebdd14d6b4d54c7d9035f86b52b74aff263715abe31f1c00809b6db4b2a60d6baa2abb1d66a20a246e8d1a3cc0f6fcb3536cdf7d9ebd2e3f934c2fef6ff389a0a1ffacd9a6ffa126bd2e81436aa3bf0d29f61d61c793c288f6993c7dbbbbfdbe7df64bb774f8a7bbb360a893f7319ee7736cde0fd79b1f9fd6f2f2a5fe2d8fef6de35786b91fe6e3f3fc07e5f69919f9e463d9e46f8e6332d14c62baf7e7f6d244e3eab365b3ed67e2b7b1fdb2a509cba43441ebfbd9fce9f3c93eb5fd9e9a0cce8debd8da7a73cb6f39fe6682343b9eed84acdf766a3274cbf8c53e2627b1cd79eec72d26a2d3fd70fdcd70fddd347eb3d75f637e7c7a9ff9fa0bcf3abf591ff3d7789c17cf6f77eb53bfeda042270b6b96cf5fdbbfa5e54bda3f1230fa051700f0249e595388084b4aac1c61d9da0ff33cc77c3831b63afeddc4e9e9e728faf09ced6ed74cd616aa019a5b17ba49dfdc2d40aebfb7e0fabbd567bffe3ee4f9edc29a5bce5ff4ff7961cda9f985981f5900e0653cb3e603cbab5faefff4369f41fc301c93e9a7fcd698d770f96dfa9b4c169b49d8cb26b23f83ebefbdb8fec2e7bdfe3ef0f9cd1f300c007c682a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d6cdeb1ae76fbfa70eade02f039096b00a0189badac39ec77f56e97bff67565b6fad318ff029c0ef5be3f3fd5b1fbf0790efba785419ffefa88b1dd1f6a573cf053096b00a0181baeac896a822afd6fef541faaa74e28f3edafad2ddf36e35f8c6355ef5f1294a4ed9f1ef67cfeebe358edea176660004f23ac0180626cf89935e3c960fcb27b7f993c1d0f7575feed7efc563f5b33af38c85ee76dd7968753da7f563db0af86bf658f895cf3799a9d1e0f69b21ceb7593cbe867bb4df779b6ec166dd5429af8f6ed76dbdf3a11eef73ff5ba7d52bfddf1cf9df27310c799dabc0c61da77958d75bf8f083fd2fbfdbe5b96fade1f4b738cfdf23466117034ebc46b7c8ebbf5cedbcd189c97dc689c630c8f13a73faeb7abed57c63f75eef35f1fd18fc5ea9a53f7bd9ab69d5f09e076c21a002886ca9aee5d3b31ca7f737faa4fd90469eab7e02ff9cdfd214de406f3af981ca609e1403399dea749dfb1ed4b5aa7ef5333218cf6bbf731a97f4af5434c029b09e8799338fee5e3795ddb1effd06e93daecdeb70141dfafa824a9ea43364b3fa5fe445f9aaf63ffcdd7318eddd8c4f2ae0f97c0e0d2fee91821c5e8b893e8c752d7a797471094f5bd73c84393c6f83cb7d6c77fbcdd67bc3ee21897c63e8e595803bc22610d001463e39535dd6fbd9b57fcd63e9b119df2dfdca7496ffafad5268333bfd96f2665dd2a8d6cf23d1693c1417f16d69d32f50c91ab3667f441c0d4ebf63e6c7bfc9b3e2c0c7654dc5c2f3ea5316903834b8092c6b1abcec8fb145f4ff5672a7879ce38ce5e035dffce9ab11e071fb78cff36ae8fc9aa2380b722ac018062a8ace9de0dc5b234a9cd26875793afe4d993c1687f3ca99df28661c14bc29ad7b1edf15f1bebc96a96d847b7d1f9d8b2d027df66aad2247d7a0e762eda0068bee753db44fbcb637f3615d6dc34fe710d7cfeeb435803fc54c21a00288667d674ef066282992672e75b1abae7635c4f062f93e3f6d923c349e9d2f2f6b6889559da1b86051fef36a8cca719ff533ac6898a8c305effd43e5fa66f33dacffbd7dc02753e3f599890b5931fefd5ed33cd2d56d781463bd60bc1c4ccf2b6f26778bc719eae876bfa3caf8fff16ae8f38c64b1faea46d9a8a9eab9306f04cc21a0028c6662b6bdac96cffba9e30c564ab5fde3c38b5793f5caf9940f76dc4447adcc6e2f2f1c363d3e4304dcada556212d77d9ebdfa395bdeb7e6b37e52975e7393c7b166a27a8c097cd7fe44ffdfd236c6bf6f27edbbfb2437dcff75fff287035f1e709bf52dfadbf52582937e5fb15e046f87ac9fd17edeb5fe01b9c3d7657cd7968736e0e8964d8c7f6fba7a6469fc37727d7441d8a85b67ed3918064c002f22ac0180626cb8b266dbf2aa023e9b0813a603a2771161c5755ab379d3b7aaf5227cf33d0abc32610d001463c3cfacd9ae41d5c22dcfe6a01c51add19fdb7125c73b120e8eac54d500bc09610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001463839535a7fab0dfd5bbddbe3e9cba8fc2b14a9fa5cff787ee83b7733aec9b7d55c7ee038af21ee7efb01f5daf3fc9b1dad5fba91df7df2fe935b9fc74a8f7e97be91dba0cc01c610d0014639b953531918c496636db3e56fb34b9aceaa7ccbf0f4f5c3f17137e61cdfb2ae6fc4530f2412f961887c9b02689a0c7350ef081086b00a018db7c664d8435d5e132596fde1f8793f7e3a1ae9a0a9cb60aa73a64b3ce2eece92b0bfad770627a6a02a0f3f27db477a98e6826fb87ac9d7170703a66fb8f606958a51013e1e6f3d4e0f150b5eddc143ea476bb75dbf6d336c7a76cdff6bdefd7f8353771cf9d2b9bfa7ec72bedfb864d931bfbff89ce5f8cd755e831dbfe2b8c4f58ab9ce92c8535cd382f56d7f4556ea95ff32b01f05a843500508ced56d6c4ec3726b131594e93f2783bacb438d5a76c02395525b05499d1b699351093ebecd6ab36f0b84c529bca9e6cd27ba8aae12437b64f13f28166429db64b1d6bfa9ad6c9fb3cab092bdabe9c0ed146db8f7e1c7e8698a43701c3b9bf31719f1fcf819bfaff59ce5fecf7ba9f8bedbfd2f884c53026595e3e1cb36bc21a809f4a580300c5d870654dcc4c4f4d7541fcf63f0c26ef699d41e542fafaf6c97e9aa4766dce8949eea0bd2e386a3493edcbbe2fafd1fef26d9e22daeffb178141d791ab3ecd68838aa9fe2d5761e4a69ec172ebfe6feaff67397f4d5be36066a5fd571a9f10db2cf5716df964551000ef43580300c5d87665cdc865f2de550464bfeebf9a9c276b93fda569f8e264bfdb7ed52d93fd29b74ce6dfd8db86359fe8fcc5b18ec39ab5f65f697c427cbed4c7b5e5c21a800f44580300c5d87865cdd079f2de4c76d304b99b839ebae77b8c37c90387b8dd249f54c76d25f924f614b7a9646d2c4ff6e36d4c82affb3870cb647fcaea64feeddd761bd4a96e9ebf32ae4859ebffa73a7f11ac5c874a8bedbfd2f884d866a98fcbcbbb50687671ea5b9cdfa91d03f0fa843500508ced55d6c444b5bbf5a379c86d4c24079fb513e398849e6f11a90ef5b1793f9c789e62b2dd6f1741c360527aaa0f6942ddb7b18b60a05b216fbb99a7f693d6f4ba4c7cc70fb84d93e2b472bb3426c1dde7d9ebb6396fb66d6cd0ed3bf6dbf7eb67cc9d9ba0e4d806204d5faec62ff47dcdc38adbfaff99cedf7475ca74fbff7c95f199eedfe53cac2def74a1d16058331188c53673cb017865c21a0028c6362b6b787753b74131230297b924e7039b7b68712baaa65c03003f95b006008ab1cd67d6f0aedabf00d4bdfadb7558545cb8b5525503c03b10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d6004031365f5973acfe55ef0fbf77efae1dab6ff56ef75bf7fa5657c76ec1131df6fbfa70eadebca263b54ffdda75affd55ff8ed52e1ddf4b777cacab687f7fe8de5fbb3abed3a1dea7f5dfe09079864f777e8ed5f9ba7ff9f5fd76df9f6b66bf3fd78e6fedfcbdd6f98d765e698c810f40580300c55059b3e4f43d4d781e5f3ee18989d773539e25cd84acfa4913ee635dcd853533c71713d1171d7637516c26ac530dad2da7f556e7e703381df62f0f12deeafbf3152c1ddfdaf97b8df3fb2ae30b7c1cc21a0028c6762b6b8e8f6992df56cc4c55d644c5cda5a2a67bedbf774b9fe6b0cf274d7d954a5557e9f3ddaeaa8f69b2d8840ee9b35be7563111eb7ff37e7ee5614a4c40bbcfc793ad9880359f57dd7e9b6d47fb3e4538d32d6b2a76e6c39ae1f1655ef8dbfd66b2d9f4fd34d9c6daf269af33fe4d3bfdf8c4768776bcfbb1eecf4fbc8f65d7ed9fea43561515e3d42febcf4f3fa6795b21c63bcec9a16f375ea9ed6ef19537393f83eb23aea5713be9f8f6fdf175d74fd3cfb4decaf1358e87e1f577983a8076acc6d7776b34bee9eb38d62993e3337b7c375e3f6bfd5ff8fecc2d86256be7ef85df7f6171ff4079843500508ccd57d69c0edfd26464e636a8a6b2e67901cd454cee4621405311d2de76716a26f96979fa3a6e699a9c54cfe926634be6265bcd84392697dda2d8f765bd98a85e96a5b59be5d3b7414d1cdf592c7bc1ed2531095eda786df99c5718ffe6b6997e804e114c4c4cba9b09791ad7d4685a25add7fd37b9be2d29c6fc32b18ef333e8cbe8589bfd458070fe28fa30751edee6fc1caa514557f43ff5a7373cbeebeb67edf8629bcbb1c5e2e9c069e9fade1fd278f7efe35c3ce1fa5d3cbe9bae9f97f5bfb7bc7cedfc3dfffcf6d6fa071446580300c5d8fc336bde3cac692676e3895f16b2c424b29bc5c5c4686a4237eb8561cd605ff964f96ae29ccced6beaf832b3551dabdaca88fdecb344d6962f78e9f84f8dc5d4984d7d1662fb891dc564bf5f7df1fc2453cf5899ecff5b9c9fa6cdbe6a247f75a1c7d4f88c3e5b3bbe587f50d932d3cf6867728c23a8186cdf062a57a6c6e729c73777fdbcb8ffadb5e56be7eff9df7fb1ef744e76fbe97103ca24ac018062a8ac11d6b4f2c9f278e21ce6f635757c99e74e16cffdebf67b885b65b286d6962fca8fe539e33f3516536336f55988ed2776544c58d304210bd7ddd4f88c3e5b3ebeae22244b09e6ce4d7c3e39c6b9d329ad97cef3549f27c7e709c73779fdbc5effd796bf6558136e1a5fa01cc21a002886ca9af7ba0d6a71b2d73ba56db3dfe88f4d4d8a47e6265b57fb1a4f96dff936a8e8dfae7b4e48bfefbc99b5e58b5e61fc0761c969fe36a8b989ee2db741f5db9e8e11280cdb6ff6f7e6b741cd1f7f8c79dc6634e796dba0668faf393fd5f9d8627954a90ccf4d2b6f2717fbaff2b024cec5540333e3b3787c6bd7cf2bf4bfb7bc7cedfcad2d5fb7d63fa030c21a0028c6462b6b7ea449ccc40384778fe749db613fb1bcfad12d7d9ae16fb763021513e0ae1224267bdd44352646f1f5f5ba536141d746fe3a6f98ed63f06adbe9f713af6693ae0ff13a4fcc9af0a0df2e26a15d9bd984bb37fbdbfb6e52fbbca95e7b9b53b3ff34f16d6e4b19ec646df99cd719ff66593f3e1192c42d23e7496db68fec35ec5ed6fff48a711a2ebe6ebf59afdb471386340f7dced69919e8e79f9fa5e3ef02986679ec3f4dead34e2e6d4578d42fefae9ffcda5939befc1a8d50ead8bcef8387be5fe3d7a59f115c5583fe3d757ca68fef9ff9be63a399ebe765fd5f3fbec6daf97bd1f75f2b8ee3725d03c513d6004031365f59f35364bf7dff94668e6feea1aa9f514cc67fe6a4f6aa3267c987383f11ce5c077d1f42a1df9f6be7ef55ce6f043ebb4b8806144e580300c5d8fc336b7e96274dae0b74757caff05bfd8f2eaf6ebafc69e7b737a8aaba310079cff313a1c153fbfbb315f7fdf913aa6a804f48580300c550590300b005c21a002886ca1a00802d10d6004031365959a3b20700d81c610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c9535053bec1feb63f7f547f4d1fb07009b22ac018062a8ac7927c7ea5ff56ef75bbd3ffc5e1f0f8ff57e97dee7e1c6e9475deddb759af5aaeff5a95b549fbeb7eb77cbfa57d56d7c3a7c1bbccff7d55bda7fbffdbeea3e4f5f0ffab666a57fe196fd2ff57f717cce4ef561bf4bcbabfa78bd1000b645580300c55059f39e8e8ff56ef7adde573fea538409a7eebfc9a17a1c860f114e54dfbb37ada5ca95083cf27024f635083bc2c2fe9bc024daefde1fabb4de78fb15ab95352bfb5feaff2de3933e14d600404f580300c55059f39ea60294305399b2db0dc38fd7086be602989bb65f714b58f3acfddf383e004046580300c55059f39e66c38ab8c5675c25726db361cd8de3030064843500500c9535ef6921ac686f3bfad1bd9b76d87fab0fe7db86525bbbcbad411176f46d9f8e6d25cad5bede3cac99ef5f6365ff4bfdbf657cd24af56eb7ab77830301808d12d600403154d6bc8b1f7535711bcf3053f8bd0924cecbf7ddb35dbaa5e1146147df4e54b10c1646f549b6ec10cf87e91fd2bbbcff084a069fa5fdf4ef9f12d8ccf7ef86e35fec7f581f9f63d53eaf66101001c056096b00a0182a6bf8a44e75b5db9f2b7b0060f3843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0189bacac0100d81c610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008ab1e9ca9a63b5ab77fbaa3e76ef5fd5f1b1deed7e6b5efbc3efdd87efe074a8f7bb5deac3a9fb0000d824610d001463f3953511d8546f92d6b44e876fef1ad69c0e7b410d0020ac0180826cfe993511663c2bac39fda8abfdbf2ed533d5f77a2a12990f6b7eaf0fd5b76cfbb4defe7bb72cb9b1fd35c21a00a021ac0180626cbeb2e6b961cda17a1c862711ae5459d8d2990b6bdacf7f9cdb38c56d535958736bfb6b8435004043580300c5d87c654d7dac9efe4c97d3f7b4cda5eae5f27abc7afecd7c65cda872669fb63d2737b7b7bfe4748863db5fda0500b64b580300c55059f3acca9a085a6eab72b9e99935a7dfd37a7965cdededaf5159030034843500500ccfac79e66d50c778c6cce147f76ede5c5873d87f4bfbbd7c1eb741edab4b7bb7b6bf4658030034843500508ccd57d63cffaf41fdde042ae75b94f6df9ab0a58d457ed4d5ca6d4c87fd635d0db6cf6e836a2cb57f3b610d00d010d6004031365d591341cd6e5f3de93930c5391d9efe4c1e00e0f311d6004031365f590300b009c21a0028c6e69f590300b009c21a002886ca1a00802d10d6004031365959a3b20700d81c610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600efec5857bb7d7d38756f01781bc21a002886ca9af7743ad4fbddaede0d5e559aba360beb63b53f7fbeaf0ee993d777ac52db6f304b3eecc7c7b5afabc266e3ed31546f32eea743776ef787ee93703a8fdb5b9c939f2b0298fedcf7af740d1c5ff1b8f2ef9faafdae792b87fdfb8449c75fd27e1fbb3723a7bfa66be87fa463cf5fff91feff6366fd0fe5ef55fdbffeebaefedb9f8ff58fbfec9baffff1977680fbf7e3d7dffe987fafbc8e7ffff9b2df81ae7ff19a5cbe22dacdfb1eaf38d6d7f2d6edafba717c66c777e058fffa87e9f31bdb4f1ed7c2f5d388ff6f48ffdffaf433b701c21a002886ca9a0f2226eff97cb30951d207fd0f9bc798dc3ff187cfc3be0f7ede434cd6f3fd9fea43555af5c4a9aede2c048860a64a138a6c8c8ef17edf9cf74f218e273fe14db8f206d7c0783faf2db5ffd661d09c43842fddd753c661cee9d7d4d7ff78fd50e3d57d3bd4ff4813f46682dd4dbc7ffd7bb72c8909f860f21debbf4158b3e6aa1f4ff4d2edd7bc75fb6b5e6fffc7fad789f31bed4f86352bd74f887f433fcbff95be2a610d00144365cd0731086bbadf0a8ef53f7cb6d5176992764893d4beb2204dfacff3d5c98a9dd10fae3101ed3e9f9ee8b6e1ca799dd49f4bf7dacff7d570ffc39f8bc761cde8188f87ba3a57df44d5cd65cd9bda3fa5f6b3ea9de7551e0dab979a573e48691ca35fe771b80acb46db677d8c73d56f3378df57ea74e738b66f77d9863711ca9dcfc7e83cc6310e0b5356fabfb6bc390797e55763988f71ea5bfff5b98995fe8d03c8109f9d8f2fbb06c7eb35d6fad799da4f6bfefc34d68eaf13df6f53ed1ffe23adff3f52bffe7a6a4292fd7f4fefff7b1e9ea4fdff92f69f57bd744b5a4bcb53dfa2bd7e59fffa65d8c2759893b6ebc39a5fd3f8fdc7a5fdfd2ff9f8b5edef7fe9fa1deb8cdb7a4ce737eb436cff6a553bdd64bb9960a7c9f6dffeb0af7ffbd62e0a9710603c89efab30aaf479faef1faafadf69fb682b3efb77b756fdf743b3bca9be486dfffa97e128dd5a19f2d230627efb53fddb9f2f1544ff485f3f278c9a6a3f3e6bdb6cc725becec726afca69b6cdc6e25cddb2367e9dd9e35b1bdf6f715eb3f6ff3e1fd64c6fbf7cfd34baff8f9dd8bad35732a6eb7e7ea5cf47580300c55059f341e413cec18436975510c40f99cde4f5bc5a37d9efde855b2a6be6f67575db4733b1bdfce01bdb3593dfee8398140fdb49eb8f2b6b066da6096eb6faf8b7a06bed1faad1ed49d1bf341e4f313ef6abb1883061d4874b1f23ccaaea43f653fe29cecfe5245ebe6ec4f1671387683b9677e7b4df77eca3ed42844497caaade61146a2df57ff5f8468e713ce7c571be535fcec737bebed6fb371caf56f461fcd9e598970dfb7731bdfdcaf9593dbedef83a1e8a5b91f6118844d0f1d8bdff6bb499dafb25edffd76cff11e89cc396b5e521ed7bb14aa65d7e6ee131b599fad2eeffda31f69757e1c46d54b17df7590447d5afedd7d1f621f565dcd2e1af7323f15411ba7413ec66e29d052d491f383493f9f124be59bfddf6c75f62a29eb64d5ffffbcf31e9efd6493dff914dde23a018575e84d930a0b3b67ccddcf6ede7c7fa47ff3e0287570a6b427cde0434dd18c4d8e4eb5d6d97f6ff8f4105cb5b8e5f043397bec5bea27f53c73fdffef2f5d38aefdda5ff6f89ef79610d00f071a9ac7917d713c07c123b3ba9ee26f661ea191ae389f0b3c39aaba0a1954f8aaf26dd59df5a718cf18370ff8af5b3e5691f83ca9851f5c262fba38a8ecb6bfd78079a3e544dc87338a689e96818c62140f4e9d285b4ddd5ce4e4da0d57e7919c3e65c1d621fcddbc6f9f89af5a2aa23c2a74b6010cbaf8f2fbdfaf6c34aff9797a77da5e39b6b3b8e6f703a933886de2dfd9b0a51a63e9bbe4e97fb979bda7eedfcac1ddf599c9f745d8d563d3bfe92aedb8970e4f4d7b4ff73f0d14bfbefc297b5e58da86c1955d20c8c2a5fa2aaa73a873f69fcf2aa9d788d829fab5ba8fe1adb5fbe1e6c3bd3c65bb94cd2272a2e6272de7f1621471732c436e74021add3576e34d51de9eb8f14d6b4c795f72f0f2f6e37d7fe602c42843183f54e4d60d28745bffd715499f296e377d597243fa799b5f6d7cc55c56d9ab006008aa1b2e65d5c873583ca9298204e4c4cf375ca086be6f6dffdc633af7a18b5b7dc7eda7e66e2fe6c4de550dedf084eb2aa85241fcfa9d0a1e963dfe96e0c231488a06a9f2735c965fb188beebc66e73daa48865bacb8eaffc868793389491d381fc2e8fc5d1fdf70cc6fe9dfd5f5d71ddf70d8da0065f8d97aff2eda7e8d97ac9d9fb5e33b8b3e2f843573cf941907218dac72666d7923decf54c934ae2a712ee216ad0891ce5b4fb4157dcf3fc9fb145538d32dff1c8b93f4d5b0a6abbaf8fb65fbcbb2a1b530e0a561c14ddb7f3ba5f55ebfb26639acc9d6896583aa9a371ebf2784352f25ac9920ac018062a8ac791711046413f86642389c3c4630d34cf6fbf7877d5359d0bf8f1f42d76f83bab419a1c1d4a47332ac49aec2a089dba0063f045f4da6d3fa73614d33694f7de9563f75cfafc9db5b6b3f26dbe300e4daa90942262b6eb2897b631c76441f071db854658476dc2ecb9b5b6caeb6af9a6a8deb52fc686b2200c88eb1ad0c19ae11e3746e67adff8bcba36a253b9666d9c4f8679d8ef7f9f36e56fb97f63418afb42c1e9e3c1c87a4b916c693b4f5fe9d4d6e1f1f2f9f9fb5e3bb48fb5e0a1d672a4ddadba1b2fd475892053b6bcb435ee9523fc66d49b14dd6e7a68df18086347ebf64e397b6ad22bc1954f28cfb9eb6c9c29bb6f267d8f6e9d7747ef380298d6953f134396e2f3335c9ffad7feeca5a58d32cafceb7f1fce89ebff291c29aa864f9350f43ae0293dbccb57f1e8bde544092ae81a85a9aaaaa79dbf18bfdde761bd4cbc4f7eec4ffe7f4def0fafdd0843500500c9535ef2626a46982d88409114c8c7fa21c3e1c75fc70d5264c39a61f46d324b6592726a2a3269a096ab7fd7079fc10db7d3e78e593c5bc7f719bd2f50386e3d5fc9cdbffd01beb753f194798d47fd63c0c79dcb7ac8de6c1b4cdfb76bd5bda8ffee5e3b38bf02bad3cdc4d7f9cc34970b83cf0b7df3ebb2d260280eef3767fd9789d8381d1f88cce4fb4d1fe25a934c91e1c7cdaee3c36977ee5e3d5cf1dda80adfb7c747e17fb9fac2d8f31bdb49dc6aef93a3f4f793f636cdbf1cdcdf76fe2fa5aeb5ff3caf6bfd2bfd5edd7cecf0dc7d78bf5c68bfa870be7af617092daff25edbf5f3678b86f585b9efc9aaec3fe36a7c12d4ee9f87fe93eefb71f873611fe9c1f1c9c8e2dbeee1f7e9cdf3ed555e69c8f27abd489c0e6d2463abfa34aa0f61ce463fe3a6282dfdf7e93bfe2d9348fe9da8a070c37ef23dcf87bfb20db0804faed2254c8dbf8c79f0ff5bfd3fbcb43682f6de4afe6d9374d0fd696afcb1fe27bde3e0b632278faf5cff973799e761bd452fbf9b137014b3746f11a0727b16edeafde9b8fdfd40386d336e3c0e6b7b4ceb3439c2ec89dbb3cdbeb772234ffec843500500c9535859aba0d0ade4c84279ff9825b3abe080b67829ced6ac3ae4f7d4d50b40863e6bf6da3ea72a3ff860a6b00a0182a6b0a945761cc3d74155e24ab2e6a2a4f566f392bcc138f4f383ad28cdf75c51a7c082b55359b26ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ace14d1dab6ff56ef75bf7fa5657c76ec19ae3e379bbfde1f7ee4300e0d9843500500c9535053bec1feb5bb38f7771fa5eef531f4fdddbe7381dbe096b00e035086b00a0182a6bdec9b1fad7b96ae47878acf7bbf43e0f5f4e3fea6adfaed3ac577dbf841e1182c4faddb2fed557ad44c091bfcff7d55bda7fbffdbeea3e4f5f0ffa7683befdc16bffbd5b9a1cbf67c7f7adae0e3fba0543f361cdeff521abdad9a7aff779fb4be37776aa0ffb5d5a5ed5c797244a005002610d00144365cd7b6a6ef5f956efab1ff529c28253f7dfe4508d2a52227ca8b2302259aaac89906370cb51dad755e8b1b0ff26b089f6bbf7713bd37468b2a0a9ac19f6f9e2f7f3be42843b53b748cd8535ede7a9bffdfb38966c5fb78c5ffa505803c076086b00a0182a6bded3548012662a6776bb6138f31a61cd5c0073d3f66b96c29ab46c50f992be7e4a5853d7a3ca992c58ba75fc006053843500500c9535ef693600892062ae22e5a2dcb0261ddfee5b7d385edabbda5f673eacc99c7e4febe59535b78d1f006c8ab006008aa1b2e63d2d0420ed6d47d3cf71e91df6dfea43574d1261c57e77b9f5270f394ec7b6d2e46a5fef15d6349fa7bef67def9e5ff394b0268ebdcac39ee85f7519af5bc62fad54ef76bb7a37b56300f86c843500500c9535ef222a4bae6fd3196606bf3781c379f9fe5bfb6c996e6968028afc01c08385d96d42b12c2a4fd2d76df0b1bcff0848069fa5fdf4ef6f0d6c0ed92d4ae75716a6e4fb8887ff1e9bf77df834ddbffc36a6a82aaa06e3333afe1bc6ef58b5cfab196c06009f95b006008aa1b2868d3ad5d56e7fae4c02804f4f580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008ab1c9ca1a0080cd11d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0189baeac3956bb7ab7afea63f71e00e0d312d6004031365f5913814d25ad01003e3b610d001463f3cfac391df6c21a00e0f313d6004031365f5923ac01003641580300c5d87c654d7daceafd6e57ef0fa7ee0300804f48580300c55059a3b20600d802610d0014c3336b843500c016086b00a0189bafacf1d7a000804d10d6004031365d591341cd6e5fd5b21a00e0d313d6004031365f590300b009c21a0028c6e69f590300b009c21a002886ca1a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031de35ac3956bb7ab7afea63f71e00803722ac018062bc7b654d043695b40600e06d096b00a018ef1ed69c0e7b610d00c05b13d6004031843500005b20ac018062bcff03868f55bddfedeafde1d47d0000c0ab13d600403154d600006c81b006008a21ac0100d802610d0014e3ddc31a7f0d0a00e02710d6004031de35ac89a066b7af6a590d00c01b13d6004031deff01c30000bc3d610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500508c22c39a63f5af7ab7fb561f4edd07538e8f699ddf9ad7fef07bf7e1b5686b6979e9dee2f86e1aff97baf1fc7d04a7c33ef5737ffb789c0ef57eb74bdbb4af7db761db4e7c764b5ba7fab0bfb4b1db1fd227d36ee9df65dfbbfabffc1fc3fee5af7d35bf9f273956e736ab63f759e658f5fbacea66f168cc968ef72d1cf6e3f14be35f5dc66c5f55f53ef5e9b5c538f4d7c7a6c4f97e8d73dc5d379b1c439822ac018062145b5973d8df16169c0edf3eec64ffb07f6c27a2cff4d2ed5fe2d6f17fa98f7cfe5ee658571393c826a478e224b5d9662af178aa6662db87126dff06cda6e5579fbdc4607fd7fac0261fa377092f22581a1d74845b55d68fd3b10d1772877d1734f12c71ae5f7aadc57912d44046580300c57897b0e6b0ef2a330e8f69b2165fff9626a88fe7495b4cd0e3b3fe07f5b692635861d18405c7ef75d5b4d56e7f9cf8997c76b2bf5ab9f17bda6fdb8fb6fdd8d753028adfeb43b6fd3e7dbd4f6d344edf2fc79dbd061393fcd8d25855871fdd82e4a6eddff6f8d6c77f74fca9fde1bc6b6d796bf6fc9d7e64e313e3fb7d18702c8c5f7f7dedabe1f537b5ff79a3ca96c959655e7d1193fb43ea531fc474dbe7db35d52697f0e274886a8d6c1f93214edbcef584f486fe9d8ea93f597548f3751f304458330c524e37f7af0d7adacf2eedefc6e145d35efaacab7ee8d76bbb9af73fefd365023fb5ff7f8e8fbbf9bcaaabee3cec07e390d6cdaa63a2af8741075bd1de78f8da10e0d81defc8e878fa57de461e441de338629d7c7cb2caa3f1b9edaba09a6a9e6e9dabb18db1eac72196a57d4cb535e5a6f68f712d77cb9a6bbb5fda9dfb18f36679da2e1dcbd5f135d75ebf7dec6be2da8e719cbce66f27ac8111610d0014e3dd2a6b22b06926d8e79fa3d3e43d9b30c7847a30413aa689f520ac4993ec34c13f6fdf4cdeaf27dcb393fdcedcf20832aa63f679b4ff845b7fda767f9c271aa7084ffab0a6b35c19f37b3636d19f7f5d4d186fa9ac79abe35b1bffabca9b66f92550595bde9bebffa17a1cae1bdba7ebe96279fca2dd3c608af158ba4ee62d8725e770a09bc0c704bfd74c8a4701c7ecc472b60a6518605c9be95fd79faa1f803e60e8fbd3bf1fbd6eefdf65d2deeea29d9ce7dbb7c7df4deacfebf562fb084fda7e34dbcd8e41325ad68421712cd9f66dd8d40706d19ffde5f8d3511f9b90220b141ad18ff16721ad5fed9bb6cf61c3a85fab95355df815d748b3eda9fb6f662e6ce8c7ee72fd0ed76b6edb3a9fdbb96b74de5afb698dd1f757760d66e72202b536906bdbe8d73954557b9df522bc496338d45d0383159f666efc60b3843500508c770c6bae838198405fe6b66b61cdf2f6bdb9c97e6f7a791b1cbc4cb491557e64c1406f316c39e59521b1fd6b86352f3fbec5f18fca9f2aab04ea4420d26cb3b63c33d9ff99caa2dd2e1b8f95f13bf7b537babe6e1713cae9b0a4af9e6826f369e27b9e3cf7bac97a1c733b39ceab08866140fb9a98fc2f05188da9fe4d4fde9bfef62b46dfaefa93f761a57f4dbff2fd5ef7e33c3e83fd74b260e5bcdf41d8b2b4ffecf8b26df231cecfcdf0d5b7d1698e63142c4c6882a0d476ee96b0662d48980b1be2f3c139cddb8a3e8ffa72cbbe728bed87b48f41654cfafabc7ebeff18976ec1b9cdeeda188e7bbcaec72bcee3a01f4fd0545ea5ef8df1b71d6c9ab006008a21ac995c3e5de5f16ca7dfd37e9e525993f61f552e59e5cbd4b1bd34ac79c9f1bd6b58b31a36ad8fdfd5783e37ac69269e0b61c9e9541f8f87f3ed36837d7693d6b83d6a186cc458a4c96b9af0f613cd3c681888c9f0c424f76cb27feb01cee4feb2b656fb37ee577face70fda3eb4b75e8dfb326aafdbb699d0772b2eefff727cf9e7cd36cdf64fa83469f6bd1ed6b4fb1c9e87cf1bd6c4b1a6eb204b4106ebe7fb8feba05b7059276d3feedf8c978435616efc60b3843500508c0f7d1b543f793e1ddb4a8a7c323dbe0da7596722bc989eec5fcc2d1fff15a553739bce7575cb9c0833f2db8ce236a8714091071e11e6ec77ddad3d1166a463c98f6d6adfb3db67deeef896c7ff2acc79e5dba0dadb96ae039fc60de317ed0e8ef5b9614d4c4627c292b672a3ba1ce3555811dad0200f215a97b02144d54613560c376ec5fecf21c584c9fe75fb4dedb5db9dba5b80b27dc6fbd1fe9acfd2befe7943fffa75cffd6a8e3f0b8db2f7ed580d03a54bb0122ee3d44ebc57f63f6ebbf97c18d05cedb37f7e4f760cadd8d778fce2b3b46d5eb211fb1c6d9bff05a9b6ca6314fa44bfcf1d98361736c4e783dd8dda1afcf5aaf48d901ffb2d16db8f63dda763e9df76cfaf39afdf2c5f0a6be2e338ae7c0753ba71bebddb57e6c60f364b580300c578dfca9a631b1034b7aac4443fff99ba0b0fcecba232256e674913eaf681c3b17d1be25c6f9fb65dbc4d666d79183e0077d7f4f7f6c97c044fd560fbd1f1254d8033d9ff9864640fdfadbea7e38ff7c380637efbb73dbef5f10f6b0f105e5a7e5bff23b0392f4bfd8f30acefc2d2f8e5cb9ac9631ac7f3ba3705366d58d0842ca3573b318cc971dcf6d48508f19aba0d2ae9439de1d8441f2fdb46087068d68b7626aa4dfaf5ce17c75aff92f1035ebb0a97a557fe10d8d9fefddf2eeb9f5f83b6f7f57ff9dffbafdbe38e0975bbded40382bbb189497f7adf4ff667f7fffff8dfbaede29526ea7d5b55751993f6a4a7fd64fd4a5fc7f14d9ca2a63ffd7e5b6d88d03fb4b8dd7ee21c8eceffa5ede9f373d9c7dcf91b8d577ab587d28e4dbc06d7407fecb1ef18aff3b265b7b49fafd38c5bf37e5fffb77f667d8f8dbb6d63bb7e9bf638dbdbd8fa36daf11f3db0b90b7d6eebf5b4d8e7adc70d9b20ac0180627ca8dba0003e9c081cda84a15811a694165a4490f9e261ef424d810d74843500508c77096b9a5b68ba4a86f1735c003e9ac16d4585c82b9426ff34f647f60a5535c004610d0014e3dd2a6b0000f889843500500c610d00c016086b00a018ef12d6fce77ffe67f71500003f85b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b3a8f0f77f5ddc363f70e00e09311d600403154d634bed6f75feeeba9a826429cfbafdd1b008052096b00a0182a6b92a9aa9ac7af0ff5c3d7c72eac49ffedde03001449580300c55059b35455f39896dd7da9bfdc3dd4721a00a068c21a0028c6e62b6b969e5513cb22a879b8bbab3dce0600289ab006008ab1f1ca9ab6aa66ee91345f1f1eda655161f3e0c1350040c1843500508c4d57d62c55d500007c2ac21a0028c6862b6b1e17ab6a00003e15610d001463b39535aa6a00804d11d6004031365a59f3e8a1c100c0b6086b00a0189b7e660d00c066086b00a0181b7e660d00c086086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d0014637b95358f0ff5dd972ff59ffef4a7facb97fbfa6bf3e1d7fafefcd95dfdf0d87cb8eceb7db37ebcee1636f87aff657179abddff97bb87eefdfb8a3ee7c7f5f870773ed62ff7ed8801008511d6004031365a59f3b5bebf7ba88711ca63fd70773ffa6c5d0419eb61cc2dda3e3d45f4f7ada293aff7e9b8f2f623e4fa20611200f00cc21a0028c6669f591361c4a048e4ebfd3074f9fa50dfdf5daa6dee1fa66391d9b066adf2e631c299acfdafa3b06669ff597550fe1a1c4fd67ebceeeec7e1d4b2189f878734267da3e3b066b67f69bf4d95d07db3bca95e8ab1ed3e3b77f185fd03009e48580300c5d8ee336b227cc8d28d269c18a4058ff563f63e6e0d9aba0368adb2667a790415f7f5d7f3c78fcdfe87b741adef7fa9b2e6e17e542514e1c8fded9531fd789cc7e5aab266a17f4d98d46ef7f870df06365d5bfd3a2fed1f00f044c21a0028c6662b6bc2c3dd5c1091a4cf06951fe9eb570b6bc6553c61dc871bf63f1bd63461c965dbfe757946cfba7148f3f894fee5eba663ed9f731363d17cf90afd03009e48580300c5d86e654de8429373887016b7f2dcd50f97d29789755a6f13d6dcb6fff9ca9aa8dc19854f4f740e6b9266df0f4fe8df5a58f30afd03009e48580300c5d874654d5d3fd6f77777753c4877109d346143faac0f2bbae7b3bc5a58d38415edad41add16d5037eeff5c1994c4ed46775f2ec711edddcd3c67e7167958d3f637fb6b556bfd5b0d6b5ede3f00e089843500508c6d57d62473614b7cdedf9e130fbffd9ade5ffeac7754962cddc6b3b63c997ac070f310de36e458de7feb312a74bafd340fef1d1c461b00f56d7c8950eafeeb30949ad1ffe9ee66dffd0e2374c9aa61e6faf77ffeff2ec7de843469bbbe9d7e9b36b0797eff00806710d6004031365e590300b011c21a0028c6e62b6b00003641580300c550590300b005c21a002886ca1a00802d10d6004031365959a3b20700d81c610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d6bc92c787bbfaeee1b17b0700f0c1086b00a0182a6b56440873ffb57b33eb6b7dffe5be16d500001f96b006008aa1b266c6e3d787fae1eb6317d6a4ff76efa7a8aa01003e3c610d00144365cd82c7c7aff5fddd97facbdd433d93d324aa6a008002086b00a0182a6b1644c54c04350f7777f55ce18caa1a00a008c21a002886ca9a055f1f1eeae671355161f330f5e09ab6aa66f591360000ef4d580300c55059f302aa6a008062086b00a0182a6b9eed51550d00500e610d00144365cd33a9aa01008a22ac018062a8ac7996c7c5870e03007c38c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500508c4d56d600006c8eb006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c5505933e174f856ef76bfd5d5b1fb0000a074c21a002886ca9a1911d8086b00804f43580300c5d87065cdeff5b16a2b689ad7fe7b5dedbfd58753bbb4096b0edfebfdee5fddf2c77a90dd1c63fd6ed92ed6fdd12d681dab76d9fe90f673786cdb19b7b1e894dad8a73676ed6b7f48fbdb9ffbd73ad5877d2cafeae3e073008011610d001463b3953511d454c7dfbb77c9e9475ded8661cd6ef7780e4162fd085e2e7eaf4f594012e1cc5525cef131b591b6ab7eb4eba67de4db2c89a0a6ca1398d331f54f5803003c93b006008ab1d1ca9a1f75b5ffde7d3dedea36a8e3e330ac39e59535bfd5fbf4f55458330c786e754c6d1fbaaf01005e81b006008ab1d1ca9a36ac592a46590e6bba2a9cac3267f219372f0c6b14cb0000af46580300c5d8ec336be2b6a53c4839c56d505975cc625873fa5eeff78fe75b9a4eddf36b5e2fac89feedd2b697b8e614b741ed77a33e5575f33c9bab1d03008c086b00a0189b7d664d3c73e63078c0f0a552a67d5e4dfb7993831ce3d933dded4e5df892afb3afbed7c7e67dffcc9ba8bcb9dc22d5bf9e96a99c52fff2070cef53ff86b53611e8c4f36a54e00000ab843500508ccd56d694ef34f1c061008019c21a0028c6862b6b00003644580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c5d87c65cdb1fa56ef76bf75af6f7575ec16fc6487fdbe3e9cba379963f5af7a7ff8bd7bf7f31dab5ddaff44c77e82d3a1aaf7fb5d3a2ffb37ebc37b1edf8776acd2b8c7d87fbcf1391df64dbf9ef2bd7af5fd753aa46beb50bff591bdd9f5f55afd8f763ee03906de88b006008ab1edca9ad3f734e1797cf309dbaa9818bf414a7448c7f64ed9d3cba531194c20d3fbf70ad26e716c82a543b9e33d238291f79ac81ff6d5ec7846bf6ebe1e66bebf224879f76b6a7c9d8f2d2c7f8dfebfe7f905de81b006008ab1d9ca9aa858b954d474affdf76e69f8bd3e645537fbb42c9f17f5db47d5cbf1f058ef77e9fd33c391c37e62d2757cbcec7b5459733ab4fdda57dd7e63bd7cdf1142f59f67af274dec6282fbccca8abef261ea756b5bc76aa212e2ea004ecdd8ed766952ffd4f9e60b8e2f773a1eea6a5fd5872774a01f9f7d9526e25d1f76e360a269b75bb6dbd7d5a15f7aacab6efd7679da2e26f4e3364e69bdf3f6b1afe75561cc4ee617dabfe9f8e238faed63d9a13d1fcdbeba6a8f6659f6ca4f7feca33a64eb5db57f31f9fd1556ab537ec2f5b510c6349696bf4275cdecf9053e27610d00144365cd20a0b938ecbf8dc2821f6972f97d38316a02956f6952faa33ec582b44ef3df2789c9f7fc44338299a9dba09ac026029a6e7f713bd778bdd7a8ac79afc9dc64589326a6432f984c779e7d7ce9441f521f2f21cad3348146040ce7f337eec769702d0daa289a30a31d9fb855ac3ffe68a35fe75055c36b35c2956a3c7eebe6c667adfdb5e36b6e4bea17c658a6f338decf5a654d7edeafc7afb7f4fd15cb46d7d9c04fb8be5e12d6acf67fdd6aff80cf45580300c5d8f6336be6c29af8bcfad1bdb988406430af393ea689ce0b9f27d34cbc4713dfcc525833a81698e8cb7b8535ed44baad2a18bf6e6debb6b0e6e59e3559cdc292e78afd0ecfdf68529ef631a85c495f0fc29a7e2cd276fd2d3ee7369bfe0dc7bd7dcd871f7326c7e786f6178f2fef7f6f229478d26d5073a146d3d7f9efafd9aa9b57f2b4f1ebfab2b63cf392fe37cf844ad7f1738328a040c21a002886ca1a61cda2c9c9e64f70f53c8e18a7e7ce4a173cfbf85ea1b26678fef2b0a1ab98c866d183f5632c96c29ad8fe9582ade9f1596f7ff1f8f2fef7b614d6e4e6fadd5b59fed2feaff60ff85c843500500c95352fbc0deac5614d33315f9a94be24acb91cc3a979aeced31fa6fc6e93b934c9aeb2fde6b7f89ca5896c5371f082d9ea4b8fef39cfac098b6143136654e7dba0da7d6493f2d5b0a61daffd6a90744ad75e546c2c872253e3b3d6fee2f12583bfce347b1bd4659db60ae412baacb57fb1f4fdd58562539b859f717dcdf6bbb3b87ca5ff3758ed1ff0b9086b00a0189badac39ec271e303ca8a6597ac0f08f34497ae1037c33d7bf1d9f6e7fb76b2b6522a8e93f6bb63b4e3f8cf814014efe00e29be7643109bcdc7a7179cd4feadf42fb3c9676df5313caa8be893e3d7daaf9fac7d7fc35a81b1fe21b13e47e9fedf9bb3ece7c9d68f7d8bcdfd7ffed9f59df63e36edbd8aedfa6bd964e6951763bda3e4dcad38261fffab6c6c77dcbf8ccb77fcbf135fb48d77dbb6d6a37c66f748e4f115474dbe5cfbfb9adfd8bd9ea932ef4badea2f553aeaf38c6893e9f2d2d5fe9ff2d622c17f70f7c2ec21a0028c6b62b6b3e8a986c4ece26991755212fab2ae0e38830eacd428399efafe53f7dfdf1afafe5fedf28029fdd74c8057c42c21a0028c6b69f59f3810c6e0b810d888a97beeae4b97f5afc5657df5faf5095f2ae4aef3ff03e843500500c953500005b20ac018062a8ac0100d802610d0014639395352a7b0080cd11d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b28cee9b0af77bb5d5d1dbb0f5eddb1ae52fbb18fe6b53f749f3fdf61bfaf0fa7ee4de658edeafdd482d3a1dea7fd4e2c0180e711d600403154d650a4086cde2eace97481c9b19a0e5a0efbaabea90bc7aade3da3b311e4bcf93102b01dc21a002886ca9a77736a4280bc7aa39aa9be18eb2b4ba65e93551a23fdf6fbaaaaf7fdb6e3e0e118fde9dbddd7d5a15fda559da4f5dbe569bb63d74edec629ad77de3ef6f5d42a91e5f169c29ac3e119fd6f4510d2f42b35783c4cf43f390742717cf9b84688d3ef377bcd052b87d48fab6511e074dbcd9eb3d5ea9a53d376730e9e36b8006c91b006008aa1b2e69d441051e533ec083776b78535afa1096c229ce8f617fd198606a7fa94bd1d5479346145dbd7d3214287b69df698da550e55350c19e2f8aadb6f275a1b9f36707a66ff7b4d6092b64b0b9a75d33e2edb4410d21fc3a9ae264293db2a6ba2dff3ebc571cc8635cdb64bd784b006802710d600403154d6bc8b34094f93ffe76a838a4b4547fe9a9ff80f9dab467a13d52383ca98bc3aa4abf86844e0d12d38b7395379d2840acd9a6bd6c7e745fdef8db7c9c5b26c833c88eadd14d63463310aae32cb61cd4c550e003c87b006008aa1b2e65db461c4fc14fded2d871d5d454756ae31587f2dacb9216c59b63e3e2fea7f6f21ace96f931abc460d086b00288ab006008aa1b2e69d4418904fd24fdd335e7ed6c47c31ec68c298ea7c4bd0a97bfecb79fdd5b0263e8e1062ed604e75fb5797ae438fb5f17951ff7bb361cd5458d4de16953791ff85a7b81d6c3a9489e0683ed4590e6bbad0697671dcc6751d2201c024610d00144365cdbb4993ff2a7f80eeb012e42d4540d0efb799e7f793fef4ea83837c9d7838f0b179bfafffdb3f2340e8fa1c1b77dbc676fd366d76307e40f0be7d364cd37aaf6f6b2acc981f9f97f4bf5d9c1d43f66ada6a2a61facfa6d6bf8427a7087bfacf23c8e93e1fbbae8e99deffd53874a1d84cb3e9b0db6de69603c080b006008aa1b206de5a8449c3b4e626930f453e8baaa44b700400ab843500500c9535f013e4b74cdd64a5aa06009e4c580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6be0cd1deb6ab7af0fa7ee2d00bc07610d00144365cd3b3b56ffaaf787dfbb77d78ed5b77ab7fbad7b7dabab63b7e0890efbe9b0e058edeadd64a3a7b46c9ff69996a7d7be3ad4c7c3bed9ff29fd373e7b6e5fb845043cedd8b7af2a7df274710e9742a2b5e5af65eefa9b753ad4fbfd215d8533d696df2ada89eb5b92066c81b006008aa1b2e6233b7d4f13d2c7974f488fd54c20d3052f13cbda497cb6e7f4f5617f096862bb8f1ed61cf6cf0b383e92380f2f19e7b531f82963b470fd2d89207169b3b5e5b788eb5850036c86b006008aa1b2e6bd1c1febbe6266aab2262a6e2e1535dd6bffbd5bfa3479c8323639598d6a8395597013d61cdaaa84a6f2633ce93f1eea2aedb7ad0a897587ed35153d5d45c3f150b5ede46dac6c9f7a90dab854feecf6b17e57bdd1554b9c9775afc1219d8e59fb6de5503e0aabfdbb4584145dfbd3c3393a86788d565cac7c191d6753fd745e775c99d3bdceedaf2d4f16db6fafabe6f3d4c1533ad676ddebfe4e5f7f0be7af17fb7fe3ea1a610db029c21a002886ca9a77763a7c4b93c599dba09aca9ae705341731299f0f192627ab31f15e99c0c676cdad39dd6a31f11e6e9326f0d9dbc92a8826cc48dba505cdbaa7eebf8de5ed637f559e1c44f8320a0a96aa460e55359ce4c7f6d5a17bd359ecdfede60297f1d84f9d8bf96338a66348fde9def50e83502b1dd37e744c034bcb6f69bfebf33e5d0bd1cfb4f2f5314c5f7fb79cbf76dbe9b16bad2d5f3735e6009f96b006008aa1b2e69dbd7958d354478c8289cce464f5c6b0260f4faeb649fb1d54ae4c55572ced6771fba590e16236e868c6e4d2f6e5355aff8671b8c5523faab42c42a2c3712a08ba3eced3f1d49ccb18ffebfea757be7e1ce7d5a0671696dfd47ed284684b63d48cf5f8fabbedfc85a5aab0b0b67cc9a9a998da0faa85003e35610d00144365cd3b7befb066526cb332995e0e6bba8a876c167cb57e980d43d6b66f27fb6bc7b45495725358f02a61cde9a6be369525e3fe5e8529977e1fabb963cbacf57f61f94ded274bd54b8d85b0e696917dcbb026c475f5f2730c5008610d00144365cd3b7befdba0e65cddd6d4840997c06431ac69c29e3441efdf76cf9fb99a54cf8505376c1f151df9b6a7a67fc375f2bf40d456515c4283f6f8c61d1a590d6b4e696ca3e264617ce782af683befec545833de7f16dec4f10c6e234a629c86ab67e728b57f189dd3a5e5b7b49f3a98fabc167a4d5f7fb79cbf765bb74101bc1a610d00144365cdbbf8912699130f10de3d9e27b587fdc4f2ea47b7f46996aa0f62d9f8d6965e1b70f4b7bf54e74a9798e0f6b7c534ed1e2f0fd2bd4cf62febf47ff6fbf2f0d9986477ed66afbc8fcbdb8753132e9cb78f60e62a5c18f67fb878fc80db34694f1d685759ef5fab5f6f3a8c186f9ff7ff6a798cefb97fd3fb8fd7306c593abee418552dfdb611cc8c565859bed47e73dd9cb76d5f73a1c7f4f5b77efe52079aa06bbad5646df90d8435c0a6086b00a0182a6bb620c294ebd932fc1ccfbcfe9ae7e12c6cb6b6fc2611f82c044d009f8ab006008aa1b26623f25b82e0677bf2f5f713aa6a003647580300c550590300b005c21a002886ca1a00802d10d600403154d6bc03953d00c04f27ac018062a8ac0100d802610d00144365cd3b50590300fc74c21a002886ca1a00802d10d600403154d6bc03953500c04f27ac018062a8ac0136ee5857bb7d7d38756f013e2b610d00144365cd3bf8309535a743bddfedeadde055a5a96bb3b03e56fbf3e7fbea903e797dc72ab5fd06b3e4c37e7c5cfbba2a6c36de1e43f526e37e3a74e7767fe83e09a7f3b8bdc539f9b92280e9cf7dff4ad7c0f1158f2bfffea9daef9ab772d8bf4f9874fc25edf7b17b3372fa6bba86fe473af6fcf51fe9ff3f66d6ff50fe5ed5ffebbfeeeabffdf958fff8cbbef9fa1f7f6907b87f3f7efded8ff9f7ca4777aafffde7cb71fce3cf87fadfe9b87efdfbe5f8e26bde4977fd35e7a6bbeedec2bfff3cd1fe4bc39aaceffdeb6f7facea7f7feb96bf82e8f7dffeb0af7f7b469bb16d3eaef9f7737cbf7f04bffd71387e73fd9b3c7fb778d2f575ac7ffdc3e8ffdf16feffb111fff6a59f1d9ed133009e48650d8d98bce7f3cd2644491ff4ff181f6372ffc47f9c0ffb3ef8790f3159cff77faa0f5569d513a7ba7ab3102082992afdc0958dd131deef9bf3fe29c4f1e427bc0957dee01a18efe7b5a5f6df3a0c9a7388f0a5fb7aca38cc39fd9afafa1f05841adf0ef53fd204a599807413933cbc8809ca607212eb3f31acf92d26b0ddd73f5b0435bf7dcbfb7f6a2688fd31c6f17df4b0e63dc7ef67b9bace7e8657a8ac195f3f3fd2f7d06b8799bffdf179614d88ebff1ff9f5f38cefdfb776757d471f5f394cbafdfa3ad6bfe6e3b3f2ff8f217e46fc2c3f2a007c642a6bdec187a9acc90cc29aeeb72663fd3fce6df5459aa41dd224b5af2c4893fef37c75b26267f40f7b4c40bbcfa727ba6db8725e27f5e7d2bdf6f37d35dcfff0e7867158333ac6e3a1aeced53751757359f3a6f64fa9fdac7ae7799547c3eaa5e6950f521ac7e8d7791caec2b2d1f6591fe35cf5db0cdef7953add398eeddb5db6e14d8472e7f3313a8f718cc3c29495feaf2d6fcec165f9d518e6639cfad67f7d6e62a57fe30032c467e7e3cbaec1f17a8db5fe75a6f6d39a3f3f8db5e3ebc4f7db54fb87ff48ebff8fd4afbf9e9a9064ffdfd3fbff9e872769ffbfa4fde7552fdd92d6d2f2d4b768af5fd6bf7e19b6701de6a4edfab0e6d7347eff71697fff4b3e7e6dfbfb5fba7ec73ae3b61ed3f9cdfa10dbbf5ad54e371969262031d11cfd16ff32c9194d629258d6fca6f9cf55d346f31be8f1c4b0fb3c7f0d263bdfa2ddcbb2a87cf9d12d0a7975c0bfffd2ee67b08f25374cfa9ac9f65f2efdbc6afbef8773ff626c7efdcbb0bdd5fead6c1fd75e5ef91313fd5ffbc9f92de397b6ff2daf1c4adbe7fd5f1fbfd1f6cde4fefadfbc79f3fb5fbd3e329393e9eef8f36bb26ff3e640a49b6037fd18b5ffe3fff97fbfb97f739aeb6714d60caeb985f37febf8f4614dbf7ebbdef0fb644e1356c679effb14639a8fdd6cfffa2a93aa59feb73fa47ec5b1759f9dfbb8f2fd7b8b3eac99bc0616ce5fe3c6fd4fb61db2ed9be3ff7bbccfc6a7bb06e7feffb1d1fd0c31d17aa7afd44dffbf3ebf12002b54d6d0c8279c83096d2eab20887f849bc9eb79b56eb2dfbd0bb754d6ccedebeab68f66627bf9c120b66b26bfdd0731291eb693d61f57d60cda4c13dc6cf5f16f89d6da3f54a3db93a27f693c9e627cec57631161c2a80f973e469855d587eca7a0539c9fcb49bc7cdd88e3cf7eb08ab66379774efb7dc73eda2e444874a9acea1d46a1d652ff578f6fe418c7735e1ce73bf5e57c7ce3eb6bbd7fc3f16a451fc69f5d8e79d9b07f17d3dbaf9c9fd5e3eb8dafe3a1b815691f8148041d8fddfbbf469ba9bd5fd2fe7fcdf61f81ce396c595b1ed2be17ab64dae5e7161e539ba92fedfeaf1d637f79154edc4615db779f457054fdda7e1d6d1f525fc62d1dfe3a37124f1593b23c1c184e16c713c4b158de4cdeba094cf39bfcd1a468a932e4b734511d4cae62f294265c03dd2429269c3f9a7e76ff5d1393cba9095aa6e97f1cf36cff4f837d45f8310c4b92c5fe2d6f1ffbfbf5efd9fee2f84713c2c5f11b575d3493cfd18475a17fed2436bd6fdf3eb932646dffb75c1fa1edc7c4b9ba3a875119353f1e7326dbff9ffff3e6fecd89edfbef8f7ec23f9ccc2f9fff5bf6df8f7113b665ebde22da6bb6edfe7b15d62cf5aff9ff8376bb1f69dffdf749b4d5af73d3f7ef8afc56a8b9b19fbb3e6eddfff4f671ade6e3d906a7c3eb3fadd39fd389ff7f6cc5bf4d4bff76c6bf69c21a80975259f30edebfb2e67a02984f626727d5ddc43e4c3d43633c117e7658731534b4f249f1d5a43beb5b2b8e317e50e85fb17eb63ced63501933aa5e586c7f54d17179ad1fef40d387aa09790ec734311d0dc33804883e5dba90b6bbdad9a909b4da2f2f63d89cab43eca379db381f5fb35e547544f874090c62f9f5f1a557df7e58e9fff2f2b4af747c736dc7f10d4e6712c7d0bba57f5321cad467d3d7e972ff7253dbaf9d9fb5e33b8bf393aeabd1aa67c75fd2753b118e9cfe9af67f0e3e7a69ff5df8b2b6bc11952da34a9a8151e54b54f554e7f0278d5f5eb513af51f073750bd55f63fbcbd7836d67da782b97494e3b091f8be583f0622220999d5c77bfb5ce27bbf16a2685dd2a8d89366f72c376abfd4f7d1cfce63e7d3d583f2ced6771fbe9311d5b1cbfbc8aa3739e98f716c721fa90f72f9fbcaeb861ffb75c1f617a321d46e1cc0de774ca64fb5d58734bffe65c6ddf8455d9f8af5c3fb7ec3fc28cd8ae796e4af7d9adc621cd8feebf674bfdcbd74dfdea9f2373ee732cbfe5fb77457f7e27cf516772d913f63fb9fdd4b91e8fcf8de6aa3e01783d2a6b36e93aac195496c4047162629aaf53465833b7ffee374279d5c3a8bde5f6d3f63313f7676b2a87f2fe467092552d24f9784e850e4d1ffb4e776318a1400455fb3ca9492edbc75874e7353bef514532dc62c555ff4746cb9b1ff25207ce87303a7fd7c7371cf35bfa7775fd75c7371cb63640197eb6debf8bb65fe3256be767edf8cea2cf0b61cddc3365c6414823ab9c595bde88f73355328dab4a9c8bb8452b42a4f3d6136d45dff34ff23e4515ce74cb3fc7d2042a9c276ebdc9c9e6dce4edb6b0e2a913e8b31b265ecbfd4ffd8bdfaa67952f57eb87d9fead6ddf1effda04fc6dc39accb753eadf132a6b6ed8ff2dd74788f566fb78dee679553561b2fdb7086b92cb67ebd7cf2dfb6f9eb114b74a3de3d8afce45dcf2773ebf2bfdcbbf7f52bfaec29aeefa7da95bce69ecf3fabcdcbeffc9eda7ceb5b006e0c35259f30edebfb22682806c02df4c088793c708669ac97efffeb06f2a0bfaf7f18ff4fa6d5097362334989a744e8635c9551834711bd4e08784abc9745a7f2eac6926eda92fddeaa7eef935797b6bedc7647b1c805c3b3541c864c54d36716f8cc38ee8e3a00397aa8cd08edb6579738bcdd5f65553ad715daa1c6d4d0400d931b69521c335629cceedacf57f717954ad64c7d22c9b18ffacd3f13e7fdecd6affd29e06e39596c5c39387e39034d7c2f887d4f5fe9d4d6e1f1f2f9f9fb5e3bb48fb5e0a1d672a4ddadba1b2fd475892053b6bcb435ee9523fc66d49b14dd6e7a68df18086347ebf64e397b6ad22bc1954f28cfb9eb6c9c29bb6f267d8f6e9d7747ef380298d6953f134396e2f3335c9c9275783c95d989c6ce613c6b4fc0f975b17623219b7e12c7ae2043ad7b69f6ddb553ef47d5eec7f33714b7dedfbde3ddf63b07e98ebdf0ddbc76d27f9b63f9afe0dd7591abf5b6f839a1bbfd83ebf0debea992b2bd6f67fcbf5112627d3676d48d33c7b65769d6593edbf55654dff8c931bceff2dfb3f8f712ccbbef76e310ceeda6beb1cc6adf52f0f2ed2beafc39a1bbf7f573c3facb97dffd3dbc778a47d9fc767ea36a85bc4bf4d13ffa6f6def0ff9f01b64465cd66c584344d109b30218289f1bfb8c387a38e1faeda8429c7f48f759ac436ebc44474d4443341edb61f2e8f7fe4bbcf07af7cb298f72f6e53ba7ec070bc9a9f03fa1f0a62bdee27870893facf9a87218ffb96b5d13c98b679dfae774bfbd1bf7c7c76117ea59587bbe98f7338090e9707fef6db67b7c54400d07ddeee2f1baf7330301a9fd1f98936dabf249526d983834fdb9dc7e6d2af7cbcfa9fadda80adfb7c747e17fb9fac2d8f31bdb49dc6aef93a3f4f793f636cdbf1cdcdf76fe2fa5aeb5ff3caf6bfd2bfd5edd7cecf0dc7d78bf5c68bfa870be7af617092daff25edbf5f3678b86f585b9efc9aaec3fe36a7c12d4ee9f87fe93eefb71f873611fe9c1f1c9c8e2dbeee1f7e9cdf3ed555e69c8f27abd489c0e6d2463abfa34aa0f61ce463fe3a628233bec520bfcd205fde4cded284ae7f9f4f8c9a00a0bb5d217f3e476bfc80dd34a94a93c276b2df4e7cfb65fd6b30b9bd411b70f4eda7497f174edcd2ff7c9dfecf7e5f9e4bb2debfe5edc3f001bd71fc79a543581bbff9070caff72f26cabf0ef63f6e7fcdfcfed7c777ba7f93b7d1a46d9f7a7bcd5afbfd0386e33577fe1765ebe7afc1b5bf70fe6fb9fe22ccebd78fafc7cb974cae1fe398851173fdfbd7fff732764d48d3f52ddae9b769afa3a5efdf75f9f36a86df17e196ebe3e9ffff31d8be0b47dbcf23846ab7795260d3fda262ee8cb4ffff3cf14b21009e4465cd3b78ffca9a979bba0d0ade4c84279ff9825b3abe080b67829ced6ac3ae4f7d4dc0dfaf2b4e5eec15fe7437441833ffcf525415fb1911e035a8ace1c9f22a8cb987aec28b64d5454de5c9ea2d678579e2f10947479af1bbae5883cf20af0eb9aebc7821610d2fb5525503c0eb5159f30e3e43650d005018610d001443650d00c016086b00a0182a6bde81ca1a00e0a713d600403154d600006c81b006008aa1b2e61da8ac01007e3a610d001443650d00c016086b00a0182a6bde81ca1a00e0a713d600403154d600006c81b006008aa1b2e61da8acf9798ed5b77ab7fbad7b7dabab63b760cdf1f1bcddfef07bf72100144c580300c55059c3b31df68ff5add9c7bb387daff7a98fa7eeed739c0edf8435007c0ec21a002886ca9a77f0112a6b8ed5bfce5523c7c363bddfa5f779f872fa5157fb769d66bdeafb25f4881024d6ef96f5afbe6a25028efc7dbeafded2fefbedf755f779fa7ad0b71bf4ed0f5efbefddd2e4f83d3bbe6f7575f8d12d189a0f6b7eaf0f59d5ce3e7dbdcfdb5f1abfb3537dd8efd2f2aa3ebe245102805b086b00a0182a6bb6acb9d5e75bbdaf7ed4a7080b4edd7f934335aa4889f0a1cac28864a9b226428ec12d47695f57a1c7c2fe9bc026daefdec7ed4cd3a1c982a6b266d8e78bdfcffb0a11ee4cdd223517d6b49fa7fef6efe358b27ddd327ee943610d003f8fb006008aa1b2e61d7c84ca9ac6548012662a6776bb6138f31a61cd5c0073d3f66b96c29ab46c50f992be7e4a5853d7a3ca992c58ba75fc00e0a712d600403154d66cd96c001241c45c45ca45b9614d3abeddb7fa70bcb477b5bfce7c589339fd9ed6cb2b6b6e1b3f00f8a9843500500c9535efe0c357d624ed6d47d3cf71e91df6dfea43574d1261c57e77b9f5270f394ec7b6d2e46a5fef15d6349fa7bef67def9e5ff394b0268ebdcac39ee85f7519af5bc62fad54ef76bb7a37b56300786dc21a002886ca9a4d8aca92ebdb748699c1ef4de0705ebeffd63e5ba65b1a9a80227f00f06061769b502c8bca93f4751b7c2cef3f0292c167693ffdfb5b039b43768bd2f9958529f93ee2e1bfc7e67d1f3e4df72fbf8d29aa8aaac1f88c8eff86f13b56edf36a069b01c05b11d600403154d6bc830f5359c33b3ad5d56e7fae4c02803727ac018062a8ac0100d802610d00144365cd3b50590300fc74c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d600403154d6bca363b5ab77fbaa3e76ef0100de8cb006008aa1b2e69d456053496b0080b726ac018062a8ac7967a7c35e580300bc3d610d00144365cd3b13d600003f85b006008aa1b2e6bd1dab7abfdbd5fbc3a9fb0000e00d086b00a0182a6bde99ca1a00e0a710d600403154d6bc33610d00f053086b00a0182a6bde99bf060500fc14c21a002886ca9a771441cd6e5fd5b21a00e0cd096b00a0182a6b0000b640580300c550590300b005c21a002886ca1a00802d10d60040313659590300b039c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001463d39535c76a57eff6557decde03007c5ac21a0028c6e62b6b22b0a9a43500c06727ac0180626cfe9935a7c35e5803007c7ec21a0028c6e62b6b843500c026086b00a0189bafaca98f55bddfedeafde1d47d0000f009096b00a0182a6b54d600005b20ac01806278668db00600d802610d001463f39535fe1a1400b009c21a0028c6a62b6b22a8d9edab5a5603007c7ac21a0028c6e62b6b00003641580300c5d8fc336b00003641580300c550590300b005c21a002886ca1a00802d10d600403154d600006c81b006008aa1b20600600b843500500c953500005b20ac018062a8ac0100d802610d001443650d00c016086b00a0182a6b0000b640580300c55059f30287fd637decbefe883e7aff00809f48580300c5d86c65cdb1fa57bddbfd56ef0fbfd7c7c363bddfa5f779b871fa5157fb769d66bdea7b7dea16d5a7efedfaddb2fe55751b9f0edf06eff37df596f6df6fbfafbacfd3d783bead59e95fb865ff4bfd5f1c9fb3537dd8efd2f2aa3e5e2f04007e26610d001463db9535c7c77ab7fb56efab1ff529c28453f7dfe4503d0ec3870827aaefdd9bd652e54a041e793812fb1a841d6161ff4d6012ed77ef8f555a6fbcfd8ad5ca9a95fd2ff5ff96f1491f0a6b00e0a310d6004031b6fdcc9aa90025cc54a6ec76c3f0e335c29ab900e6a6ed57dc12d63c6bff378e0f00f081086b00a0189bafac990e2be2169f7195c8b5cd8635378e0f00f081086b00a0182a6b66c28af6b6a31fddbb6987fdb7fa70be6d28b5b5bbdc1a146147dff6e9d856a25cedebcdc39af9fe3556f6bfd4ff5bc627ad54ef76bb7a37381000e05d086b00a0181badacf9515713b7f10c3385df9b40e2bc7cdf3ddba55b1a4e1176f4ed4415cb6061549f64cb0ef17c98fe21bdcbfb8fa064f059da4ffffe2981cd7cff6e38fec5fe87f5f13956edf36a06011100f03e843500508c6d57d6f0864e75b5db9f2b7b00807726ac0180626cfb993500005b21ac018062a8ac0100d802610d001443650d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a0028c6bb8635c76a57eff6557decde0300f046843500508c77afac89c0a692d60000bc2d610d0014e3ddc39ad3612fac0100786bc21a002886b00600600b843500508cf77fc0f0b1aaf7bb5dbd3f9cba0f00007875c21a002886ca1a00802d10d6004031843500005b20ac018062bc7b58e3af410100fc04c21a0028c6bb863511d4ecf6552dab01007863c21a0028c6fb3f60180080b727ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006008a21ac0100d802610d001443580300b005c21a002886b00600600b843500500c610d00c016086b00a018c21a00802d10d6004031843500005b20ac018062086b0000b640580300c510d600006c81b006000a51d7ff7f4b105b3a75e9402c0000000049454e44ae426082, 'pwd', 500);

-- --------------------------------------------------------

--
-- Table structure for table `stock_requests`
--

CREATE TABLE `stock_requests` (
  `idno` int(11) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special_requirements` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(20) NOT NULL,
  `supplier_email` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_requests`
--

INSERT INTO `stock_requests` (`idno`, `product_id`, `product_name`, `quantity`, `special_requirements`, `supplier_id`, `supplier_name`, `supplier_email`, `Date`, `status`) VALUES
(1, '7', 'Cinnamon', 8, 'N/A', 12, 'Kasun', 'kasunice.s@gmail.com', '2018-05-24', 0),
(2, '10', 'Dried Flowers', 10, 'Deliver to Malabe Branch', 546, 'Nipuni', 'nipunigk@gmail.com', '2018-05-24', 0),
(3, '13', 'Bees wax', 8, 'N/A', 5, 'Lasith', 'lasithgganjula@gmail.com', '2018-05-30', 0),
(4, '11', 'Aloe Vera', 12, 'Deliver to Ampara Branch', 684, 'Sam', 'sam.rangala@gmail.com', '2018-05-31', 0),
(5, '14', 'Honey', 10, 'na', 12, 'Kasun', 'kasunice.s@gmail.com', '2018-05-10', 1),
(6, '13', 'BeesWax', 5, 'abc', 12, 'Kasun', 'kasunice.s@gmail.com', '2018-05-24', 1),
(7, '17', 'almondMilk', 6, 'Deliver to Malabe Branch', 12, 'Sam', 'sam.rangala@gmail.com', '2018-05-21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supply_details`
--

CREATE TABLE `supply_details` (
  `idno` int(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `supplier_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply_details`
--

INSERT INTO `supply_details` (`idno`, `date`, `supplier_id`, `name`, `address`, `contact`, `email`) VALUES
(2, '2018-04-27', '12', 'Kasun', 'Malabe', '0772345612', 'kasunice.s@gmail.com'),
(3, '2018-05-10', '684', 'Sam ', 'Delkanda', '0987654321', 'sam.rangala@gmail.com'),
(5, '2018-05-10', '533', 'Lasith', 'Ampara', '0776245361', 'lasithgganjula@gmail.com'),
(7, '2018-05-18', '1234', 'THD', 'Malabe', '0712342341', 'samindra.rangala@gmail.com'),
(8, '2018-05-18', '12', 'Sam', 'Malabe', '0772567546', 'sam.rangala@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supply_order`
--

CREATE TABLE `supply_order` (
  `idno` int(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply_order`
--

INSERT INTO `supply_order` (`idno`, `date`, `item_name`, `item_id`) VALUES
(2, '2018-05-10', 'pills', '6987'),
(3, '2018-05-18', 'ciagra', '12343'),
(4, '2018-05-18', 'pill', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appNo`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `distribution_client_location`
--
ALTER TABLE `distribution_client_location`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `distribution_delivery_time`
--
ALTER TABLE `distribution_delivery_time`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `eat0`
--
ALTER TABLE `eat0`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eat1`
--
ALTER TABLE `eat1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eat2`
--
ALTER TABLE `eat2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eat3`
--
ALTER TABLE `eat3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eat4`
--
ALTER TABLE `eat4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eat5`
--
ALTER TABLE `eat5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_att`
--
ALTER TABLE `employee_att`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `employee_sal`
--
ALTER TABLE `employee_sal`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `finance_cheq`
--
ALTER TABLE `finance_cheq`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `finance_trans`
--
ALTER TABLE `finance_trans`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `inventory_add`
--
ALTER TABLE `inventory_add`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `maintain_def`
--
ALTER TABLE `maintain_def`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `maintain_equip`
--
ALTER TABLE `maintain_equip`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `maintain_exp`
--
ALTER TABLE `maintain_exp`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `staff_information`
--
ALTER TABLE `staff_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_requests`
--
ALTER TABLE `stock_requests`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `supply_details`
--
ALTER TABLE `supply_details`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `supply_order`
--
ALTER TABLE `supply_order`
  ADD PRIMARY KEY (`idno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `EmpID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `distribution_client_location`
--
ALTER TABLE `distribution_client_location`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `distribution_delivery_time`
--
ALTER TABLE `distribution_delivery_time`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eat0`
--
ALTER TABLE `eat0`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eat1`
--
ALTER TABLE `eat1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eat2`
--
ALTER TABLE `eat2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `eat3`
--
ALTER TABLE `eat3`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eat4`
--
ALTER TABLE `eat4`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eat5`
--
ALTER TABLE `eat5`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_att`
--
ALTER TABLE `employee_att`
  MODIFY `idno` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `idno` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_sal`
--
ALTER TABLE `employee_sal`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `finance_cheq`
--
ALTER TABLE `finance_cheq`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `finance_trans`
--
ALTER TABLE `finance_trans`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `idno` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inventory_add`
--
ALTER TABLE `inventory_add`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `maintain_def`
--
ALTER TABLE `maintain_def`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `maintain_equip`
--
ALTER TABLE `maintain_equip`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maintain_exp`
--
ALTER TABLE `maintain_exp`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `staff_information`
--
ALTER TABLE `staff_information`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stock_requests`
--
ALTER TABLE `stock_requests`
  MODIFY `idno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `supply_details`
--
ALTER TABLE `supply_details`
  MODIFY `idno` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `supply_order`
--
ALTER TABLE `supply_order`
  MODIFY `idno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
