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

// Solution using function declaration
// -------------------------------------------------------------------

function CounterA(){
  this.value = 0;
  this.incr = function() { return this.value++ };
  this.valueOf = function() { return this.value };
}

var z = new CounterA();
console.log(z)
console.log(z.incr());
console.log("z + 1 = " + (z + 1) );
console.log("z > 1 = " + (z > 1) );
console.log(z.incr());
console.log("z > 1 = " + (z > 1) );

// Solution using function expression
// -------------------------------------------------------------------
var CounterB = function() {
  this.value = 0;
  this.incr = function() { return this.value ++ };
  this.valueOf = function() { return this.value };
}

var x = new CounterB();
console.log(x)
console.log(x.incr());
console.log("x + 1 = " + (x + 1) );
console.log("x > 1 = " + (x > 1) );
console.log(x.incr());
console.log("x > 1 = " + (x > 1) );

// Solution using Module pattern
// -----------------------------------------------------------------

function CounterC() {
  var value = 0;
  this.incr = function() { value++ };
  this.valueOf = function() { return value };
}

var m = new CounterC();
console.log(m.valueOf());
m.incr();
console.log("m + 1 = " + (m + 1) );
console.log("m > 1 = " + (m > 1) );
m.incr();
console.log(m.valueOf());
console.log("m > 1 = " + (m > 1) );
