/*
   Single syntax
   [let|var] [indetifierName](: [dataType])? = [value];
*/
var myImplictVariable = 42;
print("myImplictVariable", myImplictVariable);

var myExplicitVariable: Float = 30;
print("myExplicitVariable", myExplicitVariable);

var aName: String;
aName = "cool!"
print("aName", aName);

//using let :O, lets are constants
let singleLetString = "awesome!";
let explicitLetString: String = "awesome again!";

print("singleLetString", singleLetString);
print("explicitLetString", explicitLetString);

let afterAssignValue: String;
//it's needed
afterAssignValue = "hi!";
print("afterAssignValue", afterAssignValue);

/*
IMPORTANT!
Mades an error: immutable value 'afterAssignValue' may only be initialized once
afterAssignValue = "hi again!";
print("afterAssignValue", afterAssignValue);
*/

//You need to declare a Optional syntax datatype, you can see in datatypes.swift file
let label = "The width is ";
let width = 94;
// Apply String reserved word for parse
let widthLabel = label + String(width);

print("widthLabel \(widthLabel)");

let apples: Int = 10;
let additional: Int = 15;
let appleSummary = "Apples: \(apples)";
let appleTotal = "Total apples: \(apples + additional)";

print("\(appleTotal)");
