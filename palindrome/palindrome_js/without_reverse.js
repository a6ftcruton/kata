function reverse_word(word) {
  var letters = word.replace(/ /g, '').toLowerCase().split('');
  var reversed = [];
  for(i = 0; i < word.length; i++) {
    reversed.push(letters.pop());
  }
    return reversed.join('');
}

function palindrome(word) {
  var stripped = word.replace(/ /g, '');
  if(stripped === reverse_word(word)) {
    return true;
  } else {
    return false;
  }
}
