console.log("Hello class");

// Falsey values in ruby: false, nil
// Falsey values in javascript: false, null, undefined, 0, "", NaN

// Why do we care about truthy vs falsey?
// * conditionals
// * boolean logic
// * equality

console.log("" && 42);

// Equality rules
// Double equals tries to cast objects of different types to make them equal
console.log(`Double equals? Yikes! console.log(42 == "42"): ${42 == "42"}`);
console.log("" == 0); // This is true? lulz

// Why do this?
// Javascript was made to be accessible.
// As a result, they didn't want error messages to be thrown if possible.
// Javascript will try to make your program make sense. ... If it can.

// Triple equals is to be preferred. Don't do any type casting!
console.log(42 === "42");

// Defining variables
var x = 42;
var names = ['will', 'andy', 'kaeland', 'paris'];
console.log(names.constructor.name);

// The debugger is your frand!
function howToDebug () {
  names.forEach(function (x) {
    console.log(x);
    debugger;
  });  
}

// An example of an object Literal
var brit = {
  'a long weird key': 'scary!',
  job: 'instructor',
  age: 32,
  disposition: 'surprisingly cheery',
  greet: function () {
    console.log("Hey y'all. Happy Monday. Here we go!")
  }
};

// Accessing properties of an object is done with a dot, not []
// It's possible to use brackets, but discouraged.
// The only scenario where that would be necessary is for accessing a
// property based on the value of a variable.
// Must have parentheses for a function call in JS!
brit.greet()

// Functions need to be explicit about what they return.
function add(x, y) {
  return x + y;
}

// Different scoping rules. Sometimes this is called Lexical Scoping or Block scope.
var name = "brit";
function sayHi() {
  time = "lunch"; // Implicit global variable creation. Yikes!
  var name = "ed"; // This inner variable name is shadowing the outer variable.
  console.log("Hello, my name is " + name);
}

// Last thing for today: var is really important.
// If you don't say var when defining variables or functions,
// they automatically become global.
