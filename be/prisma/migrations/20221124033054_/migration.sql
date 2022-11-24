/*
  Warnings:

  - You are about to drop the `sender` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `sender`;

-- CreateTable
CREATE TABLE `p_info` (
    `StaffCode` CHAR(8) NOT NULL,
    `RegistCommit` CHAR(1) NULL,
    `Name` VARCHAR(100) NULL,
    `Name_F` VARCHAR(100) NULL,
    `SearchName` VARCHAR(100) NULL,
    `SearchName_F` VARCHAR(100) NULL,
    `OldName` VARCHAR(100) NULL,
    `Birthday` DATETIME NOT NULL,
    `Age` TINYINT NOT NULL,
    `Sex` CHAR(1) NULL,
    `MarriageFlag` CHAR(1) NULL,
    `Post_U` VARCHAR(6) NULL,
    `Post_L` VARCHAR(8) NULL,
    `PrefectureCode` CHAR(3) NULL,
    `City` VARCHAR(100) NULL,
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

    PRIMARY KEY (`StaffCode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
