-- Creating the fruits table
CREATE TABLE IF NOT EXISTS "fruits" (
	"id" INTEGER NOT NULL UNIQUE PRIMARY KEY AUTOINCREMENT,
	"name" TEXT NOT NULL UNIQUE,
	"avgWeightOz" FLOAT NOT NULL,
	"delicious" BOOLEAN DEFAULT true,
	"color" TEXT
);

-- Altering table to make another column
ALTER TABLE "fruits"
ADD COLUMN "tropical" BOOLEAN DEFAULT false;
-- When altering with data, make sure to add a default value if not null
ALTER TABLE "fruits"
ADD COLUMN "price" INTEGER NOT NULL DEFAULT 0;

-- Add data into a table
INSERT INTO
    "fruits"("name", "delicious", "color", "avgWeightOz", "price")
VALUES
    ('apple', true, 'red', 0.42, 1);

-- Removing a table
DROP TABLE IF EXISTS "fruits";