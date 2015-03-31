var total = 0;
function sumAll(upper_bound) {
  for(i = 0; i < upper_bound; i++) {
    if(i % 3 === 0 || i % 5 === 0){
      total += i;
    }
  }
  return total;
}
console.log(sumAll(10));


