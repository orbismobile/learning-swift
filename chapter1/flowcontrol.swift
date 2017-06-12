/*needed for use built-in random function*/
import Glibc;

/*For understand String methods like hasSuffix*/
//import Foundation;

// conditionals
//let randomNumber = _swift_stdlib_cxx11_mt19937_uniform(10);
var randomNumber = random();
print("/* GET A RANDOM NUMBER:*/");
print(randomNumber);
print("/* END GET A RANDOM NUMBER:*/");

print("/* SINGLE CONDITIONAL :*/");
let isTrue = true;
if isTrue {
    print("A Single condition");
}
print("/* END SINGLE CONDITIONAL :*/");

print("/* SINGLE CONDITIONAL TERNARY:*/");
let isTrueTernary: Bool;
if 9 > 1 {
    isTrueTernary = true;
    print("A Single condition \(isTrueTernary)");
}
print("/* END SINGLE CONDITIONAL TERNARY:*/");


print("/* SINGLE NUMBER CONDITIONAL :*/");
let numToValidate = 10;
if numToValidate < 0 {
    print("A Single condition \(numToValidate) is less than of 0");
} else {
    print("A Single condition \(numToValidate) is greater than 0");
}
print("/* END SINGLE NUMBER CONDITIONAL :*/");

print("/* CONTROL CASE :*/");
// please use "" wich every case
let position = "LEFT";
switch(position){
    case "RIGHT":
        print("-> \(position)");
    case "LEFT":
        print("<- \(position)");
    default:
        print("<-> \(position)");
}
/*
let fruit = "watermellon";
switch(fruit){
    case let x where x.hasSuffix("mellon"):
        print ("has suffix \(fruit)");
    default:
        print ("please put a default case in every switch");
}
print("/* END CONTROL CASE :*/");*/
