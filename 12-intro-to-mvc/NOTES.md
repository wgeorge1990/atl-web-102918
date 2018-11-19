## Mod 2 - How the hell do servers even?

### Week 1, Day 1 - Intro to MVC

A few objectives:

* Tour of a sinatra app
* What is the core idea of MVC?
  * Model-View-Controller, an architectural pattern
  * Splits the responsibility of our app up:
    * Models: manage the data
    * Controllers: that have the application logic
    * Views: that present an interface to the user
* How do we connect actions in our app to pages?
  * Routes connect actions in our app to pages.
    * Routes and handlers together tell us how to generate the response for a specific request.
* How do communicate between our controller and our view?
  * ERB? Ahhhh. (Don't worry. It's just a templating language.)
  * What is in scope in a view?

### Errors to see...

* Routing blip
* Variables in erb
* Reloading

### To Build...

A tiny library.

* make a wonderful homepage
* list all the books
* get info on a single book
