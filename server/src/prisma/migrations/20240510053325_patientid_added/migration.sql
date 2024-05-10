-- AlterTable
ALTER TABLE "MedicalRecord" ALTER COLUMN "patientId" SET DEFAULT '27c57ab0-8e7c-4368-b22d-c2db71b316f9';

-- AlterTable
ALTER TABLE "Treatment" ADD COLUMN     "patientId" TEXT NOT NULL DEFAULT '27c57ab0-8e7c-4368-b22d-c2db71b316f9';

-- AlterTable
ALTER TABLE "ame" ADD COLUMN     "patientId" TEXT NOT NULL DEFAULT '27c57ab0-8e7c-4368-b22d-c2db71b316f9';

-- AlterTable
ALTER TABLE "pme" ADD COLUMN     "patientId" TEXT NOT NULL DEFAULT '27c57ab0-8e7c-4368-b22d-c2db71b316f9';

-- AddForeignKey
ALTER TABLE "Treatment" ADD CONSTRAINT "Treatment_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "Patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ame" ADD CONSTRAINT "ame_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "Patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pme" ADD CONSTRAINT "pme_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "Patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
