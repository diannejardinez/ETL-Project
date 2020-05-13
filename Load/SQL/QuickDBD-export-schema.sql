-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "top_imdb" (
    "imdb_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_top_imdb" PRIMARY KEY (
        "imdb_id"
     )
);

CREATE TABLE "movie" (
    "imdb_id" VARCHAR   NOT NULL,
    "imdb_rank" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "runtime" INT   NOT NULL,
    "rated" VARCHAR   NOT NULL,
    "imdb_rating" DECIMAL   NOT NULL,
    "production" VARCHAR   NOT NULL,
    CONSTRAINT "pk_movie" PRIMARY KEY (
        "imdb_id"
     )
);

CREATE TABLE "movie_actor" (
    "imdb_id" VARCHAR   NOT NULL,
    "actor" VARCHAR   NOT NULL
);

CREATE TABLE "movie_director" (
    "imdb_id" VARCHAR   NOT NULL,
    "director" VARCHAR   NOT NULL
);

CREATE TABLE "streaming_service" (
    "service_id" VARCHAR   NOT NULL,
    "service_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_streaming_service" PRIMARY KEY (
        "service_id"
     )
);

CREATE TABLE "utelly_movie_streaming" (
    "imdb_id" VARCHAR   NOT NULL,
    "service_id" VARCHAR   NOT NULL
);

CREATE TABLE "google_streaming_service" (
    "service_id" VARCHAR   NOT NULL,
    "service_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_google_streaming_service" PRIMARY KEY (
        "service_id"
     )
);

CREATE TABLE "google_movie_streaming" (
    "title" VARCHAR   NOT NULL,
    "google_service_id" VARCHAR   NOT NULL,
    "price" VARCHAR   NOT NULL
);

CREATE TABLE "netflix_movie" (
    "netflix_id" INT   NOT NULL,
    "imdb_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_netflix_movie" PRIMARY KEY (
        "netflix_id","imdb_id"
     )
);

ALTER TABLE "movie" ADD CONSTRAINT "fk_movie_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "movie_actor" ADD CONSTRAINT "fk_movie_actor_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "movie_director" ADD CONSTRAINT "fk_movie_director_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "utelly_movie_streaming" ADD CONSTRAINT "fk_utelly_movie_streaming_imdb_id" FOREIGN KEY("imdb_id")
REFERENCES "top_imdb" ("imdb_id");

ALTER TABLE "utelly_movie_streaming" ADD CONSTRAINT "fk_utelly_movie_streaming_service_id" FOREIGN KEY("service_id")
REFERENCES "streaming_service" ("service_id");

ALTER TABLE "google_movie_streaming" ADD CONSTRAINT "fk_google_movie_streaming_google_service_id" FOREIGN KEY("google_service_id")
REFERENCES "google_streaming_service" ("service_id");

