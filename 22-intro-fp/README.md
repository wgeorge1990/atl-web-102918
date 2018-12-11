## Functional Programming (in JS)

Today, we see why First Class Functions are a valuable language feature.

Fair warning, I could talk about this for a hundred hours and be happy.

This is home turf for a lisper. :)


### SWBATs

* Be able to define "scope" and recognize when a variable is in scope
* Write code that takes advantage of functions as first class elements
* Identify when code is expecting or treating an argument as a function
* Recognize arrow syntax and not feel fear
* Recognize an IIFE (immediately invoked function expression)
* Know how to use closures to capture scope



### On "First Class"

In JS, unlike Ruby, functions are "first class". What does that mean?

To quote from "Structure and Interpretation of Computer Programs",
(def my favorite programming book of all time):

> In general, programming languages impose restrictions on the ways in which
> computational elements can be manipulated. Elements with the fewest
> restrictions are said to have first-class status.
> Some of the "rights andf privileges are":
> * Named by variables,
> * Passed as arguments to procedures,
> * Returned as the results of procedures,
> * Included in data structures.



### Functional Tasks

To do this, let's see:

* How to add our own map,select,(maybe inject?) methods to ruby Array
  * Talk about anonymous functions as being similar to blocks


* Now switch to javascript
* TIPS break for Fibonacci and to introduce recursion
  * But do this in Javascript!!! O_O



* Function to compute sum a range of numbers (a -> b)
  * should take a, b as args
  * now make it recursive
  * now extend it to take a callback to compute the "next" number
    * Show that inline functions and named functions are equivalent
    * Show that arrow functions are just a minor syntactic sugar
  * NOTE: A "Higher Order Function" is one that takes a function as an
    argument or returns a function as a result. I.e. One used in a
    first-class way.

* Show how to build loops if the language didn't have them
  * Build a "repeated" or "times" method that takes a number
    of times, i, and a callback and runs the callback that many times
  * Now, turn this into a closure and talk about the captured scope
  * Question: Is this a simple, simple version of an object?
    * I.e. Can I use this to create different objects that have their own
      private and internal state without using "classes" or "instance vars"?

* Important note! Nothing we've done so far has mutated or assigned to a
  variable. This is "Functional Programming". A pure function is one that
  doesn't modify it's arguments, only produces new data.
  It's amazing how much you can achieve without assignment!
  Often it's the best option.

* Now if y'all don't hate me, I can show you one of my favorite
  dumb functional programming gimmicks, in Ruby or JS.
  * We can build "Arrays" out of _nothing_ but functions and lexical scope.
    No conditionals. No loops. No classes. Nothing.


    // Functional Programming
    // We should be fairly comfortable with this code by end of lecture.

    // let instructors = [{ name:"rob", salary: 85 },
    //                    { name:"brit", salary: 85 }]
    //
    // function updateSalary(instructor, raise){
    //   newInstructor = Object.assign({}, instructor)
    //   newInstructor.salary = instructor.salary + raise
    //   return newInstructor
    // }
    //
    // function updateSalaries(instructors, raise){
    //   return instructors.map(instructor => updateSalary(instructor, raise))
    // }
    //
    // updated = updateSalaries(instructors, 100)
    // console.log(updated)
