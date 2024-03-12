-- CreateTable
CREATE TABLE "Star" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "eidtorId" TEXT NOT NULL,

    CONSTRAINT "Star_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Profile" (
    "id" TEXT NOT NULL,
    "bio" TEXT NOT NULL,
    "video" TEXT[],
    "image" TEXT[],
    "firstName" VARCHAR(255) NOT NULL,
    "lastName" VARCHAR(255) NOT NULL,
    "summary" TEXT NOT NULL,
    "debutDate" TIMESTAMP(3) NOT NULL,
    "birthday" TIMESTAMP(3) NOT NULL,
    "age" VARCHAR(255) NOT NULL,
    "rate" VARCHAR(255) NOT NULL,
    "starId" TEXT NOT NULL,

    CONSTRAINT "Profile_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "bio" TEXT NOT NULL,
    "firstName" VARCHAR(255) NOT NULL,
    "lastName" VARCHAR(255) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Profile_starId_key" ON "Profile"("starId");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "Star" ADD CONSTRAINT "Star_eidtorId_fkey" FOREIGN KEY ("eidtorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Profile" ADD CONSTRAINT "Profile_starId_fkey" FOREIGN KEY ("starId") REFERENCES "Star"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
