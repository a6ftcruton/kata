var Multiples = require('./multiples-sum');

describe('Multiples', function() {

  it('returns all multiples of 3 and 5', function() {
    var expected = [3, 5, 6, 9];
    expect(Multiples.findMultiples(10)).toEqual(expected);
  });

  it('returns a sum of all multiples of 3 and 5', function() {
    var expected = 23; 
    expect(Multiples.sumAll(10)).toEqual(expected);
  });

});
