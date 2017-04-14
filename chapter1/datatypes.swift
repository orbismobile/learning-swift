/*
 Datatypes
 - Int or UInt(only UInt must be declared UInt8, UInt32, UInt64)
 - Float (32bits floating point number)
 - Double (64bits floating point number)
 - Bool
 - String
 - Character
 - Optional
*/
var aBoolean: Bool = true;
print("aBoolean", aBoolean);

let aInteger: Int = 10;
//another form to print
print("aInteger \(aInteger)");

let aString: String = "Hi I'm a string!";
let aChar: Character = "o";

let optionalString: String?;
//When try to print some variable with optional datatype, show errors
optionalString = ":D";
//Do you need to setting a value and print with String(describing:[variableName])
print("optional? are you there? \( String(describing:optionalString))");

//Do you need to setting a value
let optionalNumber: Int? = nil;
print("optionalNumber? are you there? \(String(describing:optionalNumber))");
