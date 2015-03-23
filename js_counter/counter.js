//Solution using Constructor Function
// -------------------------------------------------------------------
function Counter(){
  this.value = 0;
}

Counter.prototype.incr = function() {
  return this.value ++;
}

Counter.prototype.valueOf = function() {
  return this.value;
}

var c = new Counter();
console.log(c)
console.log(c.incr());
console.log("c + 1 = " + (c + 1));
console.log("c > 1 = " + c > 1);


// Solution using function expression
// -------------------------------------------------------------------
var Counter = function() {
  this.value = 0;
  this.incr = function() { return this.value ++ };
  this.valueOf = function() { return this.value };
}

var x = new Counter();
console.log(x)
console.log(x.incr());
console.log("x + 1 = " + (x + 1) );
console.log("x > 1 = " + (x > 1) );
console.log(x.incr());
console.log("x > 1 = " + (x > 1) );

