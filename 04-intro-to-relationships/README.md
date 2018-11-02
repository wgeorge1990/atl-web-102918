## Afternoon!

Today is going to be a good day.

I slept! Sleep is super important.
During yesterday's lecture, I was running on 4 hours of sleep.


Because I still get anxious before a first lecture!
That's rough.
  


## Feedback

I love teaching. But I also talk a lot.

I'm gonna try to keep this lecture short since we had review, etc.

But also, feel free to give me feedback directly or through TCFs.
I'm a teacher but I'm still learning how to be better.

I'm also someone who is most comfortable when I know _why_ something works.
But that can be overload sometimes. I'm gonna try to check in more on when more detail is _wanted_.
And, of course, please come bother me outside lecture if there are things you want to know more about!

  
  

  
I know we've thrown a lot of big concepts at you recently.
But also remember why you're here.

Hint: Computers are [magical](https://raw.githubusercontent.com/tiy-atl-js-jan-2017/slides/master/images/magic.gif)
  
  
  
  
## Recap

Brief recap! Yesterday we saw:

* Classes
* Instances
* Methods
* Instance Variables
* Self

At first it can be easy for these things to get mixed up.
It's not hard to confuse classes and instances and methods.

Here's a trick I like for remembering what is what.

Basically, there are 3 things we like to do:

1. Define new data types with: `class Student ... end`
2. Build instances to use with: `randy = Student.new(...)`
3. Use those instances in our programs:
  * `randy.writeCode('ruby')`
  * `brit.teach(randy)`

Beyond that:

* instance variables give us a way for objects to keep data
* self gives us a way to refer to the object a method was called on
  
  
  
  
## Today

Cool! Today we're going to:

* Learn the difference between class methods and instance methods
  * Let's look at an example from Tuesday: RestClient!
  * Let's add a class method called describe!
  
  
  
* Cleanup our existing code
  * Why use self vs @instance variables?



* Think about our interface!
  * Do we want anybody to be able to set a Pokemon to _any_ level?
  
  
  
* Practice writing classes - A pokemon trainer
  * What can a trainer do?
  * How do we `require` both classes so we can use them together?
  * What relationships do trainers have to our other classes?



* How should pokemon be related to trainers?
  * We probably need a class variable for this!
  * What do we do if there are two trainers with the same name? How can we tell them apart or make them unique?

