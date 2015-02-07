var PartialSearch = require('./partial-search');

describe('PartialSearch', function() {

  it('returns empty array if no matches found', function() {
    var result = [];
    expect(PartialSearch.match(["a", "b"], "c")).toEqual(result);
  });

});
