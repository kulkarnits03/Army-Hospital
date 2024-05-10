/*
  Warnings:

  - You are about to drop the column `doctorId` on the `Treatment` table. All the data in the column will be lost.
  - You are about to drop the `Doctor` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Doctor" DROP CONSTRAINT "Doctor_departmentId_fkey";

-- DropForeignKey
ALTER TABLE "Doctor" DROP CONSTRAINT "Doctor_userId_fkey";

-- DropForeignKey
ALTER TABLE "Treatment" DROP CONSTRAINT "Treatment_doctorId_fkey";

-- AlterTable
ALTER TABLE "Treatment" DROP COLUMN "doctorId";

-- DropTable
DROP TABLE "Doctor";
