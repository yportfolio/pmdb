-- CreateTable
CREATE TABLE "SocialMedia" (
    "id" TEXT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "link" VARCHAR(255) NOT NULL,
    "logo" VARCHAR(255) NOT NULL,
    "starId" TEXT NOT NULL,

    CONSTRAINT "SocialMedia_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "SocialMedia_starId_key" ON "SocialMedia"("starId");

-- AddForeignKey
ALTER TABLE "SocialMedia" ADD CONSTRAINT "SocialMedia_starId_fkey" FOREIGN KEY ("starId") REFERENCES "Star"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
