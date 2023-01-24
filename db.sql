CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" integer NOT NULL,
  "country" varchar
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" char(1) NOT NULL,
  "teacher" varchar NOT NULL,
  "user_id" integer NOT NULL,
  "category_id" integer NOT NULL
);

CREATE TABLE "course_video" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" integer NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
