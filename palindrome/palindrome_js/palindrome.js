function palindrome(word) {
  var reversed = word.split('').reverse().join('');
  if (word === reversed) {
    return true;
  } else {
    return false;
  }
}
