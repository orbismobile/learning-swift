/*
   arrays
*/

var shoppingList = [
  "catfish",
  "water",
  "tulips"
];

print("the shoppingList: \(shoppingList)");

// when use let, causes error for mutability
// let arrayBox = [String](); // sorry you can't append in this 'inmutable' array
var arrayBox = [String]();
arrayBox.append("first item");
arrayBox.append("test");
print("the emptyArray: \(arrayBox)");
