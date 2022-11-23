/*
  Warnings:

  - The primary key for the `p_userinfo` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `RegistDay` on the `p_userinfo` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `p_userinfo` table. All the data in the column will be lost.
  - Added the required column `ids` to the `P_UserInfo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `p_userinfo` DROP PRIMARY KEY,
    DROP COLUMN `RegistDay`,
    DROP COLUMN `id`,
    ADD COLUMN `RegistDays` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `ids` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`ids`);
