## Good Morning

### But first!

Yesterday was a tough day. Want to start with a quote...

https://twitter.com/b0rk/status/726201450079113216
























### Now then...

Today we're going to work on a blog. Mine, to be specific.

https://blog.kingcons.io/

The blog is stored in a database but I want to access it from Ruby.

More importantly than being able to, I want it to be convenient.


That means we at least need to be able to do the basic CRUD:

* Create
* Read
* Update
* Delete









### Questions for Today

* How do I get ruby to talk to a SQL database?
* What is an ORM and why do I want one?












### Project Layout

First, let's take a brief look at how we organize a medium size project.

I like using tree for this.

You can add it to your mac by running `brew install tree` in the terminal.




### Connecting Ruby to the DB

The `sqlite3` gem makes it pretty easy.
Once, a connection is defined we can just `connection.execute("SOME SQL")`!

...

Let's try it! 


### Why do you want an ORM?

ORM stands for Object Relational Mapper.

The crucial point is that in an Object Oriented language like Ruby,
I'd rather have a Post object that I can call methods on than just a hash.


### How do we do it?

Well, we can write methods to run SQL with the `sqlite3` gem.

We'll build some of the basics of an ORM today to see how it works and
then see how to use a gem that gives a more advanced ORM tomorrow.

Let's teach our ruby classes to CRUD!

We'll start with creation since that seems like it should be simple.
Then we can move on to reading and we'll look at updating or deleting if there's time.

Before this our class variables held all the data and acted as our "single source of truth".

Now the database does that job. The database has some important rules to follow though.
One of the most important is that every table needs a Primary Key.

**QUIZ TIME**: What is a primary key?





### 2 Important Differences

1. Anything saved in a database table needs a unique ID.
  * Otherwise, SQL wouldn't be able to tell two records apart.
2. Instead of keeping a reference to other objects (like a pokemon having a trainer), we'll keep their ID.
  * This is because SQL can only refer to rows in different tables by ID!
3. We won't use class variables to store the instances because the database is the single source of truth.



### Creating

* **2 PART QUIZ TIME**:
  1. Do we think adding a post to the database should be a class method or an instance method?
  2. What SQL command do we use to add a new entry to a table?



Huh, how do I know if an object has been saved in the database?




### Reading

There are lots of ways to look things up. Do we want to try reading one post or all the posts?






This is probably enough for today. But if we have more time... :)

### Updating

If I change an attribute, does the database update automatically?

### Deleting
