## Rails Forms

### Goals for today

* review rails app layout
* look closely at rails routes
* discuss `form_tag` vs `form_for`
* discuss "Strong Params" and mass assignment

### Trying not to discuss

* template re-use / layouts & yield
* validations
* lifecycle callbacks (in AR or elsewhere ;)

### Today's project

A simple rails app to represent a coding bootcamp. Models:

* Cohort  has many students
* Student belongs to cohort

Cohort routes and views are built out. Students isn't! We'll compare and contrast.
