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

