// Create fibonacci sequence based on length passed in 
var fibonacciByIndex = function(upper_bound) {
  var sequence = [1, 2];
  for(i = 2; i < upper_bound; i++) {
    var n = (sequence[sequence.length - 1] + sequence[sequence.length - 2]);
    sequence.push(n);
  }  
  return sequence;
}

// Create fibonacci sequence based on length passed in using while loop
var fibonacciLimit = function(maxSize) {
  var sequence = [1, 2];
  while(sequence[sequence.length -1] < maxSize) {
    var n = (sequence[sequence.length - 1] + sequence[sequence.length - 2]);
    if(n > maxSize) {
      return sequence; 
    } else {
      sequence.push(n);
    }
  }
}

// Sum all elements in a given sequence 
var sumAll = function(list) {
  var sum = list.reduce(function(prev, curr) { 
    return prev + curr; 
  });
  return sum;
}

// Sum only even numbers in a given sequence
var sumEvens = function(list) {
  var total = 0;
  for(i = 0; i < list.length; i++) {
    if(list[i] % 2 === 0){
     total += list[i]; 
    }
  }
  return total;
}


console.log("\nSum of all fibonacci numbers up to 30: " + sumAll( fibonacciByIndex(30)));
console.log("\nSum of all even fibonacci numbers up to 30: " +  sumEvens(fibonacciByIndex(30)));
console.log("\nSum of all fibonacci numbers up to 4 million: " + sumAll( fibonacciLimit(4000000)));
console.log("\nSum of all even fibonacci numbers less than 4 million " + sumEvens(fibonacciLimit(4000000)));
