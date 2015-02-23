function reverse_word(word) {
  var letters = word.split('');
  var reversed = [];
  for(i = 0; i < word.length; i++) {
   reversed.push(letters.pop());
  }
   return reversed.join('');
}

function palindrome(word) {
  if(word === reverse_word(word)) {
    return true;
  } else {
    return false;
  }
}
