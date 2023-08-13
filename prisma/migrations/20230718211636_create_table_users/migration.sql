-- CreateTable
CREATE TABLE "users" (
    "id" INT2 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "email" STRING NOT NULL,
    "hash" STRING NOT NULL,
    "firstName" STRING,
    "lastName" STRING,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
