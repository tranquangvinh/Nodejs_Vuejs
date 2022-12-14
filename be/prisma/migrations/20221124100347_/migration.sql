-- CreateTable
CREATE TABLE `p_info` (
    `StaffCode` CHAR(8) NOT NULL,
    `RegistCommit` CHAR(1) NOT NULL,
    `Name` VARCHAR(100) NOT NULL,
    `Name_F` VARCHAR(100) NOT NULL,
    `SearchName` VARCHAR(100) NOT NULL,
    `SearchName_F` VARCHAR(100) NOT NULL,
    `OldName` VARCHAR(100) NULL,
    `Birthday` DATETIME NOT NULL,
    `Age` TINYINT NOT NULL,
    `Sex` CHAR(1) NOT NULL,
    `MarriageFlag` CHAR(1) NULL,
    `Post_U` VARCHAR(6) NOT NULL,
    `Post_L` VARCHAR(8) NOT NULL,
    `PrefectureCode` CHAR(1) NOT NULL,
    `City` CHAR(1) NOT NULL,
    `City_F` VARCHAR(100) NULL,
    `Town` VARCHAR(100) NULL,
    `Town_F` VARCHAR(100) NULL,
    `Address` VARCHAR(100) NULL,
    `Address_F` VARCHAR(100) NULL,
    `LivingType` CHAR(1) NULL,
    `HomeTelephoneNumber` VARCHAR(50) NULL,
    `CountryTelephoneNumber` VARCHAR(50) NULL,
    `PortableTelephoneNumber` VARCHAR(50) NULL,
    `FaxNumber` VARCHAR(50) NULL,
    `MailAddress` VARCHAR(100) NULL,
    `PortableMailAddress` VARCHAR(100) NULL,
    `UrgencyPost_U` CHAR(3) NULL,
    `UrgencyPost_L` CHAR(4) NULL,
    `UrgencyAddress` VARCHAR(200) NULL,
    `UrgencyAddress_F` VARCHAR(200) NULL,
    `UrgencyTelephoneNumber` VARCHAR(50) NULL,
    `URL` VARCHAR(200) NULL,
    `InfoSourceType` CHAR(3) NULL,
    `InfoSourceDay` DATETIME NULL,
    `InfoSourceOther` VARCHAR(100) NULL,
    `DependentFlag` CHAR(1) NULL,
    `DependentNumber` TINYINT NULL,
    `SpouseFlag` CHAR(1) NULL,
    `CurrentCompanyName` VARCHAR(100) NULL,
    `CurrentCompanyName_F` VARCHAR(100) NULL,
    `SocietyInsuranceIn` VARCHAR(60) NULL,
    `SocietyInsuranceLoss` VARCHAR(60) NULL,
    `EmployInsuranceIn` VARCHAR(60) NULL,
    `EmployInsuranceLoss` VARCHAR(60) NULL,
    `AvatarImageDisplayFlag` CHAR(1) NULL,
    `JmsImageId` INTEGER NULL,
    `RegistDay` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `UpdateDay` DATETIME(3) NOT NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `HopeJobTypeCode` CHAR(1) NOT NULL,
    `IndustryTypeCode` CHAR(1) NOT NULL,
    `CareerJobTypeCode` CHAR(1) NOT NULL,
    `LicenseFlag` CHAR(1) NOT NULL,
    `OsFlag` CHAR(1) NOT NULL,
    `ApplicationFlag` CHAR(1) NOT NULL,
    `DevelopmentLanguageFlag` CHAR(1) NOT NULL,
    `DatabaseFlag` CHAR(1) NOT NULL,
    `OverWorkFlag` CHAR(1) NOT NULL,
    `TransferFlag` CHAR(1) NOT NULL,
    `YearlyIncomeMin` CHAR(1) NOT NULL,
    `YearlyIncomeMax` CHAR(1) NOT NULL,
    `MonthlyIncomeMin` CHAR(1) NOT NULL,
    `MonthlyIncomeMax` CHAR(1) NOT NULL,
    `DailyIncomeMin` CHAR(1) NOT NULL,
    `DailyIncomeMax` CHAR(1) NOT NULL,
    `HourlyIncomeMin` CHAR(1) NOT NULL,
    `HourlyIncomeMax` CHAR(1) NOT NULL,
    `WeeklyHolidayType` CHAR(1) NOT NULL,
    `SocietyInsuranceFlag` CHAR(1) NOT NULL,
    `SanatoriumFlag` CHAR(1) NOT NULL,
    `EnterprisePensionFlag` CHAR(1) NOT NULL,
    `WealthShapeFlag` CHAR(1) NOT NULL,
    `StockOptionFlag` CHAR(1) NOT NULL,
    `ResidencePayFlag` CHAR(1) NOT NULL,
    `FamilyPayFlag` CHAR(1) NOT NULL,
    `EmployeeDormitoryFlag` CHAR(1) NOT NULL,
    `CompanyHouseFlag` CHAR(1) NOT NULL,
    `NewEmployeeTrainingFlag` CHAR(1) NOT NULL,
    `OverseasTrainingFlag` CHAR(1) NOT NULL,
    `OtherTrainingFlag` CHAR(1) NOT NULL,
    `FlexTimeFlag` CHAR(1) NOT NULL,
    `AgeMin` CHAR(1) NOT NULL,
    `AgeMax` CHAR(1) NOT NULL,
    `ManagementBoardFlag` CHAR(1) NOT NULL,
    `ManagerFlag` CHAR(1) NOT NULL,
    `NoSmokingFlag` CHAR(1) NOT NULL,
    `HandicappedFlag` CHAR(1) NOT NULL,
    `MaternityFlag` CHAR(1) NOT NULL,
    `MealsAssistanceFlag` CHAR(1) NOT NULL,
    `TrainingCostFlag` CHAR(1) NOT NULL,
    `LicenseAcquisitionSupportFlag` CHAR(1) NOT NULL,
    `SeverancePayFlag` CHAR(1) NOT NULL,
    `UITurnFlag` CHAR(1) NOT NULL,
    `InexperiencedPersonFlag` CHAR(1) NOT NULL,
    `NearStationFlag` CHAR(1) NOT NULL,
    `ShortOvertimeFlag` CHAR(1) NOT NULL,
    `DressFreeFlag` CHAR(1) NOT NULL,
    `ShortTimeFlag` CHAR(1) NOT NULL,
    `EmploymentForeignersFlag` CHAR(1) NOT NULL,
    `SeniorWorkingFlag` CHAR(1) NOT NULL,
    `UrgentRecruitmentFlag` CHAR(1) NOT NULL,
    `NewJobsFlag` CHAR(1) NOT NULL,
    `CarCommutingFlag` CHAR(1) NOT NULL,
    `NoTransferFlag` CHAR(1) NOT NULL,
    `FullTimeEmployeeFlag` CHAR(1) NOT NULL,
    `SalaryIncreaseFlag` CHAR(1) NOT NULL,
    `BonusFlag` CHAR(1) NOT NULL,
    `TeleworkFlag` CHAR(1) NOT NULL,
    `EntrepreneurCostFlag` CHAR(1) NOT NULL,
    `MeritocracyFlag` CHAR(1) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `P_UserInfo` (
    `StaffCode` CHAR(8) NOT NULL,
    `RegistCommit` CHAR(1) NOT NULL,
    `JmsSuspensionFlag` CHAR(1) NOT NULL,
    `Password` VARCHAR(20) NOT NULL,
    `AccessCount` INTEGER NOT NULL,
    `OperateClassComCode` CHAR(3) NULL,
    `OperateClassWebCode` CHAR(3) NULL,
    `OperateClassRemark` VARCHAR(60) NULL,
    `BranchCode` CHAR(2) NULL,
    `EmployeeCode` CHAR(8) NULL,
    `TempFlag` CHAR(1) NOT NULL,
    `IntroductionFlag` CHAR(1) NOT NULL,
    `TempToPermFlag` CHAR(1) NOT NULL,
    `NewJohoMailFlag` CHAR(1) NOT NULL,
    `MailMagazineFlag` CHAR(1) NOT NULL,
    `SuspensionFlag` CHAR(1) NOT NULL,
    `ErasureFlag` CHAR(1) NOT NULL,
    `OfferFlag` CHAR(1) NOT NULL,
    `HopeUseFlag` CHAR(1) NOT NULL,
    `NaviUseFlag` CHAR(1) NOT NULL,
    `HomeContactFlag` CHAR(1) NOT NULL,
    `PortableContactFlag` CHAR(1) NOT NULL,
    `FaxContactFlag` CHAR(1) NOT NULL,
    `MailContactFlag` CHAR(1) NOT NULL,
    `ReferRejectFlag` CHAR(1) NOT NULL,
    `PersonDangerFlag` CHAR(1) NOT NULL,
    `PriorityJobTypeFlag` CHAR(1) NOT NULL,
    `PriorityIndustryTypeFlag` CHAR(1) NOT NULL,
    `PriorityWorkingTypeFlag` CHAR(1) NOT NULL,
    `PriorityWorkingPlaceFlag` CHAR(1) NOT NULL,
    `PriorityStationFlag` CHAR(1) NOT NULL,
    `PriorityWorkingTimeFlag` CHAR(1) NOT NULL,
    `PrioritySalaryFlag` CHAR(1) NOT NULL,
    `HopeCommuteTime` TINYINT NULL,
    `NoticeMailFlag` CHAR(1) NULL,
    `LastAccessDay` DATETIME NOT NULL,
    `LisReserveDay` DATETIME NULL,
    `LisRegistDay` DATETIME NULL,
    `RegistDay` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `UpdateDay` DATETIME(3) NOT NULL,

    PRIMARY KEY (`StaffCode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CompanyInfo` (
    `tempCode` INTEGER NOT NULL,
    `CompanyCode` CHAR(8) NOT NULL,
    `CompanyCodeLis` VARCHAR(8) NULL,
    `Password` VARCHAR(20) NULL,
    `RegistCommit` VARCHAR(2) NULL,
    `CompanyName_K` VARCHAR(100) NULL,
    `CompanyName_F` VARCHAR(80) NULL,
    `Representative` VARCHAR(60) NULL,
    `EstablishYear` VARCHAR(8) NULL,
    `EstablishMonth` VARCHAR(2) NULL,
    `IndustryType` VARCHAR(3) NULL,
    `IndustryTypeName` VARCHAR(60) NULL,
    `CapitalAmount` VARCHAR(40) NULL,
    `ForeinCapital` VARCHAR(12) NULL,
    `ListClass` VARCHAR(40) NULL,
    `AllEmployeeNum` VARCHAR(12) NULL,
    `ManEmployeeNum` VARCHAR(12) NULL,
    `WomanEmployeeNum` VARCHAR(12) NULL,
    `HomepageAddress` VARCHAR(100) NULL,
    `Post_U` VARCHAR(6) NULL,
    `Post_L` VARCHAR(8) NULL,
    `Prefecture` VARCHAR(20) NULL,
    `City_K` VARCHAR(80) NULL,
    `City_F` VARCHAR(100) NULL,
    `Town` VARCHAR(80) NULL,
    `Address` VARCHAR(80) NULL,
    `TelephoneNumber` VARCHAR(40) NULL,
    `RailLineName1` VARCHAR(10) NULL,
    `RailLineNameMoji1` VARCHAR(120) NULL,
    `StationCode1` VARCHAR(7) NULL,
    `StationName1` VARCHAR(40) NULL,
    `WorkOrBus1` VARCHAR(6) NULL,
    `WorkBusTime1` VARCHAR(6) NULL,
    `RailLineName2` VARCHAR(10) NULL,
    `RailLineNameMoji2` VARCHAR(120) NULL,
    `StationCode2` VARCHAR(7) NULL,
    `StationName2` VARCHAR(40) NULL,
    `WorkOrBus2` VARCHAR(6) NULL,
    `WorkBusTime2` VARCHAR(6) NULL,
    `TravelCost` VARCHAR(4) NULL,
    `TrafficCostType` VARCHAR(8) NULL,
    `MonthTrafficCost` VARCHAR(20) NULL,
    `SocietyInsurance` VARCHAR(4) NULL,
    `Sanatorium` VARCHAR(4) NULL,
    `EnterprisePension` VARCHAR(4) NULL,
    `WealthShape` VARCHAR(4) NULL,
    `StockOption` VARCHAR(4) NULL,
    `RetirementPay` VARCHAR(4) NULL,
    `ResidencePay` VARCHAR(4) NULL,
    `FamilyPay` VARCHAR(4) NULL,
    `EmployeeDormitory` VARCHAR(4) NULL,
    `CompanyHouse` VARCHAR(4) NULL,
    `NewEmployeeTraining` VARCHAR(4) NULL,
    `OverseasTraining` VARCHAR(4) NULL,
    `OtherTraning` VARCHAR(4) NULL,
    `WelfareProgramRemark` VARCHAR(200) NULL,
    `Transfer` VARCHAR(4) NULL,
    `BusinessContents` VARCHAR(1000) NULL,
    `CompanyPR` VARCHAR(1000) NULL,
    `BusinessOther` VARCHAR(1000) NULL,
    `IsSend` VARCHAR(10) NULL,
    `PublishFlg` INTEGER NULL,
    `ContactMailAddress` VARCHAR(200) NULL,
    `ContactPersonName` VARCHAR(40) NULL,
    `ContactSectionName` VARCHAR(60) NULL,
    `DemandPrefecture` VARCHAR(20) NULL,
    `DemandCity_K` VARCHAR(80) NULL,
    `DemandCity_F` VARCHAR(100) NULL,
    `DemandTown` VARCHAR(80) NULL,
    `DemandAddress` VARCHAR(80) NULL,
    `DemandPersonName` VARCHAR(40) NULL,
    `DemandSectionName` VARCHAR(60) NULL,
    `LisPersonCode` VARCHAR(8) NULL,
    `LisPersonName` VARCHAR(40) NULL,
    `LisMailAddress` VARCHAR(50) NULL,
    `GroupCode` VARCHAR(8) NULL,
    `BranchCode` VARCHAR(4) NULL,
    `NewJobMail` INTEGER NULL,
    `Tanto1Yakusyoku` VARCHAR(60) NULL,
    `Tanto2Name` VARCHAR(40) NULL,
    `Tanto2Yakusyoku` VARCHAR(60) NULL,
    `Mailaddr` VARCHAR(50) NULL,
    `KeiyakuYmd` VARCHAR(8) NULL,
    `CompanyKbn` INTEGER NULL,
    `TempPermitFlag` CHAR(1) NOT NULL,
    `IntroPermitFlag` CHAR(1) NOT NULL,
    `Simebi` INTEGER NULL,
    `MoshikomiKbn` INTEGER NULL,
    `MoshikomiKbnT` INTEGER NULL,
    `NewPersonMail` INTEGER NULL,
    `KadoKbn` INTEGER NULL,
    `KyujinRiyoKbn` TINYINT NULL,
    `CompanySyudan1_1` VARCHAR(20) NULL,
    `CompanySyudan1_2` VARCHAR(20) NULL,
    `CompanySyudan2_1` VARCHAR(20) NULL,
    `CompanySyudan2_2` VARCHAR(20) NULL,
    `KyujinYuryoFlg` TINYINT NULL,
    `KeisaiRiyoFlg` VARCHAR(20) NULL,
    `LisRegistDay` DATE NULL,
    `SalesDB_CPassFlg` TINYINT NULL,
    `IntBaseContractDay` DATE NOT NULL,
    `SalesConstitutionRatio` VARCHAR(200) NULL,
    `MainClient` VARCHAR(400) NULL,
    `Competitor` VARCHAR(200) NULL,
    `AccountingPeriod1` VARCHAR(40) NULL,
    `SalesAmount1` VARCHAR(40) NULL,
    `OrdinaryProfit1` VARCHAR(40) NULL,
    `AccountingPeriod2` VARCHAR(40) NULL,
    `SalesAmount2` VARCHAR(40) NULL,
    `OrdinaryProfit2` VARCHAR(40) NULL,
    `AccountingPeriod3` VARCHAR(40) NULL,
    `SalesAmount3` VARCHAR(40) NULL,
    `OrdinaryProfit3` VARCHAR(40) NULL,
    `ImportantNotice` VARCHAR(200) NULL,
    `EmployeeAverageAge` INTEGER NULL,
    `MainStockHolder` VARCHAR(400) NULL,
    `Other` VARCHAR(500) NULL,
    `Atmosphere` VARCHAR(500) NULL,
    `RegistDay` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `UpdateDay` DATETIME(3) NOT NULL,

    PRIMARY KEY (`CompanyCode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
