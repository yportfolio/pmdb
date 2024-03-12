/*
  Warnings:

  - Added the required column `updatedAt` to the `Profile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Profile" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Rate" (
    "id" TEXT NOT NULL,
    "score" VARCHAR(128) NOT NULL,
    "starId" TEXT NOT NULL,

    CONSTRAINT "Rate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" TEXT NOT NULL,
    "name" VARCHAR(128) NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_RateToUser" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_CategoryToStar" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Rate_starId_key" ON "Rate"("starId");

-- CreateIndex
CREATE UNIQUE INDEX "_RateToUser_AB_unique" ON "_RateToUser"("A", "B");

-- CreateIndex
CREATE INDEX "_RateToUser_B_index" ON "_RateToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CategoryToStar_AB_unique" ON "_CategoryToStar"("A", "B");

-- CreateIndex
CREATE INDEX "_CategoryToStar_B_index" ON "_CategoryToStar"("B");

-- AddForeignKey
ALTER TABLE "Rate" ADD CONSTRAINT "Rate_starId_fkey" FOREIGN KEY ("starId") REFERENCES "Star"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_RateToUser" ADD CONSTRAINT "_RateToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "Rate"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_RateToUser" ADD CONSTRAINT "_RateToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToStar" ADD CONSTRAINT "_CategoryToStar_A_fkey" FOREIGN KEY ("A") REFERENCES "Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoryToStar" ADD CONSTRAINT "_CategoryToStar_B_fkey" FOREIGN KEY ("B") REFERENCES "Star"("id") ON DELETE CASCADE ON UPDATE CASCADE;
