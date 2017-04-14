/*
   Single syntax
   [let|var] [indetifierName](: [dataType])? = [value];
*/
var myImplictVariable = 42;
print("myImplictVariable", myImplictVariable);

var myExplicitVariable: Float = 30;
print("myExplicitVariable", myExplicitVariable);

//using let :O
let singleLetString = "awesome!";
let explicitLetString: String = "awesome again!";

print("singleLetString", singleLetString);
print("explicitLetString", explicitLetString);

let afterAssignValue: String;
//it's needed
afterAssignValue = "hi!";
print("afterAssignValue", afterAssignValue);

//You need to declare a Optional syntax datatype, you can see in datatypes.swift file

let label = "The width is ";
let width = 94;
let widthLabel = label + String(width);

print("widthLabel \(widthLabel)");

let apples: Int = 10;
let additional: Int = 15;
let appleSummary = "Apples: \(apples)";
let appleTotal = "Total apples: \(apples + additional)";

print("\(appleTotal)");
