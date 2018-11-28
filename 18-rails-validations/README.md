## Rails Validations

### Goals for today


* Review what we've learned so far
* Model Validations
* Showing errors



### Today's project

A simple rails app to represent a coding bootcamp. Models:

* Cohort  has many students
* Student belongs to cohort





## Review

### 7 Restful Routes
- show
- index

- new
- create

- edit
- update
  - sometimes updates fail



- destroy

`resources` in the routes.rb defines the get/ post /patch for each of these 7

## Lifecycle of a request


- Routing
- Controller Actions
- Models
- Views


## Questions / Confusion



- custom routes vs. resources
- controller instance variables
- what do the form helpers do?
- how do strong params work?
- what nested forms and associations?

Modeling twitter
- what tables?
- 'source'?

- How to put in the old values to the form?

## Validations

Ensuring that our data is _valid_

- missing some required information
- invalid info
  - missing characters
  - wrong kind of characters
  - password validation
  - invalid length
  - check for keywords
  - capitalization
  - credit card (wrong number, wrong date, wrong format, declined)
  - duplicated information
    - already matching existing username
  - haven't clicked 'agree to terms'

- What's the syntax?
- What do they do?

- When do they run?
Before we save to the database (create, save, update) destroy doesn't validate

Client side validations
  Strong params - check on which fields are allowed to be submitted
Application validations - rails
Database validations


## Showing Errors

- errors object
- messages
