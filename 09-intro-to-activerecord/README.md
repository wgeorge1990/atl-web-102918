# Intro to ActiveRecord




### SQL

Data Manipulation
(Select, Insert, Update, Delete)

### ORM
Object Relational Mapper
Database <-> Ruby
Read row into a ruby object
Save Ruby object as a database row





### Domain Model

We're working on a blog today. A blog is a collection of Posts.

* Posts have content and a date and title. Posts have many tags through PostTag.
* Tags have a name. Tags also have many Posts through PostTag.
* PostTags belong to a post and a tag.











## ActiveRecord - Project Setup

We have to setup ActiveRecord for our project. We only do this one time.

3 steps:

1. Add it to the gemfile and run `bundle`.
2. Update the `config/environment.rb` to connect ActiveRecord to the database.
  * see: [establish_connection][establish_conn]
3. Turn on query logging so we can see the SQL that ActiveRecord writes for us!

[establish_conn]: https://apidock.com/rails/ActiveRecord/ConnectionHandling/establish_connection



## ActiveRecord - Using it with a Class

Then, we need to make sure our models know to work with ActiveRecord.

We'll do this every time we create a new model class:

* `class MyModel < ActiveRecord::Base`
* Get rid of / do not write an initialize method! 😱😱

ActiveRecord gives us a default `initialize` method that we don't want to override!



### Exploring ActiveRecord!

What are some things we'd like ActiveRecord to make possible?

* quit dealing with SQL syntax
* `.first` / get the first record in a table
* `.all` / gets all the records from the table
* `.limit(number)` / limit to a certain number of results
* `.find(id)` / look up a record by primary key
* `.find_by(column: value)` / look up a record by fields other than primary key
* `.count` / count things
* `example = Model.new(...)  ... example.save` / insert a record
* `.where` / to filter records based on some criteria
* `example.destroy` / delete a particular instance from the database
* update
* group by
* join


How does it do this _amazing stuff_?

Inheritance!

  * Let's look at `ancestors` and maybe `send`
  * Using pry's `ls` command would also be cool.
