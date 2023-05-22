Seen It is an application designed for users to rate and review skincare products. This app is built with a React frontend and a Ruby-on-Rails backend. It uses sqlite3 as the database manager. It was built by Hannah Christman for her phase 4 project. Ben Aschenbrenner forked and cloned it and made some changes and updates to make it a suitable tool for teaching and learning.

Running the Application To run the backend of this application, run the following commands in a terminal:

bundle install (to install dependencies)
rails db:drop
rails db:create
rails db:migrate (to migrate migrate database)
rails db:seed (to seed database)
rails s (to run rails server)
To run the frontend of this application, open up a new terminal, navigate to the client folder and run the following commands:

npm install (to install dependencies)
npm start (to start React server)
## Overview

After creating an account, this application allows users to review movies they have seen. Users are able to create, edit, and delete reviews. If the movie the user wishes to review does not yet exist in the database, they are able to add it. 

This app was forked from a student phase 4 project. It will be used as a live coding resource. It uses a Postgresql database and 

## Built with
- React.js - frontend
- styled-components - frontend
- Ruby on Rails - backend

## Setup

- Fork and clone this repository
- Run bundle install
- Run rails db:migrate
- Run rails db:seed
- Run rails s to start the backend server
- Run npm install --prefix client in a separate terminal 
- Run npm start --prefix client to start the frontend server

## Models
![Models](https://github.com/HannahChristmas/phase-4-final-project/blob/7fc4b56e629037ef32a59a4cb2e6be3f9acaa8b2/Screen%20Shot%202023-01-19%20at%203.09.49%20PM.png)

## Contributing

I am not open to contributions at this time.

## Blog Link

My blog post about ActiveRecord Associations can be found [here](https://medium.com/@hc109909/active-record-associations-7a5c1512df69).

## Video Link

My Youtube video about this project can be found [here](https://www.youtube.com/watch?v=zmaWIUQUt1U).

## Resources 

- [IMDB](www.imdb.com)

## License 

- [MIT](https://choosealicense.com/licenses/mit/)



