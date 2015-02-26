// Create array of 100
function generateArray(size) {
  var foo = [];
  var size = (size + 1);
  for(i = 1; i <= size; i++) {
    foo.push(i);
  }
  return foo;
}

// Test array elements
function fizzBuzz() {
  var range = generateArray(100); 
  for (i in range) {
    if (i % 3 == 0 && i % 5 === 0) {
      console.log("fizzbuzz");
    } else if (i % 5 === 0) {
      console.log("buzz");
    } else if (i % 3 === 0) {
      console.log("fizz");
    } else {
    console.log(i);
    } 
  }
}

fizzBuzz();
