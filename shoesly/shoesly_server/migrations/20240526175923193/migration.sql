BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shoes" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "price" integer NOT NULL,
    "ratings" double precision NOT NULL,
    "brand" text NOT NULL,
    "review" text NOT NULL,
    "size" json NOT NULL
);


--
-- MIGRATION VERSION FOR shoesly
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('shoesly', '20240526175923193', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240526175923193', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
