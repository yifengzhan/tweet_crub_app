CREATE DATABASE tweets_app_db;

\c tweets_app_db;

CREATE TABLE tweets (
    id SERIAL PRIMARY KEY,
    date TEXT,
    tweet TEXT,
    link TEXT,
    one_min_bt FLOAT,
    five_min_at FLOAT,
    ten_min_at FLOAT
);

INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('14DEC2021', 'Tesla will make some merch buyable with Doge & see how it goes', 'https://twitter.com/elonmusk/status/1470703708677840896', '0.13067', '0.14098', '0.18979');


INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('25OCT2021', 'Lots of people I talked to on the production lines at Tesla or building rockets at SpaceX own Doge. They arent financial experts or Silicon Valley technologists. Thats why I decided to support Doge  it felt like the peoples crypto.', 'https://twitter.com/elonmusk/status/1452348126753349640', '0.22673', '0.24596', '0.25647');


INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('25JAN2022', 'I will eat a happy meal on tv if @McDonalds accepts Dogecoin', 'https://twitter.com/elonmusk/status/1485953263040188416', '0.18987', '0.19085', '0.22014');


INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('19FEB2022', 'And, of course, you can pay in Ðoge', 'https://twitter.com/elonmusk/status/1494840576264454145', '0.25987', '0.26954', '0.27691');


INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('04FEB2022', 'Dogecoin is the people’s crypto', 'https://twitter.com/elonmusk/status/1357241340313141249', '0.22657', '0.23684', '0.23184');



INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('28APR2022', 'The Dogefather SNL May 8', 'https://twitter.com/elonmusk/status/1387290679794089986', '0.15671', '0.16985', '0.17906');


INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES('14DEC2021', 'Tesla will make some merch buyable with Doge & see how it goes', 'https://twitter.com/elonmusk/status/1470703708677840896', '0.26759', '0.27456', '0.28960');




CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT);





ALTER TABLE users ADD COLUMN password_digest TEXT;


ALTER TABLE tweets ADD COLUMN one_min_bt FLOAT;

