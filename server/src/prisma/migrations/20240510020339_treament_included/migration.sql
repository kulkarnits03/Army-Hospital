/*
  Warnings:

  - You are about to drop the column `description` on the `Treatment` table. All the data in the column will be lost.
  - Added the required column `knownallergies` to the `Treatment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `miscellaneous` to the `Treatment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pasthospitalisation` to the `Treatment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `pastmedication` to the `Treatment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `presentmedication` to the `Treatment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `significantpasthistory` to the `Treatment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Treatment" DROP COLUMN "description",
ADD COLUMN     "knownallergies" TEXT NOT NULL,
ADD COLUMN     "miscellaneous" TEXT NOT NULL,
ADD COLUMN     "pasthospitalisation" TEXT NOT NULL,
ADD COLUMN     "pastmedication" TEXT NOT NULL,
ADD COLUMN     "presentmedication" TEXT NOT NULL,
ADD COLUMN     "significantpasthistory" TEXT NOT NULL;
