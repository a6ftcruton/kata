/*Build a function `my_max()` which takes an array and returns the maximum number. */

function myMax(values) {
  sorted_values = values.sort(function(a, b) { return a - b });
  return sorted_values[-1];
}


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

/*Build a function reverse() which takes a string and returns all the characters in the opposite position, e.g. reverse("this is a string") // "gnirts a si siht" */

function reverse(str) {
  str.split('').reverse().join('');
}
