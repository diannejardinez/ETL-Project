DROP TABLE IF EXISTS top_imdb;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS movie_actor;
DROP TABLE IF EXISTS movie_director;
DROP TABLE IF EXISTS streaming_service;
DROP TABLE IF EXISTS netflix_movie;

create table top_imdb(
        imdb_id  VARCHAR  not null,
    movie_title  VARCHAR  not null,
    PRIMARY KEY  (imdb_id)
);

create table movie(
        imdb_id  VARCHAR  not null,
      imdb_rank  INT      not null,
          title  VARCHAR  not null,
           year  INT      not null,
        runtime  DECIMAL  not null,
          rated  VARCHAR  not null,
    imdb_rating  DECIMAL  not null,
    production   VARCHAR  not null,    
    PRIMARY KEY  (imdb_id),
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);

create table movie_actor(
        imdb_id  VARCHAR  not null,
          actor  VARCHAR  not null,
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);


create table movie_director(
        imdb_id  VARCHAR  not null,
       director  VARCHAR  not null,
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id) 
);


create table streaming_service(
     service_id  VARCHAR  not null,
   service_name  VARCHAR  not null,
    PRIMARY KEY  (service_id) 
);

create table google_movie_streaming(
            id  INT       not null,
       imdb_id  VARCHAR   not null,
    service_id  VARCHAR   not null,
         price  VARCHAR   not null,
   PRIMARY KEY  (id,imdb_id),    
   FOREIGN KEY  (imdb_id)    REFERENCES top_imdb (imdb_id),
   FOREIGN KEY  (service_id) REFERENCES streaming_service (service_id) 
);

create table utelly_movie_streaming(
            id  INT       not null,
       imdb_id  VARCHAR   not null,
    service_id  VARCHAR   not null,
   PRIMARY KEY  (id,imdb_id),    
   FOREIGN KEY  (imdb_id)    REFERENCES top_imdb (imdb_id),
   FOREIGN KEY  (service_id) REFERENCES streaming_service (service_id) 
);

create table netflix_movie(
             id  INT not null,
        imdb_id  VARCHAR not null,
          title  VARCHAR not null,
    PRIMARY KEY  (id),
    FOREIGN KEY  (imdb_id) REFERENCES top_imdb (imdb_id)
);
