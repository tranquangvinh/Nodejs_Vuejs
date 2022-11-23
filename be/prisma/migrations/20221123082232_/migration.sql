/*
  Warnings:

  - The primary key for the `p_info` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `p_info` table. All the data in the column will be lost.
  - You are about to drop the `p_userinfo` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `Age` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Birthday` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `City` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Name` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Name_F` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Post_L` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Post_U` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PrefectureCode` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `RegistCommit` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SearchName` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SearchName_F` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Sex` to the `p_info` table without a default value. This is not possible if the table is not empty.
  - Added the required column `StaffCode` to the `p_info` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `p_info` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `Address` VARCHAR(100) NULL,
    ADD COLUMN `Address_F` VARCHAR(100) NULL,
    ADD COLUMN `Age` TINYINT NOT NULL,
    ADD COLUMN `AvatarImageDisplayFlag` CHAR(1) NULL,
    ADD COLUMN `Birthday` DATETIME NOT NULL,
    ADD COLUMN `City` VARCHAR(100) NOT NULL,
    ADD COLUMN `City_F` VARCHAR(100) NULL,
    ADD COLUMN `CountryTelephoneNumber` VARCHAR(50) NULL,
    ADD COLUMN `CurrentCompanyName` VARCHAR(100) NULL,
    ADD COLUMN `CurrentCompanyName_F` VARCHAR(100) NULL,
    ADD COLUMN `DependentFlag` CHAR(1) NULL,
    ADD COLUMN `DependentNumber` TINYINT NULL,
    ADD COLUMN `EmployInsuranceIn` VARCHAR(60) NULL,
    ADD COLUMN `EmployInsuranceLoss` VARCHAR(60) NULL,
    ADD COLUMN `FaxNumber` VARCHAR(50) NULL,
    ADD COLUMN `HomeTelephoneNumber` VARCHAR(50) NULL,
    ADD COLUMN `InfoSourceDay` DATETIME NULL,
    ADD COLUMN `InfoSourceOther` VARCHAR(100) NULL,
    ADD COLUMN `InfoSourceType` CHAR(3) NULL,
    ADD COLUMN `JmsImageId` INTEGER NULL,
    ADD COLUMN `LivingType` CHAR(1) NULL,
    ADD COLUMN `MailAddress` VARCHAR(100) NULL,
    ADD COLUMN `MarriageFlag` CHAR(1) NULL,
    ADD COLUMN `Name` VARCHAR(100) NOT NULL,
    ADD COLUMN `Name_F` VARCHAR(100) NOT NULL,
    ADD COLUMN `OldName` VARCHAR(100) NULL,
    ADD COLUMN `PortableMailAddress` VARCHAR(100) NULL,
    ADD COLUMN `PortableTelephoneNumber` VARCHAR(50) NULL,
    ADD COLUMN `Post_L` VARCHAR(8) NOT NULL,
    ADD COLUMN `Post_U` VARCHAR(6) NOT NULL,
    ADD COLUMN `PrefectureCode` CHAR(3) NOT NULL,
    ADD COLUMN `RegistCommit` CHAR(1) NOT NULL,
    ADD COLUMN `SearchName` VARCHAR(100) NOT NULL,
    ADD COLUMN `SearchName_F` VARCHAR(100) NOT NULL,
    ADD COLUMN `Sex` CHAR(1) NOT NULL,
    ADD COLUMN `SocietyInsuranceIn` VARCHAR(60) NULL,
    ADD COLUMN `SocietyInsuranceLoss` VARCHAR(60) NULL,
    ADD COLUMN `SpouseFlag` CHAR(1) NULL,
    ADD COLUMN `StaffCode` CHAR(8) NOT NULL,
    ADD COLUMN `Town` VARCHAR(100) NULL,
    ADD COLUMN `Town_F` VARCHAR(100) NULL,
    ADD COLUMN `URL` VARCHAR(200) NULL,
    ADD COLUMN `UrgencyAddress` VARCHAR(200) NULL,
    ADD COLUMN `UrgencyAddress_F` VARCHAR(200) NULL,
    ADD COLUMN `UrgencyPost_L` CHAR(4) NULL,
    ADD COLUMN `UrgencyPost_U` CHAR(3) NULL,
    ADD COLUMN `UrgencyTelephoneNumber` VARCHAR(50) NULL,
    ADD PRIMARY KEY (`StaffCode`);

-- DropTable
DROP TABLE `p_userinfo`;
