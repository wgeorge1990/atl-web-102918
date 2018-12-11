
var nums = [1,2,3,4,5];

var doubled = nums.map(function(x) {
  return x * 2;
});

// Blocks are ruby's way of getting something like an anonymous function
// ....... because functions aren't first class to begin with

// Blocks and anonymous functions are snippets of code without a name,
// run later by someone else

// Anonymous functions and named functions are interchangeable
function double (x) {
  return x * 2;
}
console.log(nums.map(double))
console.log(nums.map(function (x) { return x * 2; }))

// Arrow Functions
console.log(nums.map(x => x * 2))

// This is a higher order function. Takes a function as arg, or returns a fn.
// This one takes a function as an argument, we named it callback.
function my_map(array, callback) {
  var result = [];
  debugger;
  for(var i = 0; i < array.length; i++) {
    var item = array[i];
    var transformed = callback(item);
    result.push(transformed);
  };
  return result;
};
