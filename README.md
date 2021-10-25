# README

## Dependencies
To run the project you will need the following dependencies installed on your machine. Although it might work on slightly modified versions(not guaranteed).

* Ruby version => v6.6.-1

* Node Version >= v12.18.2

* Yarn Version >= 1.22.5

* PostgreSQL Version =>  12.4
## Running

To run download the project and navigate to the folder using a command line tools(cmd or bash) and rum the following commands in order of appearance
- gem install bundler
- bundle
- rake db:create && rake db:migrate
- rake assets:precompile
- rails s

Note: PostgreSQL Server should be running in the background

## Last notes

The steps to run listed above were tested on a window 10 machine only
