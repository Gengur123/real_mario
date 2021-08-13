# Mario's Speciality Food Products

#### By Arthur Lee

## Description
A application that allows users to create different products and store them using a database. Users can delete, edit or add anything they like including reviews! This application focus on the database usage and has a lot of functionality

## Technologies Used
* _Ruby_
* _Postgres_
* _Sinatra_
* _Docker_
* _Rspec_
* _HTML_
* _Visual Studio code_


## Setup/Installation Requirements
* _Clone this repository_
* _Open terminal and type `git clone [git link]`_
* _Navigate to project directory using cd in terminal_
* _Open project in text editor `code .`_
* _Create a database by typing `be rails db:create`_
* _Type `rake db:migrate` to finish creating the database_
* _Type `rake db:seed` to populate the database_
* _To run tests, type `be rspec` in terminal_
* _To run the program, type `docker compose up` in terminal then navigate to a web browser and type `http://localhost:3000/`_

## Accessing Website As Admin
* _Create an account on the website by running `docker compose up` then in a browser go to `http://localhost:3000/`_
* _Go to your terminal and type `docker ps` to grab the container id for your database_
* _In your terminal type `docker exec -it -u postgres [container id] psql` to access your PSQL a app that houses databases_
* _Type `\c real_mario_development` in your psql terminal_
* _Type `SELECT * FROM users;` this will bring up a list of users signed up to your website_
* _Type `UPDATE users SET admin = true WHERE id = [the id of your account in the database]`_
* _Once that's done sign in to that account you made admin and now you have full access to the site!_

## Known Bugs
* _No known bugs_

## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)
Copyright (c) 2021 Arthur Lee
## Contact Information

_Arthur Lee [meleearthur@gmail.com](meleearthur@gmail.com)_