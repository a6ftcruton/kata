var Multiples = {};

Multiples.findMultiples = function(upper_bound) {
  var collection = [];
  for(i = 1; i < upper_bound; i++) {
    if(i % 3 === 0 || i % 5 === 0){
      collection.push(i);
    }
  }
  return collection;
}

Multiples.sumAll = function(upper_bound) {
  var total = 0;
  var multiples = this.findMultiples(upper_bound);

  for(i = 0; i < multiples.length; i++) {
    total += multiples[i];
  }
  return total;
}

module.exports = Multiples;

