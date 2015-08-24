# Boardgameinator
Boardgameinator is a simple API for the use with examples. It pulls down and caches a small portion of the BoardGameGeek database (to 50 Hottest games).

As a RESTful API Boardgameinator serves up JSON responses instead of the XML responses provided by BGG's API

# Setup
After Cloning the repo, simply run `$ bundle install` and then create and migrate the database. 

`$ rake db:create db:migrate`

You can now populate the database by running `$ rake cache:hot_boardgames` this will add games of the hottest list without creating duplicate records.

# Usage

Run the server by running the command `$ rails s`.

While running you can make a post request to the server.

Example Search: `localhost:3000/search` and pass the search term as a param `term: Star`.

To search multiple words simple concatinate them with a '+'. `star+wars`
