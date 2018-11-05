# Many to Many Relationships

Based off of yesterday's code, we're going to add the ability for trainers to collect badges. We describe this specific
relationship between trainers and badges as a many to many relationship.
Meaning that a trainer can have many badges and a badge can be won by many trainers!






## The world so far

* Create a Trainer class. The class should have these methods:
  * `Trainer.all` method that returns an array of all pokemon trainers.
  * `Trainer#initialize` which takes a name, and optional pokemon, wins, and losses.
  * Reader methods for wins, losses.
  * Accessor method for pokemon.
  * `Trainer#pokemon` to get a list of all a trainer's pokemon.
  * `Trainer#catch_pokemon` method that catches a wild pokemon.

* Create a Pokemon class. The class should have these methods:
  * `Pokemon.all` to get an array of all the pokemon.
  * `Pokemon.describe` which tells us what a Pokemon is.
  * `Pokemon#initialize` which takes a name, kind, and level.
  * Reader methods for name and level.
  * `Pokemon.trainer` to get the trainer a pokemon belongs to.
  * `Pokemon#level_up` that gives a pokemon one additional level.
  * `Pokemon#fight(enemy)` that allows us to fight an enemy and returns true if we win.










## Deliverables

* Badge class
  * Gym
  * Title
  * `Badge#victors` which returns a list of trainers who have beat the gym.
  * `Trainer#badges` which returns a list of badges the trainer has earned.
    * Oof. This seems really complicated to do with a single source of truth... 🤔🤔🤔🤔🤔






* Victory class
  * Has a trainer who is the victor.
  * Has a badge which is the trophy.
