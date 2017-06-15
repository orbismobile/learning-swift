/*
  Optionals
*/

var name = "Jhon Doe"
var age = 30
var occupation = "Developer"
print("Name: \(name)")
print("Age: \(age)")
print("Occupation: \(occupation)")

print("============")
print("Sentinel values")
print("============")
/*
  A valid value that represents a special condition such as the abscene of a value is know "sentinel value"
*/

print("============")
print("Introducing optionals")
print("============")
/*
  Its like a box:
  It either contains a value, or it doesn't
  When it doesn't contain a value, it's said to contain nil
  The box itself always exists; it's always there for you to open and look inside
*/

//Declaring an optional
var errorCode: Int?
errorCode = 100
print("filled->errorCode=\(String(describing:errorCode))")
errorCode = nil
print("with nil->errorCode=\(String(describing:errorCode))")

print("============")
print("Unwrapping optionals")
print("============")
var result:Int? = 30
print("->result=\(String(describing:result))")
/*
  Trying to execute this sentence:
  print(result + 1)
  Mades and error for unwrap the result optional
*/


print("============")
print("force unwrapping")
print("============")
var authorName: String? = "Foo bar";
var authorAge: Int? = 100;
var unwrappedAuthorName = authorName!;
print("optional Author is \(String(describing:authorName))");
print("Author is \(unwrappedAuthorName)");

//But, be careful for this way, because if you use with nil values make errors
//Example: 
/*
  var result: Int? = nil
  print("result is \(result!)");
  //output: fatal error: unexpectedly found nil while unwrapping an Optional value
*/
//If you want to stop the error, you need apply conditionals:
var result: Int? = nil
if result != nil {
  print("result :D");
} else {
  print("No result :/");
}

//But again, is a force idea to show an optional, the idea for swift is indicates a developer in
//force the optional with the "!" like a caution
//the code is now safe, but it's still not perfect.

print("============")
print("optional binding")
print("============")
if let unwrappedResult = result {
  print("result :D \(unwrappedResult)");
} else {
  print("result :\");
}


