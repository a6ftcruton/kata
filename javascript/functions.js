/* Results printer function for logging output to console */
function printResults(yourFunction, yourParams) {
  separator();
  console.log("You called " + yourFunction.name  );
  console.log("You passed in " +  yourParams)
  console.log("  Results --> " + yourFunction(yourParams) )
  separator();
}

function separator() {
  console.log("----------------------------------------------\n");
}

/*Build a function `my_max()` which takes an array and returns the maximum number. */
function myMax(list) {
  var sorted_values = list.sort(function(a, b) { return a - b });
  return sorted_values[sorted_values.length-1];
}

var arr = [8, 10, 1, 2, 200, 5, 12];
printResults(myMax, arr);


/*Build a function vowelCount which takes a string and returns the number of vowels it contains */
function vowelCount(str) {
  var result = 0;
  for(i = 0; i < str.length; i++) {
    if (str.charAt(i).match(/a|e|i|o|u|y/)) {
      result += 1;
    } 
  }
  return result;
}

str = "abcdefghijklmnopqrstuvwxyz";
printResults(vowelCount, str);


/*Build a function reverse() which takes a string and returns all the characters in the opposite position, e.g. reverse("this is a string") // "gnirts a si siht" */
function reverse(str) {
  return str.split('').reverse().join('');
}

myStr = "There once was a man from Mississippi.";
printResults(reverse, myStr);

/*Build a function duplicate() that takes an array of numbers and returns an array with those numbers appearing twice:
 * e.g.  duplicate([1, 2, 3, 4]) // =>  [1, 2, 3, 4, 1, 2, 3, 4] */

// 1 - for loop
function duplicate(numbers) {
  var dup = numbers.toString().split(",");
  for(i = 0; i < dup.length; i++) {
    numbers.push( parseInt(dup[i]) );
  }
  return numbers;
}

// 2 - much cleaner
function duplicate(numbers) {
  var dup = numbers.concat(numbers);
  return dup;
}
numbers = [1, 2, 3];
printResults(duplicate, numbers);

/*Build a function that takes in a string and returns the same string with spaces added between each letter */
// 1 -- using for loop (just to try a different approach)

function spacify(str) {
  var newString = "";
  for(i = 0; i < str.length; i++) {
    newString += (str[i] + " ");
  }
  return newString;
}
// 1 -- cleanest implementation
// function spacify(str) {
//   return str.split('').join(' ');
// }

myInput = ("hello world");
printResults(spacify, myInput)

/* Implement "spacify" function as a method on the String object itself */
//   allowing you to call it like this: "hello world".spacify();

String.prototype.spacify = function() {
  return this.split('').join(' ');
}

console.log("You called String.spacify and got:");
console.log("hello world".spacify() );

/*Interlude: function declaration vs. function expression  */
// -function declaration defines a named function variable without variable assignment:
//     e.g.   function bar() { return 3; }
//     -when hoisted, the entire function is hoisted --> e.g. var a;

// -function expressions define functions through variable assignment--the function can be named or anonymous:
//     e.g.   var a = function bar() { return 3; }
//            var a = function() { return 3; }
//     -when hoisted, only the variable name is hoisted --> e.g. var a;

/* Call and apply */
//
// Call - accepts a list of arguments
// Apply - accepts an array of arguments (really useful in tandem with a function that accepts a variable number of arguments, like Math.max)
//       - apply is even more useful in tandem with the `arguments` variable --the special local variable defined within thescope of all function.
// var numbers = [3, 1, 2, 5, 8, 6];
// Math.max.appy(null, numbers); // null 
