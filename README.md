Seen It is an application designed for users to review movies. This app is built with a React frontend and a Ruby-on-Rails backend. It uses postgresql as the database manager. It was built by Hannah Christman for her phase 4 project. Ben Aschenbrenner forked and cloned it and made some changes and updates to make it a suitable tool for teaching and learning.

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

If you run into issues with any of these steps let Ben Aschenbrenner know so he can try to document them and help you troubleshoot.

## Overview

After creating an account, this application allows users to review movies they have seen. Users are able to create, edit, and delete reviews. If the movie the user wishes to review does not yet exist in the database, they are able to add it. 


## Models
![Models](https://github.com/HannahChristmas/phase-4-final-project/blob/7fc4b56e629037ef32a59a4cb2e6be3f9acaa8b2/Screen%20Shot%202023-01-19%20at%203.09.49%20PM.png)


## Resources 

- [IMDB](www.imdb.com)

## License 

- [MIT](https://choosealicense.com/licenses/mit/)



