
CREATE TABLE "contacts" (
    "contact_id" SERIAL   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "Category" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY ("category_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "Campaign" (
    "cf_id" SERIAL   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" NUMERIC   NOT NULL,
    "pledged" NUMERIC   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id")
);


ALTER TABLE "Campaign" 
    ADD CONSTRAINT "fk_Campaign_contact_id" 
    FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE "Campaign" 
    ADD CONSTRAINT "fk_Campaign_category_id" 
    FOREIGN KEY("category_id") REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" 
    ADD CONSTRAINT "fk_Campaign_subcategory_id" 
    FOREIGN KEY("subcategory_id") REFERENCES "Subcategory" ("subcategory_id");

SELECT * FROM "Category";
SELECT * FROM "contacts";
SELECT * FROM "Campaign";
SELECT * FROM "Subcategory";
