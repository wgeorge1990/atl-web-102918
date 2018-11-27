## Rails Forms

### Goals for today

* discuss `form_tag` vs `form_for`
* discuss "Strong Params" and mass assignment

### Steps to build

* edit a student with form_tag?
* does it hurt?

### Trying not to discuss

* validations
* lifecycle callbacks (in AR or elsewhere ;)

### Today's project

A simple rails app to represent a coding bootcamp. Models:

* Cohort  has many students
* Student belongs to cohort

Cohort routes and views are built out. Students isn't! We'll compare and contrast.

### Adding an action to a rails app

1. Make sure the route is defined
2. Make sure the controller is defined
3. Make sure the method on the controller is defined
4. Make sure the view is defined
5. Write the logic and update the view as needed
