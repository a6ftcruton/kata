var PartialSearch = {}

PartialSearch.match = function(list, test_string) {
  var result = [];
  list.map(function(word) {
    if (word == test_string) {
      result.push(word);
    }
    else {
      console.log("no"); 
    }
  });

};
module.exports = PartialSearch;
