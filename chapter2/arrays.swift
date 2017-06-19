/*Collection types 1 - Arrays*/
/*
 The Big-O notation is a way to describe "running time", or how long
 an operation takes to complete. The idea is that the exact time an operation
 takes isn't important; it's the relative difference in scale that matters
*/

/*
  the "constant time" operation, or O(1) in big-O notation
  the "linear time" operation, or O(N) in big-O notation
*/

// Declaring a mutable and empty array
var evenNumbers: [Int] = []

// Append new values to array
evenNumbers += [2]
evenNumbers += [4]
evenNumbers += [6]
evenNumbers += [8]

print(String(describing: evenNumbers));

// Creating a literal array
var names: [String] = ["foo", "bar", "echo", "doe"];
print(String(describing: names));

// Creating a list of numbers
let allZeros = [Int](repeating: 0, count: 5)
print(String(describing: allZeros));

// Create an inmutable array
let vowels = ["a", "e", "i", "o", "u"]
print(String(describing: vowels));

//learn native array methods and properties
print("The array vowels is empty? : \(vowels.isEmpty)");
print("The array vowels has a total of? : \(vowels.count) items");

//The "first" and "last" properties of an array are optvowels.firstional type, so:

guard let firstValue:String = vowels.first else {
  return "no way no first";
}
print("The first element of array vowels? : \(firstValue)");

guard let lastValue: String = vowels.first else {
  return "no last :/";
}
print("The last element of array vowels? : \(lastValue)");

