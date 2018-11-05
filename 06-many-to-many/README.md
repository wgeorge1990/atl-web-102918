# Many to Many Relationships

Based off of yesterday's code, we're going to add the ability for pokemon to
know their trainer and trainers to collect badges. We describe this specific
relationship between trainers and badges as a many to many relationship.
Meaning that a trainer can have many badges and a badge can be won by many trainers!




### Notes on Scope

Local Variable Scope 
* `x = 5`
* Visible inside the method they are passed to or defined in

Instance Variable Scope
* `@name = 'brit'`
* Visible inside the object it was defined in
* `x = Student.new('brit')`
* ... `x.name`

Class Variable Scope
* `@@pokemon = []`
* Visible to all members or instances of the class
* `class Pokemon: def all // @@pokemon // end`
* `Pokemon.all`

Global Scope
* `class Example`
* Visible everywhere for any reason at any time





## The world so far

* Create a Trainer class. The class should have these methods:
  * `Trainer.all` method that returns an array of all pokemon trainers.
  * `Trainer#initialize` which takes a name, and optional pokemon, wins, and losses.
  * Reader methods for wins, losses.
  * Accessor method for pokemon.
  * `Trainer#catch_pokemon` method that catches a wild pokemon.

* Create a Pokemon class. The class should have these methods:
  * `Pokemon.describe` which tells us what a Pokemon is.
  * `Pokemon#initialize` which takes a name, kind, and level.
  * Reader methods for name and level.
  * `Pokemon#level_up` that gives a pokemon one additional level.
  * `Pokemon#fight(enemy)` that allows us to fight an enemy and returns true if we win.










## Deliverables

* Pokemon class
  * `Pokemon#trainer` that returns their trainer.
  * `Pokemon#trainer=` to set the trainer.
* Trainer class
  * `Trainer#gift(friend, pokemon)` method so that we can trade pokemon with each other.
    * Hmm. Does something funny happen when we do this?
    * Could we fix this in a simple way? Yes, but what is the general problem?




* Badge class
  * Gym
  * Title
  * `Badge#victors` which returns a list of trainers who have beat the gym.
  * `Trainer#badges` which returns a list of badges the trainer has earned.
    * Oof. This seems really complicated to do with a single source of truth... 🤔🤔🤔🤔🤔






* Victory class
  * Has a trainer who is the victor.
  * Has a badge which is the trophy.
