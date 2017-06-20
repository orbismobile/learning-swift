/*
Dictionaries

The easiest way to create a dictionary is by using a dictionary literal.
This is a list of key-value pair separated by commas, enclosed in square brackets.
It's an unordened collection of key-value pairs.

Also, Using subscripting to get values and to add, update or remove pairs.
*/

var namesAndScores = [
    "Anna": 2,
    "Jhon": 2,
    "Doe" : 9,
    "Foo" : 10
]
print(namesAndScores);
print(namesAndScores.isEmpty);

//make it empty
//namesAndScores = [:]
//print(namesAndScores);
//print(namesAndScores.isEmpty);

//Using subscripting
if let AnnaValue = namesAndScores["Anna"] {
  print(AnnaValue)
} else {
  print("nothing..")
}
//Print keys and values
let keys = Array(namesAndScores.keys)
let values = Array(namesAndScores.values)

print("keys of namesAndScores : \( keys )")
print("values of namesAndScores : \( values )")

//Adding pairs from collection
var bobData = [
    "name": "Bob",
    "profession": "Card player",
    "country": "USA"
]
bobData["city"] = "California"
print("bobData : \( bobData )")

//Updating values
bobData.updateValue("Bobby", forKey: "name")
print("updated bobData : \( bobData )")
bobData["city"] = "Lima"
print("updated bobData : \( bobData )")

//Removing pairs
bobData.removeValue(forKey: "name")
print("updated bobData : \( bobData )")
bobData["city"] = nil
print("updated bobData : \( bobData )")

//Iterating though dictionaries
for(player, score) in namesAndScores {
    print("\(player) : \(score)")
}

//Its also possible to iterate over just the keys
print("players: ", terminator: "")
for player in namesAndScores.keys {
    print("\(player), ", terminator: "") // no newline
}
print("")

//Understand hashing
print("some string".hashValue)
print("some code".hashValue)
print(100.hashValue)
print(false.hashValue)