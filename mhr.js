function calculateMaxHeartRate(age) {
  return 220 - age;
}

var age = prompt("What is the person's age? ") ;
var maxHeartRate = calculateMaxHeartRate(age);
console.log("Max Heart Rate for a " + age + " year old person: " + maxHeartRate);
