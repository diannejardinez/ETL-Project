# ETL Project Analysis

## Team Members

Dianne Jardin**e**z, Aas**t**ha Arora, Swarna **L**atha

## Project Summary
The objective of this project was to extract data from websites and available  APIs. The following datasets were then transformed by cleaning, joining, and filtering into nine tables. The object-relational database, PostgreSQL, was used to load the datasets into pgAdmin.

## Finding Data

The following Data Sources were used below:
- [IMDb Website](https://www.imdb.com/chart/top/?ref_=nv_mv_250)
    - Method: Webscraping
    - Used for: Collecting the Top 250 IMDB rated movie list

- [OMDb API](http://www.omdbapi.com/)
    - Method: API Extraction
    - Used for: Collecting IMDb id and other movie related details like actor, director, etc.

- [Utelly API](https://rapidapi.com/utelly/api/utelly?endpoint=apiendpoint_3cad787b-ca7b-449a-84b4-23b40d64fd73)
    - Method: API Extraction
    - Used For: Collecting streaming options for Top 250 IMDb movies

- [uNoGS API](https://rapidapi.com/unogs/api/unogs/endpoints)
    - Method: API Extraction
    - Used For: Collecting movies on Netflix in released in the United States which have an IMDb rating between 7 and 10

- [Google Search Engine](https://www.google.com/search?&q=)
    - Method: Webscraping
    - Used for: Collecting viewing Streaming Service availability and price 

## Data Cleanup & Analysis

- Data extracted were formated in CSV and JSON files
- The following datasets were then transformed by cleaning, joining, and filtering into nine tables
- The object-relational database, PostgreSQL, was used to load the datasets into pgAdmin. A relational database was selected as the data was in a structured format


## Project Report

- **E**xtract: 
    - `Google scraping.ipynb`: 
        - contains IMDB website and Google Search Engine Webscraping
    - `netflix_high_imdb_rated(uNoGS api).ipynb`:
        - contains IMDB website Webscraping, OMDb API, and uNoGS API extraction
    -  `streaming_options(utelly api).ipynb`:
        - contains Utelly API extraction

- **T**ransform:
    - `Transform.ipynb`:
        - contains all datasets that were transformed into nine tables

- **L**oad:
    - `SQL` folder:
        - contains ERD and schema
    - `SQL_Table` folder:
        - contains the creation of and all nine tables created in pgAdmin with PostgreSQL
    - [Project Report document](https://github.com/Latha-G/ETL-Project/blob/master/Project%20Report.pdf):
        - contains detailed project description and sample PostgreSQL queries in pgAdmin

